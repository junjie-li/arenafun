-- SELECT * FROM world.creature where guid >= '217420';
-- SELECT * FROM world.creature where map = '1';
-- SELECT * FROM world.playercreateinfo_item;
-- SELECT * FROM world.creature_template WHERE `VerifiedBuild` != 12340;
-- SELECT * FROM world.creature WHERE id = ANY (SELECT `entry` FROM world.creature_template WHERE `VerifiedBuild` != 12340);
 SELECT * FROM world.creature_template where entry > 90000;
-- SELECT * FROM world.creature_template where entry = 29533 or entry = 95027;
-- SELECT * FROM world.npc_vendor where entry = 95029;
-- SELECT * FROM world.gossip_menu_option where menu_id > 23000;
-- SELECT * FROM world.item_template WHERE entry = 41946;
-- SELECT * FROM world.gameobject_template WHERE entry > 800000;

-- CAREFUL!!!!!
-- DELETE FROM world.creature_template WHERE entry = 400001;
-- DELETE FROM world.npc_vendor WHERE entry = 500147;
-- DELETE FROM world.gossip_menu_option playercreateinfoWHERE menu_id = 24001;
-- DELETE FROM world.creature_template WHERE entry >= 500146 AND entry <= 600154;
-- DELETE FROM world.npc_vendor WHERE entry >= 500146 AND entry <= 500154;
-- DELETE FROM world.gossip_menu_option WHERE menu_id >= 24000 AND menu_id <= 25000;
-- CAREFUL!!!!!

-- SELECT * FROM world.item_template where name like '%Deadly Poison%';
-- SELECT * FROM world.creature_template where subname like '%arena battlemaster%';
-- SELECT * FROM world.gameobject_template where name like '%Pedestal%';

-- SELECT * FROM world.item_template WHERE ItemLevel = 264 and class='4' and flags ='36864';  -- pvp suits
-- SELECT * FROM world.item_template WHERE ItemLevel = 245 and class='2' and flags = '36864';

-- SELECT * FROM world.item_template WHERE ItemLevel=245 and (class = '4' and itemset != '0' and flags != '36864');

-- SELECT playerClass, playerSpec, pos, itemEntry, enchant, socket1, socket2, socket3, bonusEnchant, prismaticEnchant FROM characters.template_npc_human;

-- PVE
-- SELECT * FROM world.item_template WHERE (ItemLevel = 264 and class='2' and flags != '36864') or (ItemLevel = 264 and class='4' and flags != '36864' and (subclass = '6' or subclass = '7' or subclass = '8' or subclass = '9' or subclass = '10'));  -- T11 weapons/sheilds/totems
-- SELECT * FROM world.item_template WHERE ItemLevel = 264 and class = '4' and flags != '36864' and itemset != '0'; -- all pve suits
-- SELECT * FROM world.item_template WHERE ItemLevel=264 and flags != '36864' and (InventoryType='11' or InventoryType='12');   -- pve rings/trinkets
-- SELECT * FROM world.item_template WHERE ItemLevel=264 and flags != '36864' and (InventoryType='2' or InventoryType='6' or InventoryType='8' or InventoryType='9' or InventoryType='16');   -- pve offsets


-- PVP
-- SELECT * FROM world.item_template WHERE (ItemLevel = 245 and class='2' and flags = '36864') or (ItemLevel = 251 and class='4' and flags = '36864' and (subclass = '6' or subclass = '7' or subclass = '8' or subclass = '9' or subclass = '10'));  -- S8 weapons/sheilds/totems
-- SELECT * FROM world.item_template WHERE ItemLevel = 270 and class = '4' and flags = '36864' and itemset != '0'; -- all pvp suits
-- SELECT * FROM world.item_template WHERE ItemLevel=264 and flags = '36864' and (InventoryType='11' or InventoryType='12');   -- pvp rings/trinkets
-- SELECT * FROM world.item_template WHERE ItemLevel=264 and flags = '36864' and (InventoryType='2' or InventoryType='6' or InventoryType='8' or InventoryType='9' or InventoryType='16');   -- pvp offsets

-- Gem
-- SELECT * FROM world.item_template WHERE Quality = '4' and class= '3' and itemlevel = '80' and subclass != '6';   -- Regular gems
-- SELECT * FROM world.item_template WHERE Quality = '3' and class= '3' and itemlevel = '80' and subclass = '6';  -- Meta gems

-- SELECT * FROM world.item_template WHERE class= '15' and subclass = '1';  -- Consumbles