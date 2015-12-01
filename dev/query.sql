-- SELECT * FROM world.creature_template where entry > 200000;
-- SELECT * FROM world.npc_vendor where entry = 34093;
-- SELECT * FROM world.gossip_menu_option where menu_id = 24001;


-- DELETE FROM world.creature_template WHERE entry = 400001;
-- DELETE FROM world.npc_vendor WHERE entry = 400001;
-- DELETE FROM world.gossip_menu_option playercreateinfoWHERE menu_id = 24001;


-- SELECT * FROM world.creature_template where name like '%Arena Battlemaster%';


-- SELECT * FROM world.item_template WHERE ItemLevel = 264 and class='4' and flags ='36864';  -- pvp suits
-- SELECT * FROM world.item_template WHERE ItemLevel = 245 and class='2' and flags = '36864';


-- SELECT * FROM world.item_template WHERE (ItemLevel = 264 and class='2' and flags = '36864') or (ItemLevel = 264 and class='4' and (subclass = '0' or subclass = '6' or subclass = '7' or subclass = '8' or subclass = '9' or subclass = '10'));  -- S7 weapons/sheilds/totems
-- SELECT * FROM world.item_template WHERE ItemLevel=245 and (class = '4' and itemset != '0' and flags != '36864');
-- SELECT * FROM world.item_template WHERE ItemLevel > 264 and (class = '4' and itemset != '0' and flags != '36864'); -- all pve suits
-- SELECT * FROM world.item_template WHERE ItemLevel=251 and flags != '36864' and (InventoryType='11' or InventoryType='12');   -- pve rings/trinkets
-- SELECT * FROM world.item_template WHERE ItemLevel=251 and flags != '36864' and (InventoryType='2' or InventoryType='6' or InventoryType='8' or InventoryType='9' or InventoryType='11' or InventoryType='12' or InventoryType='16');   -- pve offsets


-- PVP
 SELECT * FROM world.item_template WHERE ItemLevel = 270 and class = '4' and flags = '36864' and itemset != '0'; -- all pvp suits
-- SELECT * FROM world.item_template WHERE ItemLevel=251 and flags != '36864' and (InventoryType='11' or InventoryType='12');   -- pvp rings/trinkets
-- SELECT * FROM world.item_template WHERE ItemLevel=251 and flags != '36864' and (InventoryType='2' or InventoryType='6' or InventoryType='8' or InventoryType='9' or InventoryType='11' or InventoryType='12' or InventoryType='16');   -- pve offsets


