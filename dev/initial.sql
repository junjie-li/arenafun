-- No cost items
UPDATE `world`.`item_template` SET `RequiredReputationFaction`='0', `RequiredReputationRank`='0', `BuyPrice` = '0', `SellPrice` = '0';

-- Bags
INSERT INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES 
(0, 0, 23162, 4);

-- Delete All Quests
DELETE FROM `quest_template`; 
DELETE FROM `quest_end_scripts`; 
DELETE FROM `quest_start_scripts`; 
DELETE FROM `quest_poi`; 
DELETE FROM `quest_poi_points`;  

-- Start Area
UPDATE `playercreateinfo` SET `map`='0', `zone`='1519', `position_x`='-8834.21', `position_y`='622.652', `position_z`='93.5914', `orientation`='0.763399' WHERE `race` IN (1,3,4,7,11,22);
UPDATE `playercreateinfo` SET `map`='1', `zone`='1637', `position_x`='1569.7', `position_y`='-4449.52', `position_z`='5.37452', `orientation`='0.023289' WHERE `race` IN (2,5,6,8,9,10);