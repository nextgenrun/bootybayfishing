-- ============================================
-- Booty Bay Fishing — Full Custom Database
-- Run this ONCE after installing the repack
-- ============================================

-- 1. Spawn at Booty Bay inn
DELETE FROM playercreateinfo WHERE race IN (1,2,3,4,5,6,7,8,9,10,11);
INSERT INTO playercreateinfo (race, class, map, zone, position_x, position_y, position_z, orientation)
SELECT DISTINCT race, class, 0, 40, -14400, 500, 15, 0 FROM playercreateinfo;

-- 2. Heavy tropical storms
UPDATE game_weather SET
  spring_storm_chance = 40, summer_storm_chance = 50,
  fall_storm_chance = 40, winter_storm_chance = 30
WHERE zone = 40;

-- 3. Custom fish
DELETE FROM fishing_loot_template WHERE entry = 40;
INSERT INTO fishing_loot_template (entry, item, ChanceOrQuestChance, mincount, maxcount) VALUES
(40, 61118, 5, 1, 2),   -- Golden Snapper
(40, 61119, 15, 1, 3),   -- Stormfish
(40, 61120, 35, 1, 5),   -- Bream
(40, 61121, 40, 1, 5),   -- Reef Grunt
(40, 61122, 5, 1, 1);    -- Sea King Salmon
