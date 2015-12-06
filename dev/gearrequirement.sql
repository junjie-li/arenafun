-- pvp offset
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2963' WHERE entry = 400003;

UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2562' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '16') and entry = 400003;  -- wrist 1300
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2562' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '2') and entry = 400003;  -- feet.1400


-- pve offset
-- SELECT * FROM world.npc_vendor WHERE item = ANY (SELECT entry FROM world.item_template where subclass = '0') and entry = 400006;
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2963' WHERE entry = 400006;

UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2562' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '16') and entry = 400006;  -- wrist 1300
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2562' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '2') and entry = 400006;  -- feet.1400

UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2365' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '1') and entry = 400001; 
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2359' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '3') and entry = 400001; 
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2337' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '5' or InventoryType = '20') and entry = 400001; 
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2366' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '7') and entry = 400001; 
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2283' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '10') and entry = 400001; 

UPDATE `world`.`npc_vendor` SET `ExtendedCost`='1758' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '26' or InventoryType = '28' or InventoryType = '21' or InventoryType = '25') and entry = 400002;  -- touzhi, 1000
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2365' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '21') and entry = 400002;  -- 3150
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2360' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '17') and entry = 400002;  -- 3750
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2362' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '13') and entry = 400002;  -- 2625
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2364' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '14') and entry = 400002;  -- 1875
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2363' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '22') and entry = 400002;  -- 1125
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2283' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '23') and entry = 400002;  -- 1125
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2360' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '15') and entry = 400002;  -- 3750
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2364' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '14') and entry = 400002; 
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2283' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '23') and entry = 400002; 
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='1758' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '28') and entry = 400002; 

UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2365' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '1') and entry = 400004; 
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2359' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '3') and entry = 400004; 
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2337' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '5' or InventoryType = '20') and entry = 400004; 
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2366' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '7') and entry = 400004; 
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2283' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '10') and entry = 400004; 

UPDATE `world`.`npc_vendor` SET `ExtendedCost`='1758' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '26' or InventoryType = '28' or InventoryType = '21' or InventoryType = '25') and entry = 400002;  -- touzhi, 1000
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2365' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '21') and entry = 400005;  -- 3150
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2360' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '17') and entry = 400005;  -- 3750
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2362' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '13') and entry = 400005;  -- 2625
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2364' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '14') and entry = 400005;  -- 1875
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2363' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '22') and entry = 400005;  -- 1125
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2283' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '23') and entry = 400005;  -- 1125
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2360' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '15') and entry = 400005;  -- 3750
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2364' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '14') and entry = 400005; 
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2283' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '23') and entry = 400005; 
UPDATE `world`.`npc_vendor` SET `ExtendedCost`='1758' WHERE item = ANY (SELECT entry FROM world.item_template where InventoryType = '28') and entry = 400005; 

UPDATE `world`.`npc_vendor` SET `ExtendedCost`='2562' WHERE entry = 400007; -- trinkets.1630



