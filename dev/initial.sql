-- No cost items
UPDATE `world`.`item_template` SET `RequiredReputationFaction`='0', `RequiredReputationRank`='0', `BuyPrice` = '0', `SellPrice` = '0';


-- Riding
INSERT INTO `playercreateinfo_spell` (`racemask`, `classmask`, `Spell`, `Note`) VALUES
(0, 0, 33389, 'Apprentice Riding'),
(0, 0, 33392, 'Journeyman Riding'),
(0, 0, 34092, 'Expert Riding'),
(0, 0, 34093, 'Artisan Riding'),
(0, 0, 54198, 'Cold Weather Flying');