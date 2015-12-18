SET @Entry :=700004;
SET @ModelID :=29308;
SET @Name :='宝石供应商';
SET @Subname :='';
SET @NPCFLAG :=4225; -- 129 is gossip / scripted npc's, 4225 is vendor
DELETE FROM `creature_template` WHERE `entry`=@Entry;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`,`movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@Entry, 0, 0, 0, 0, 0, @ModelID, 0, 0, 0, @Name, @Subname, NULL, 0, 80, 80, 0, 35, @NPCFLAG, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, '', 0);




-- SET @Entry :=400001;
-- SET @iLvL :='264';
DELETE FROM `npc_vendor` WHERE `entry`=@Entry;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`)
SELECT @Entry, 0, entry, 0, 0, 0 FROM item_template WHERE Quality = '4' and class= '3' and itemlevel = '80' and subclass != '6';   -- Regular gems





DELETE FROM `world`.`npc_vendor` WHERE `entry`=@Entry and`item`='36766' and`ExtendedCost`='0';
DELETE FROM `world`.`npc_vendor` WHERE `entry`=@Entry and`item`='36767' and`ExtendedCost`='0';
DELETE FROM `world`.`npc_vendor` WHERE `entry`=@Entry and`item`='42158' and`ExtendedCost`='0';
DELETE FROM `world`.`npc_vendor` WHERE `entry`=@Entry and`item`='42157' and`ExtendedCost`='0';
DELETE FROM `world`.`npc_vendor` WHERE `entry`=@Entry and`item`='42156' and`ExtendedCost`='0';
DELETE FROM `world`.`npc_vendor` WHERE `entry`=@Entry and`item`='42155' and`ExtendedCost`='0';
DELETE FROM `world`.`npc_vendor` WHERE `entry`=@Entry and`item`='42154' and`ExtendedCost`='0';
DELETE FROM `world`.`npc_vendor` WHERE `entry`=@Entry and`item`='42153' and`ExtendedCost`='0';
DELETE FROM `world`.`npc_vendor` WHERE `entry`=@Entry and`item`='42152' and`ExtendedCost`='0';
DELETE FROM `world`.`npc_vendor` WHERE `entry`=@Entry and`item`='42151' and`ExtendedCost`='0';
DELETE FROM `world`.`npc_vendor` WHERE `entry`=@Entry and`item`='42150' and`ExtendedCost`='0';
DELETE FROM `world`.`npc_vendor` WHERE `entry`=@Entry and`item`='42149' and`ExtendedCost`='0';
DELETE FROM `world`.`npc_vendor` WHERE `entry`=@Entry and`item`='42148' and`ExtendedCost`='0';
DELETE FROM `world`.`npc_vendor` WHERE `entry`=@Entry and`item`='42146' and`ExtendedCost`='0';
DELETE FROM `world`.`npc_vendor` WHERE `entry`=@Entry and`item`='42145' and`ExtendedCost`='0';
DELETE FROM `world`.`npc_vendor` WHERE `entry`=@Entry and`item`='42144' and`ExtendedCost`='0';
DELETE FROM `world`.`npc_vendor` WHERE `entry`=@Entry and`item`='42143' and`ExtendedCost`='0';
DELETE FROM `world`.`npc_vendor` WHERE `entry`=@Entry and`item`='42142' and`ExtendedCost`='0';
DELETE FROM `world`.`npc_vendor` WHERE `entry`=@Entry and`item`='44066' and`ExtendedCost`='0';
DELETE FROM `world`.`npc_vendor` WHERE `entry`=@Entry and`item`='36919' and`ExtendedCost`='0';
DELETE FROM `world`.`npc_vendor` WHERE `entry`=@Entry and`item`='36922' and`ExtendedCost`='0';
DELETE FROM `world`.`npc_vendor` WHERE `entry`=@Entry and`item`='36925' and`ExtendedCost`='0';
DELETE FROM `world`.`npc_vendor` WHERE `entry`=@Entry and`item`='36928' and`ExtendedCost`='0';
DELETE FROM `world`.`npc_vendor` WHERE `entry`=@Entry and`item`='36931' and`ExtendedCost`='0';
DELETE FROM `world`.`npc_vendor` WHERE `entry`=@Entry and`item`='36934' and`ExtendedCost`='0';
