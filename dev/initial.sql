-- No cost items
UPDATE `world`.`item_template` SET `RequiredReputationFaction`='0', `RequiredReputationRank`='0', `BuyPrice` = '0', `SellPrice` = '0';

-- Delete 80 email
DELETE FROM `achievement_reward` WHERE `entry` = "13";

-- Bags
UPDATE `world`.`item_template` SET `name`='爱马仕包包', `description`='斗士必备' WHERE `entry`='23162';
INSERT INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES 
(0, 0, 23162, 4);

-- Delete All Quests
DELETE FROM `quest_template`; 
DELETE FROM `quest_end_scripts`; 
DELETE FROM `quest_start_scripts`; 
DELETE FROM `quest_poi`; 
DELETE FROM `quest_poi_points`;  

-- 185146 Heart of Fury Pedestal, 900000
INSERT INTO `world`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES ('900000', '5', '7273', 'pingtai', '', '', '', '0', '0', '0.45', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '11723');

-- MaxDurability to 0
UPDATE `world`.`item_template` SET `MaxDurability`='0' WHERE `entry`>'0';

-- default modelid
UPDATE `world`.`creature_template` SET `modelid1`='18290' WHERE `entry`>'190000';


-- Start Area
UPDATE world.playercreateinfo SET `map`='0', `zone`='1519', `position_x`='-8834.21', `position_y`='622.652', `position_z`='93.5914', `orientation`='0.763399' WHERE `race` IN (1,3,4,7,11,22);
UPDATE world.playercreateinfo SET `map`='1', `zone`='1637', `position_x`='1569.7', `position_y`='-4449.52', `position_z`='5.37452', `orientation`='0.023289' WHERE `race` IN (2,5,6,8,9,10);