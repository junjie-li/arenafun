// quadral

#include "ScriptPCH.h"
#include <cstring>
#include <string.h>

enum ArenaRankActionIds {
    ARENA_2V2_LADDER = GOSSIP_ACTION_INFO_DEF + 1,
    ARENA_3V3_LADDER = GOSSIP_ACTION_INFO_DEF + 2,
    ARENA_5V5_LADDER = GOSSIP_ACTION_INFO_DEF + 3,
    ARENA_GOODBYE = GOSSIP_ACTION_INFO_DEF + 4,
    ARENA_NOOP = 1,
    ARENA_START_TEAM_LOOKUP = GOSSIP_ACTION_INFO_DEF + 5,
    
};

enum ArenaRankOptions {
    ARENA_MAX_RESULTS = 30,
};

enum ArenaGossipText {
    ARENA_GOSSIP_HELLO = 60009,
    ARENA_GOSSIP_NOTEAMS = 11202,
    ARENA_GOSSIP_TEAMS = 11203,
    ARENA_GOSSIP_TEAM_LOOKUP = 11204,
    
};

class ArenaTeamRanks : public CreatureScript
{
    private:
        uint32 optionToTeamType(uint32 option) {
            uint32 teamType;
            switch(option) {
                case ARENA_2V2_LADDER: teamType = 2; break;
                case ARENA_3V3_LADDER: teamType = 3; break;
                case ARENA_5V5_LADDER: teamType = 1; break;
            }
            return teamType;
        }
        uint32 teamTypeToOption(uint32 teamType) {
            uint32 option;
            switch(teamType) {
                case 2: option = ARENA_2V2_LADDER; break;
                case 3: option = ARENA_3V3_LADDER; break;
                case 1: option = ARENA_5V5_LADDER; break;
            }
            return option;
        }
        
        std::string raceToString(uint8 race) {
            std::string race_s = "Unknown";
            switch (race)
            {
                case RACE_HUMAN:            race_s = "人类";       break;
                case RACE_ORC:              race_s = "兽人";         break;
                case RACE_DWARF:            race_s = "矮人";       break;
                case RACE_NIGHTELF:         race_s = "夜精灵";   break;
                case RACE_UNDEAD_PLAYER:    race_s = "不死";      break;
                case RACE_TAUREN:           race_s = "牛头人";      break;
                case RACE_GNOME:            race_s = "侏儒";       break;
                case RACE_TROLL:            race_s = "巨魔";       break;
                case RACE_BLOODELF:         race_s = "血精灵";   break;
                case RACE_DRAENEI:          race_s = "德莱尼";     break;
            }
            return race_s;
        }
        
        std::string classToString(uint8 Class) {
            std::string Class_s = "Unknown";
            switch (Class)
            {
                case CLASS_WARRIOR:         Class_s = "战士";        break;
                case CLASS_PALADIN:         Class_s = "圣骑士";        break;
                case CLASS_HUNTER:          Class_s = "猎人";         break;
                case CLASS_ROGUE:           Class_s = "盗贼";          break;
                case CLASS_PRIEST:          Class_s = "牧师";         break;
                case CLASS_DEATH_KNIGHT:    Class_s = "DK";   break;
                case CLASS_SHAMAN:          Class_s = "萨满";         break;
                case CLASS_MAGE:            Class_s = "法师";           break;
                case CLASS_WARLOCK:         Class_s = "术士";        break;
                case CLASS_DRUID:           Class_s = "德鲁伊";          break;
            }
            return Class_s;
        }
        
        std::string getPlayerStatus(ObjectGuid guid) {
            Player *player = sObjectAccessor->FindPlayer(guid);
            if(!player)
                return "Offline";
            if(player->isAFK()) 
              //  return "Online, <AFK> " + player->afkMsg; 
            if(player->isDND()) 
              //  return "Online, <Busy> " + player->dndMsg;
            return "Online";
        }
        
        std::string getWinPercent(uint32 wins, uint32 losses) {
            uint32 totalGames = wins + losses;
            if (totalGames == 0)
                return "0%";
            
            std::stringstream buf;
            uint32 percentage = (wins * 100) / totalGames;
            buf << percentage << "%";
            return buf.str();
        }
                
    public:
        bool OnGossipHello(Player *player, Creature *creature) {
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|TInterface\\icons\\Achievement_Arena_2v2_7:35:35:-30:0|t2v2 排名", GOSSIP_SENDER_MAIN, ARENA_2V2_LADDER);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|TInterface\\icons\\Achievement_Arena_3v3_7:35:35:-30:0|t3v3 排名", GOSSIP_SENDER_MAIN, ARENA_3V3_LADDER);
			player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "|TInterface\\icons\\Achievement_Arena_5v5_7:35:35:-30:0|t3v3单排(未开放) 排名", GOSSIP_SENDER_MAIN, ARENA_5V5_LADDER);
            
            player->SEND_GOSSIP_MENU(ARENA_GOSSIP_HELLO, creature->GetGUID());
            
            return true;
        }
		ArenaTeamRanks() : CreatureScript("ArenaTeamRanks"){}
        
        bool OnGossipSelect(Player* player, Creature* creature, uint32 /*uiSender*/, uint32 uiAction) {
            player->PlayerTalkClass->ClearMenus();
         
            switch(uiAction) {
			case 0:
				// Here should the magic happend
                case ARENA_GOODBYE:
                {
                    player->PlayerTalkClass->SendCloseGossip();
                    break;
                }
                case ARENA_2V2_LADDER:
                case ARENA_5V5_LADDER: // 1v1
                case ARENA_3V3_LADDER:
                {
                    uint32 teamType = optionToTeamType(uiAction);
                    QueryResult result = CharacterDatabase.PQuery(
                            "SELECT arenaTeamid, name, rating, seasonWins, seasonGames - seasonWins "
                            "FROM `arena_team` WHERE `type` = '%u' ORDER BY rating DESC LIMIT %u;", teamType, ARENA_MAX_RESULTS
                            );
                    
                    if(!result) {
                        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Goodbye", GOSSIP_SENDER_MAIN, ARENA_GOODBYE);
                        player->SEND_GOSSIP_MENU(ARENA_GOSSIP_NOTEAMS, creature->GetGUID());
                    } else {
                        //uint64 rowCount = result->GetRowCount();
                        std::string name;
                        uint32 teamId, rating, seasonWins, seasonLosses, rank = 1;
                        do {
                            Field *fields = result->Fetch();
                            teamId = fields[0].GetUInt32();
                            name = fields[1].GetString();
                            rating = fields[2].GetUInt32();
                            seasonWins = fields[3].GetUInt32();
                            seasonLosses = fields[4].GetUInt32();
                            
                            std::stringstream buffer;
                            buffer << rank << ". [" << rating << "] " << name;
                            buffer << " (" << seasonWins << "-" << seasonLosses << ")";
                            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_BATTLE, buffer.str(), GOSSIP_SENDER_MAIN, ARENA_START_TEAM_LOOKUP + teamId);
                            
                            rank++;
                        } while(result->NextRow());
                        
                        player->SEND_GOSSIP_MENU(ARENA_GOSSIP_TEAMS, creature->GetGUID());
                    }
                    break;
                }
                default:
                {
                    if (uiAction > ARENA_START_TEAM_LOOKUP) 
                    {
                        uint32 teamId = uiAction - ARENA_START_TEAM_LOOKUP;
                        
                        // lookup team
                        QueryResult result = CharacterDatabase.PQuery(
                            //       0       1         2           3
                            "SELECT name, rating, seasonWins, seasonGames - seasonWins, "
                            //  4                 5            6        7         8
                            "weekWins, weekGames - weekWins, rank, captainGuid , type "
                            "FROM `arena_team` WHERE `arenaTeamId` = '%u'", teamId);
                        
                        // no team found
                        if(!result) {
                            player->GetSession()->SendNotification("竞技场队伍未找到...");
                            player->PlayerTalkClass->SendCloseGossip();
                            return true;
                        }
                        
                        // populate the results
                        Field *fields = result->Fetch();
                        std::string name = fields[0].GetString();
                        uint32 rating = fields[1].GetUInt32();
                        uint32 seasonWins = fields[2].GetUInt32();
                        uint32 seasonLosses = fields[3].GetUInt32();
                        uint32 weekWins = fields[4].GetUInt32();
                        uint32 weekLosses = fields[5].GetUInt32();
                        uint32 rank = fields[6].GetUInt32();
                        uint32 captainGuid = fields[7].GetUInt32();
                        uint32 type = fields[8].GetUInt32();
                        uint32 parentOption = teamTypeToOption(type);
                        
                        std::string seasonWinPercentage = getWinPercent(seasonWins, seasonLosses);
                        std::string weekWinPercentage = getWinPercent(weekWins, weekLosses);
                        
                        std::stringstream buf;
                        buf << "队伍名称: " << name;
                        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_BATTLE, buf.str(), GOSSIP_SENDER_MAIN, parentOption);
                        buf.str("");
                        buf << "等级: " << rating << " (排名 " << rank << ", 积分 " << type << "v" << type << ")";
                        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, buf.str(), GOSSIP_SENDER_MAIN, parentOption);
                        buf.str("");
                        buf << "周: " << weekWins << "-" << weekLosses << " (" << weekWinPercentage << " 胜), " << (weekWins + weekLosses) << " 场"; 
                        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, buf.str(), GOSSIP_SENDER_MAIN, parentOption);
                        buf.str("");
                        buf << "赛季: " << seasonWins << "-" << seasonLosses << " (" << seasonWinPercentage << " 胜), " << (seasonWins + seasonLosses) << " 场"; 
                        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, buf.str(), GOSSIP_SENDER_MAIN, parentOption);
                        
                        QueryResult members = CharacterDatabase.PQuery(
                                "SELECT "
                                // 0     1                 2           3
                                "a.guid, a.personalRating, a.weekWins, a.weekGames - a.weekWins, "
                                // 4           5
                                "a.seasonWins, a.seasonGames - seasonWins, "
                                // 6     7       8        9
                                "c.name, c.race, c.class, c.level "
                                "FROM arena_team_member a LEFT JOIN characters c ON a.guid = c.guid "
                                "WHERE arenaTeamId = '%u' "
                                "ORDER BY a.guid = '%u' DESC, a.seasonGames DESC, c.name ASC",
                                teamId, captainGuid);
                        
                        if(!members) {
                            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "没有找到队伍成员...?", GOSSIP_SENDER_MAIN, parentOption);
                            
                        } else {
                            uint32 memberPos = 1;
                            uint32 memberCount = members->GetRowCount();
                            uint32 guid, personalRating, level;
                            std::string name, race, Class;
                            
                            buf.str("");
                            buf << memberCount << " 队伍 " << ((memberCount == 1) ? "成员" : " 成员") << " 找到:";
                            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, buf.str(), GOSSIP_SENDER_MAIN, parentOption);
                            
                            do {
                                // populate fields
                                fields = members->Fetch();
                                guid = fields[0].GetUInt32();
                                personalRating = fields[1].GetUInt32();
                                weekWins= fields[2].GetUInt32();
                                weekLosses = fields[3].GetUInt32();
                                seasonWins = fields[4].GetUInt32();
                                seasonLosses = fields[5].GetUInt32();
                                name = fields[6].GetString();
                                race = raceToString(fields[7].GetUInt8());
                                Class = classToString(fields[8].GetUInt8());
                                level = fields[9].GetUInt32();
                                seasonWinPercentage = getWinPercent(seasonWins, seasonLosses);
                                weekWinPercentage = getWinPercent(weekWins, weekLosses);
                                
                                // TODO: add output
                                buf.str(""); // clear it
                                buf << memberPos << ". "; 
                                if (guid == captainGuid) 
                                    buf <<  "队长 ";
								buf << name << ", ";
                                
                                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, buf.str(), GOSSIP_SENDER_MAIN, parentOption);
                                buf.str("");
                                buf << "等级 " << level << " " << race << " " << Class << ", " << personalRating << " 个人等级.";
                                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, buf.str(), GOSSIP_SENDER_MAIN, parentOption);
                                buf.str("");
                                buf << "周: " << weekWins << "-" << weekLosses << " (" << weekWinPercentage << " 胜), " << (weekWins + weekLosses) << " 场"; 
                                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, buf.str(), GOSSIP_SENDER_MAIN, parentOption);
                                buf.str("");
                                buf << "赛季: " << seasonWins << "-" << seasonLosses << " (" << seasonWinPercentage << " 胜), " << (seasonWins + seasonLosses) << " 场"; 
                                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, buf.str(), GOSSIP_SENDER_MAIN, parentOption);
                                memberPos++;
                            } while(members->NextRow());
                            
                        }
                        
                        buf.str("");
                        buf << "返回 " << type << "v" << type << " 积分";
                        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, buf.str(), GOSSIP_SENDER_MAIN, parentOption);
                        player->SEND_GOSSIP_MENU(ARENA_GOSSIP_TEAM_LOOKUP, creature->GetGUID());
                    }
                }
			}
            
            return true;
        }
};

void AddSC_arenateamranks()
{
    new ArenaTeamRanks();
}
