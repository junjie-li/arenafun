SET @Entry :=300008;
SET @ModelID :=29308;
SET @Name :='消耗品供应商';
SET @Subname :='';
SET @NPCFLAG :=3; -- 129 is gossip / scripted npc's, 3 is vendor
DELETE FROM `creature_template` WHERE `entry`=@Entry;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`,`movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@Entry, 0, 0, 0, 0, 0, @ModelID, 0, 0, 0, @Name, @Subname, NULL, 0, 80, 80, 0, 35, @NPCFLAG, 1, 1.14286, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, '', 0);




-- SET @Entry :=400001;
-- SET @iLvL :='264';
DELETE FROM `npc_vendor` WHERE `entry`=@Entry;

INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 34722, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 3775, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 5237, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 43231, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 43233, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 43235, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 43237, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 5565, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 16583, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 17020, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 17030, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 17033, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 21177, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 37201, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 44605, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 44614, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 44615, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 43523, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 6265, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 17058, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 17056, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 5175, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 5176, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 5177, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 5178, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 35948, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 43236, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 40359, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 21215, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 23162, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 44447, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 44448, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 52021, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@Entry, 0, 52020, 0, 0, 0);


-- SELECT * FROM world.item_template WHERE entry = ANY (SELECT `item` FROM world.npc_vendor WHERE entry = 300008);
UPDATE `world`.`item_template` SET `BuyCount`='200', `RequiredSkill`='0', `RequiredSkillRank`='0', `stackable`='1000' WHERE `entry`='34722';
UPDATE `world`.`item_template` SET `BuyCount`='200', `stackable`='1000' WHERE `entry`='21177';
UPDATE `world`.`item_template` SET `BuyCount`='200', `stackable`='1000' WHERE `entry`='17020';
UPDATE `world`.`item_template` SET `BuyCount`='200', `stackable`='1000' WHERE `entry`='44615';
UPDATE `world`.`item_template` SET `BuyCount`='200', `stackable`='1000' WHERE `entry`='44614';
UPDATE `world`.`item_template` SET `BuyCount`='200', `stackable`='1000' WHERE `entry`='44605';
UPDATE `world`.`item_template` SET `BuyCount`='200', `stackable`='1000' WHERE `entry`='43523';
UPDATE `world`.`item_template` SET `BuyCount`='200', `stackable`='1000' WHERE `entry`='43236';
UPDATE `world`.`item_template` SET `BuyCount`='200', `stackable`='1000' WHERE `entry`='43237';
UPDATE `world`.`item_template` SET `BuyCount`='200', `stackable`='1000' WHERE `entry`='43235';
UPDATE `world`.`item_template` SET `BuyCount`='200', `stackable`='1000' WHERE `entry`='43233';
UPDATE `world`.`item_template` SET `BuyCount`='200', `stackable`='1000' WHERE `entry`='43231';
UPDATE `world`.`item_template` SET `BuyCount`='200', `stackable`='1000' WHERE `entry`='37201';
UPDATE `world`.`item_template` SET `BuyCount`='200', `stackable`='1000' WHERE `entry`='40359';
UPDATE `world`.`item_template` SET `BuyCount`='200', `stackable`='1000' WHERE `entry`='35948';
UPDATE `world`.`item_template` SET `BuyCount`='200', `stackable`='1000' WHERE `entry`='21215';
UPDATE `world`.`item_template` SET `BuyCount`='200', `stackable`='1000' WHERE `entry`='17058';
UPDATE `world`.`item_template` SET `BuyCount`='200', `stackable`='1000' WHERE `entry`='5237';
UPDATE `world`.`item_template` SET `BuyCount`='200', `stackable`='1000' WHERE `entry`='17056';
UPDATE `world`.`item_template` SET `BuyCount`='200', `stackable`='1000' WHERE `entry`='3775';
UPDATE `world`.`item_template` SET `BuyCount`='200', `stackable`='1000' WHERE `entry`='17030';
UPDATE `world`.`item_template` SET `BuyCount`='200', `stackable`='1000' WHERE `entry`='17033';
UPDATE `world`.`item_template` SET `BuyCount`='200', `stackable`='1000' WHERE `entry`='16583';
UPDATE `world`.`item_template` SET `BuyCount`='200', `stackable`='1000' WHERE `entry`='5565';
UPDATE `world`.`item_template` SET `BuyCount`='200', `stackable`='1000' WHERE `entry`='6265';
UPDATE `world`.`item_template` SET `BuyCount`='200' WHERE `entry`='52020';
UPDATE `world`.`item_template` SET `BuyCount`='200' WHERE `entry`='52021';
