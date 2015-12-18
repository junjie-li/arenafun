
-- Dumping structure for table characters_dev.template_npc_human
CREATE TABLE IF NOT EXISTS `template_npc_human` (
  `playerClass` varchar(50) NOT NULL,
  `playerSpec` varchar(50) NOT NULL,
  `pos` int(10) unsigned NOT NULL DEFAULT '0',
  `itemEntry` int(10) unsigned NOT NULL DEFAULT '0',
  `enchant` int(10) unsigned NOT NULL DEFAULT '0',
  `socket1` int(10) unsigned NOT NULL DEFAULT '0',
  `socket2` int(10) unsigned NOT NULL DEFAULT '0',
  `socket3` int(10) unsigned NOT NULL DEFAULT '0',
  `bonusEnchant` int(10) unsigned NOT NULL DEFAULT '0',
  `prismaticEnchant` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Templates';

-- Dumping data for table characters_dev.template_npc_human: ~354 rows (approximately)
/*!40000 ALTER TABLE `template_npc_human` DISABLE KEYS */;
INSERT INTO `template_npc_human` (`playerClass`, `playerSpec`, `pos`, `itemEntry`, `enchant`, `socket1`, `socket2`, `socket3`, `bonusEnchant`, `prismaticEnchant`) VALUES
	('Rogue', 'Assassination', 0, 41673, 3795, 3628, 3521, 0, 3314, 0),
	('Rogue', 'Assassination', 1, 42042, 0, 0, 0, 0, 0, 0),
	('Rogue', 'Assassination', 2, 41684, 3793, 3521, 0, 0, 0, 0),
	('Rogue', 'Assassination', 4, 41651, 3245, 3521, 3566, 0, 3600, 0),
	('Rogue', 'Assassination', 5, 41833, 0, 3521, 3521, 0, 0, 3729),
	('Rogue', 'Assassination', 6, 41656, 3823, 3521, 3879, 0, 3355, 0),
	('Rogue', 'Assassination', 7, 41837, 1597, 3521, 0, 0, 0, 0),
	('Rogue', 'Assassination', 8, 41841, 3845, 0, 0, 0, 0, 0),
	('Rogue', 'Assassination', 9, 41768, 1603, 3521, 0, 0, 0, 0),
	('Rogue', 'Assassination', 10, 42117, 0, 0, 0, 0, 0, 0),
	('Rogue', 'Assassination', 11, 42119, 0, 0, 0, 0, 0, 0),
	('Rogue', 'Assassination', 12, 42136, 0, 0, 0, 0, 0, 0),
	('Rogue', 'Assassination', 13, 50342, 0, 0, 0, 0, 0, 0),
	('Rogue', 'Assassination', 14, 42082, 1099, 0, 0, 0, 0, 0),
	('Rogue', 'Assassination', 15, 42244, 3789, 3521, 0, 0, 0, 0),
	('Rogue', 'Assassination', 16, 42250, 3731, 3521, 0, 0, 0, 0),
	('Rogue', 'Assassination', 17, 42483, 0, 0, 0, 0, 0, 0),
	('Priest', 'Discipline', 0, 41855, 3796, 3621, 3520, 0, 3352, 0),
	('Priest', 'Discipline', 1, 42044, 0, 0, 0, 0, 0, 0),
	('Priest', 'Discipline', 2, 41870, 3794, 3531, 0, 0, 2890, 0),
	('Priest', 'Discipline', 4, 41860, 3245, 3520, 3531, 0, 3600, 0),
	('Priest', 'Discipline', 5, 49179, 0, 3548, 3531, 0, 2872, 3729),
	('Priest', 'Discipline', 6, 41865, 3721, 3520, 3879, 0, 2770, 0),
	('Priest', 'Discipline', 7, 49183, 3232, 3531, 0, 0, 2878, 0),
	('Priest', 'Discipline', 8, 49181, 2332, 0, 0, 0, 0, 0),
	('Priest', 'Discipline', 9, 41875, 3246, 3548, 0, 0, 2890, 0),
	('Priest', 'Discipline', 10, 42118, 0, 0, 0, 0, 0, 0),
	('Priest', 'Discipline', 11, 47732, 0, 0, 0, 0, 0, 0),
	('Priest', 'Discipline', 12, 42135, 0, 0, 0, 0, 0, 0),
	('Priest', 'Discipline', 13, 47041, 0, 0, 0, 0, 0, 0),
	('Priest', 'Discipline', 14, 42082, 3243, 0, 0, 0, 0, 0),
	('Priest', 'Discipline', 15, 49189, 3834, 3531, 0, 0, 0, 0),
	('Priest', 'Discipline', 16, 42539, 0, 0, 0, 0, 0, 0),
	('Priest', 'Discipline', 17, 42521, 0, 0, 0, 0, 0, 0),
	('Priest', 'Holy', 0, 41855, 3796, 3621, 3520, 0, 3352, 0),
	('Priest', 'Holy', 1, 42044, 0, 0, 0, 0, 0, 0),
	('Priest', 'Holy', 2, 41870, 3794, 3531, 0, 0, 2890, 0),
	('Priest', 'Holy', 4, 41860, 3245, 3520, 3531, 0, 3600, 0),
	('Priest', 'Holy', 5, 49179, 0, 3548, 3531, 0, 2872, 3729),
	('Priest', 'Holy', 6, 41865, 3721, 3520, 3879, 0, 2770, 0),
	('Priest', 'Holy', 7, 49183, 3232, 3531, 0, 0, 2878, 0),
	('Priest', 'Holy', 8, 49181, 2332, 0, 0, 0, 0, 0),
	('Priest', 'Holy', 9, 41875, 3246, 3548, 0, 0, 2890, 0),
	('Priest', 'Holy', 10, 42118, 0, 0, 0, 0, 0, 0),
	('Priest', 'Holy', 11, 47732, 0, 0, 0, 0, 0, 0),
	('Priest', 'Holy', 12, 42135, 0, 0, 0, 0, 0, 0),
	('Priest', 'Holy', 13, 47041, 0, 0, 0, 0, 0, 0),
	('Priest', 'Holy', 14, 42082, 3243, 0, 0, 0, 0, 0),
	('Priest', 'Holy', 15, 49189, 3834, 3531, 0, 0, 0, 0),
	('Priest', 'Holy', 16, 42539, 0, 0, 0, 0, 0, 0),
	('Priest', 'Holy', 17, 42521, 0, 0, 0, 0, 0, 0),
	('Mage', 'Arcane', 0, 41947, 3820, 3621, 3520, 0, 3821, 0),
	('Mage', 'Arcane', 1, 42044, 0, 0, 0, 0, 0, 0),
	('Mage', 'Arcane', 2, 41966, 3794, 3531, 0, 0, 2868, 0),
	('Mage', 'Arcane', 4, 41954, 3245, 3520, 3531, 0, 3307, 0),
	('Mage', 'Arcane', 5, 49179, 0, 3548, 3520, 0, 2872, 3729),
	('Mage', 'Arcane', 7, 49183, 3232, 3531, 0, 0, 2878, 0),
	('Mage', 'Arcane', 6, 41960, 3721, 3520, 3548, 0, 2770, 0),
	('Mage', 'Arcane', 8, 49181, 2332, 0, 0, 0, 0, 0),
	('Mage', 'Arcane', 9, 41972, 3246, 3879, 0, 0, 3198, 0),
	('Mage', 'Arcane', 10, 42118, 0, 0, 0, 0, 0, 0),
	('Mage', 'Arcane', 11, 47928, 0, 3520, 0, 0, 3752, 0),
	('Mage', 'Arcane', 12, 42137, 0, 0, 0, 0, 0, 0),
	('Mage', 'Arcane', 13, 47182, 0, 0, 0, 0, 0, 0),
	('Mage', 'Arcane', 14, 42077, 3243, 0, 0, 0, 0, 0),
	('Mage', 'Arcane', 15, 49189, 3834, 3548, 0, 0, 3752, 0),
	('Mage', 'Arcane', 16, 42539, 0, 0, 0, 0, 0, 0),
	('Mage', 'Arcane', 17, 42521, 0, 0, 0, 0, 0, 0),
	('Mage', 'Fire', 0, 41947, 3820, 3621, 3520, 0, 3821, 0),
	('Mage', 'Fire', 1, 42044, 0, 0, 0, 0, 0, 0),
	('Mage', 'Fire', 2, 41966, 3794, 3531, 0, 0, 2868, 0),
	('Mage', 'Fire', 4, 41954, 3245, 3520, 3531, 0, 3307, 0),
	('Mage', 'Fire', 5, 49179, 0, 3548, 3520, 0, 2872, 3729),
	('Mage', 'Fire', 6, 41960, 3721, 3520, 3548, 0, 2770, 0),
	('Mage', 'Fire', 7, 49183, 3232, 3531, 0, 0, 2878, 0),
	('Mage', 'Fire', 8, 49181, 2332, 0, 0, 0, 0, 0),
	('Mage', 'Fire', 9, 41972, 3246, 3879, 0, 0, 3198, 0),
	('Mage', 'Fire', 10, 42118, 0, 0, 0, 0, 0, 0),
	('Mage', 'Fire', 11, 47928, 0, 3520, 0, 0, 3752, 0),
	('Mage', 'Fire', 12, 42137, 0, 0, 0, 0, 0, 0),
	('Mage', 'Fire', 13, 47182, 0, 0, 0, 0, 0, 0),
	('Mage', 'Fire', 14, 42077, 3243, 0, 0, 0, 0, 0),
	('Mage', 'Fire', 15, 49189, 3834, 3548, 0, 0, 3752, 0),
	('Mage', 'Fire', 16, 42539, 0, 0, 0, 0, 0, 0),
	('Mage', 'Fire', 17, 42521, 0, 0, 0, 0, 0, 0),
	('Paladin', 'Retribution', 0, 40831, 3795, 3628, 3518, 0, 2787, 0),
	('Paladin', 'Retribution', 1, 42042, 0, 0, 0, 0, 0, 0),
	('Paladin', 'Retribution', 2, 40872, 3793, 3552, 0, 0, 3263, 0),
	('Paladin', 'Retribution', 4, 40792, 3832, 3518, 3518, 0, 0, 0),
	('Paladin', 'Retribution', 5, 40883, 0, 3518, 3518, 0, 0, 3729),
	('Paladin', 'Retribution', 6, 40852, 3823, 3518, 3536, 0, 3357, 0),
	('Paladin', 'Retribution', 7, 40884, 1597, 3518, 0, 0, 0, 0),
	('Paladin', 'Retribution', 8, 40890, 3845, 0, 0, 0, 0, 0),
	('Paladin', 'Retribution', 9, 40812, 1603, 3518, 0, 0, 0, 0),
	('Paladin', 'Retribution', 10, 42117, 0, 0, 0, 0, 0, 0),
	('Paladin', 'Retribution', 11, 42119, 0, 0, 0, 0, 0, 0),
	('Paladin', 'Retribution', 12, 42136, 0, 0, 0, 0, 0, 0),
	('Paladin', 'Retribution', 13, 50342, 0, 0, 0, 0, 0, 0),
	('Paladin', 'Retribution', 14, 42082, 1099, 0, 0, 0, 0, 0),
	('Paladin', 'Retribution', 15, 42324, 3789, 3518, 3518, 0, 0, 0),
	('Paladin', 'Retribution', 17, 42854, 0, 0, 0, 0, 0, 0),
	('Paladin', 'Protection', 0, 40831, 3795, 3628, 3518, 0, 2787, 0),
	('Paladin', 'Protection', 1, 42042, 0, 0, 0, 0, 0, 0),
	('Paladin', 'Protection', 2, 40872, 3793, 3552, 0, 0, 3263, 0),
	('Paladin', 'Protection', 4, 40792, 3832, 3518, 3518, 0, 0, 0),
	('Paladin', 'Protection', 5, 40883, 0, 3518, 3518, 0, 0, 3729),
	('Paladin', 'Protection', 6, 40852, 3823, 3518, 3536, 0, 3357, 0),
	('Paladin', 'Protection', 7, 40884, 1597, 3518, 0, 0, 0, 0),
	('Paladin', 'Protection', 8, 40890, 3845, 0, 0, 0, 0, 0),
	('Paladin', 'Protection', 9, 40812, 1603, 3518, 0, 0, 0, 0),
	('Paladin', 'Protection', 10, 42117, 0, 0, 0, 0, 0, 0),
	('Paladin', 'Protection', 11, 42119, 0, 0, 0, 0, 0, 0),
	('Paladin', 'Protection', 12, 42136, 0, 0, 0, 0, 0, 0),
	('Paladin', 'Protection', 13, 50342, 0, 0, 0, 0, 0, 0),
	('Paladin', 'Protection', 14, 42082, 1099, 0, 0, 0, 0, 0),
	('Paladin', 'Protection', 15, 42287, 3789, 3863, 0, 0, 2936, 0),
	('Paladin', 'Protection', 16, 42561, 3849, 0, 0, 0, 0, 0),
	('Paladin', 'Protection', 17, 42854, 0, 0, 0, 0, 0, 0),
	('Paladin', 'Holy', 0, 40934, 3796, 3627, 3520, 0, 2854, 0),
	('Paladin', 'Holy', 1, 42043, 0, 0, 0, 0, 0, 0),
	('Paladin', 'Holy', 2, 40964, 3794, 3865, 0, 0, 2865, 0),
	('Paladin', 'Holy', 4, 40910, 3832, 3520, 3865, 0, 3600, 0),
	('Paladin', 'Holy', 5, 40978, 0, 3546, 3866, 0, 3596, 3729),
	('Paladin', 'Holy', 7, 40979, 3232, 3865, 0, 0, 2878, 0),
	('Paladin', 'Holy', 6, 40940, 3721, 3520, 3546, 0, 3602, 0),
	('Paladin', 'Holy', 8, 40984, 2332, 0, 0, 0, 0, 0),
	('Paladin', 'Holy', 9, 40928, 3246, 3546, 0, 0, 2865, 0),
	('Paladin', 'Holy', 10, 42118, 0, 0, 0, 0, 0, 0),
	('Paladin', 'Holy', 11, 42116, 0, 0, 0, 0, 0, 0),
	('Paladin', 'Holy', 12, 42137, 0, 0, 0, 0, 0, 0),
	('Paladin', 'Holy', 13, 47041, 0, 0, 0, 0, 0, 0),
	('Paladin', 'Holy', 14, 42076, 3831, 0, 0, 0, 0, 0),
	('Paladin', 'Holy', 15, 42354, 3834, 3546, 0, 0, 3752, 0),
	('Paladin', 'Holy', 16, 42572, 1128, 0, 0, 0, 0, 0),
	('Paladin', 'Holy', 17, 42616, 0, 0, 0, 0, 0, 0),
	('Mage', 'Frost', 0, 41947, 3820, 3621, 3520, 0, 3821, 0),
	('Mage', 'Frost', 1, 42044, 0, 0, 0, 0, 0, 0),
	('Mage', 'Frost', 2, 41966, 3794, 3531, 0, 0, 2868, 0),
	('Mage', 'Frost', 4, 41954, 3245, 3520, 3531, 0, 3307, 0),
	('Mage', 'Frost', 5, 49179, 0, 3548, 3520, 0, 2872, 3729),
	('Mage', 'Frost', 6, 41960, 3721, 3520, 3548, 0, 2770, 0),
	('Mage', 'Frost', 7, 49183, 3232, 3531, 0, 0, 2878, 0),
	('Mage', 'Frost', 8, 49181, 2332, 0, 0, 0, 0, 0),
	('Mage', 'Frost', 9, 41972, 3246, 3879, 0, 0, 3198, 0),
	('Mage', 'Frost', 10, 42118, 0, 0, 0, 0, 0, 0),
	('Mage', 'Frost', 11, 47928, 0, 3520, 0, 0, 3752, 0),
	('Mage', 'Frost', 12, 42137, 0, 0, 0, 0, 0, 0),
	('Mage', 'Frost', 13, 47182, 0, 0, 0, 0, 0, 0),
	('Mage', 'Frost', 14, 42077, 3243, 0, 0, 0, 0, 0),
	('Mage', 'Frost', 15, 49189, 3834, 3548, 0, 0, 3752, 0),
	('Mage', 'Frost', 16, 42539, 0, 0, 0, 0, 0, 0),
	('Mage', 'Frost', 17, 42521, 0, 0, 0, 0, 0, 0),
	('DeathKnight', 'Frost', 0, 40830, 3795, 3621, 3518, 0, 2787, 0),
	('DeathKnight', 'Frost', 1, 42041, 0, 0, 0, 0, 0, 0),
	('DeathKnight', 'Frost', 2, 40872, 3852, 3518, 0, 0, 0, 0),
	('DeathKnight', 'Frost', 4, 40791, 3832, 3518, 3518, 0, 0, 0),
	('DeathKnight', 'Frost', 5, 40883, 0, 3518, 3879, 0, 0, 3729),
	('DeathKnight', 'Frost', 6, 40852, 3823, 3518, 3535, 0, 3357, 0),
	('DeathKnight', 'Frost', 7, 40884, 1597, 3518, 0, 0, 0, 0),
	('DeathKnight', 'Frost', 8, 40890, 3845, 0, 0, 0, 0, 0),
	('DeathKnight', 'Frost', 9, 40811, 1603, 3518, 0, 0, 0, 0),
	('DeathKnight', 'Frost', 10, 42117, 0, 0, 0, 0, 0, 0),
	('DeathKnight', 'Frost', 11, 42119, 0, 0, 0, 0, 0, 0),
	('DeathKnight', 'Frost', 12, 50342, 0, 0, 0, 0, 0, 0),
	('DeathKnight', 'Frost', 13, 42134, 0, 0, 0, 0, 0, 0),
	('DeathKnight', 'Frost', 14, 42081, 3243, 0, 0, 0, 0, 0),
	('DeathKnight', 'Frost', 15, 42210, 3370, 3518, 0, 0, 0, 0),
	('DeathKnight', 'Frost', 16, 42210, 3594, 3535, 0, 0, 2936, 0),
	('DeathKnight', 'Frost', 17, 42622, 0, 0, 0, 0, 0, 0),
	('DeathKnight', 'Unholy', 0, 40830, 3795, 3621, 3518, 0, 2787, 0),
	('DeathKnight', 'Unholy', 1, 42041, 0, 0, 0, 0, 0, 0),
	('DeathKnight', 'Unholy', 2, 40871, 3852, 3518, 0, 0, 0, 0),
	('DeathKnight', 'Unholy', 4, 40791, 3832, 3518, 3518, 0, 0, 0),
	('DeathKnight', 'Unholy', 5, 40883, 0, 3518, 3879, 0, 0, 3729),
	('DeathKnight', 'Unholy', 6, 40851, 3823, 3518, 3535, 0, 3357, 0),
	('DeathKnight', 'Unholy', 7, 40884, 1597, 3518, 0, 0, 0, 0),
	('DeathKnight', 'Unholy', 8, 40890, 3845, 0, 0, 0, 0, 0),
	('DeathKnight', 'Unholy', 9, 40811, 1603, 3518, 0, 0, 0, 0),
	('DeathKnight', 'Unholy', 10, 42117, 0, 0, 0, 0, 0, 0),
	('DeathKnight', 'Unholy', 11, 42119, 0, 0, 0, 0, 0, 0),
	('DeathKnight', 'Unholy', 12, 50342, 0, 0, 0, 0, 0, 0),
	('DeathKnight', 'Unholy', 13, 42134, 0, 0, 0, 0, 0, 0),
	('DeathKnight', 'Unholy', 14, 42081, 3243, 0, 0, 0, 0, 0),
	('DeathKnight', 'Unholy', 15, 42334, 3367, 3518, 3535, 0, 3764, 0),
	('DeathKnight', 'Unholy', 17, 42622, 0, 0, 0, 0, 0, 0),
	('Warlock', 'Destruction', 0, 41994, 3796, 3621, 3548, 0, 3821, 0),
	('Warlock', 'Destruction', 1, 42043, 0, 0, 0, 0, 0, 0),
	('Warlock', 'Destruction', 2, 42012, 3794, 3528, 0, 0, 2868, 0),
	('Warlock', 'Destruction', 4, 41999, 3245, 3520, 3528, 0, 3307, 0),
	('Warlock', 'Destruction', 5, 41899, 0, 3535, 3531, 0, 2872, 3729),
	('Warlock', 'Destruction', 6, 42006, 3721, 3520, 3531, 0, 0, 0),
	('Warlock', 'Destruction', 7, 49183, 3232, 3563, 0, 0, 2878, 0),
	('Warlock', 'Destruction', 8, 41910, 2332, 0, 0, 0, 0, 0),
	('Warlock', 'Destruction', 9, 42018, 3246, 3535, 0, 0, 2872, 0),
	('Warlock', 'Destruction', 10, 42118, 0, 0, 0, 0, 0, 0),
	('Warlock', 'Destruction', 11, 42116, 0, 0, 0, 0, 0, 0),
	('Warlock', 'Destruction', 12, 47182, 0, 0, 0, 0, 0, 0),
	('Warlock', 'Destruction', 13, 42132, 0, 0, 0, 0, 0, 0),
	('Warlock', 'Destruction', 14, 42078, 3243, 0, 0, 0, 0, 0),
	('Warlock', 'Destruction', 15, 49189, 0, 3866, 0, 0, 0, 0),
	('Warlock', 'Destruction', 16, 42539, 0, 0, 0, 0, 0, 0),
	('Warlock', 'Destruction', 17, 49185, 0, 0, 0, 0, 0, 0),
	('Warlock', 'Affliction', 0, 41994, 3796, 3621, 3525, 0, 3821, 0),
	('Warlock', 'Affliction', 1, 42043, 0, 0, 0, 0, 0, 0),
	('Warlock', 'Affliction', 2, 42012, 3794, 3528, 0, 0, 2868, 0),
	('Warlock', 'Affliction', 3, 6097, 0, 0, 0, 0, 0, 0),
	('Warlock', 'Affliction', 4, 41999, 3245, 3520, 3528, 0, 3307, 0),
	('Warlock', 'Affliction', 5, 41899, 0, 3535, 3531, 0, 2872, 3729),
	('Warlock', 'Affliction', 6, 42006, 3721, 3520, 3531, 0, 0, 0),
	('Warlock', 'Affliction', 7, 49183, 3232, 3563, 0, 0, 2878, 0),
	('Warlock', 'Affliction', 8, 41910, 2332, 0, 0, 0, 0, 0),
	('Warlock', 'Affliction', 9, 42018, 3246, 3535, 0, 0, 2872, 0),
	('Warlock', 'Affliction', 10, 42118, 0, 0, 0, 0, 0, 0),
	('Warlock', 'Affliction', 11, 42116, 0, 0, 0, 0, 0, 0),
	('Warlock', 'Affliction', 12, 47182, 0, 0, 0, 0, 0, 0),
	('Warlock', 'Affliction', 13, 42132, 0, 0, 0, 0, 0, 0),
	('Warlock', 'Affliction', 14, 42078, 3243, 0, 0, 0, 0, 0),
	('Warlock', 'Affliction', 15, 49189, 3834, 3866, 0, 0, 0, 0),
	('Warlock', 'Affliction', 16, 42539, 0, 0, 0, 0, 0, 0),
	('Warlock', 'Affliction', 17, 42521, 0, 0, 0, 0, 0, 0),
	('Warlock', 'Affliction', 18, 38311, 0, 0, 0, 0, 0, 0),
	('Warlock', 'Demonology', 0, 41994, 3796, 3621, 3548, 0, 3821, 0),
	('Warlock', 'Demonology', 1, 42043, 0, 0, 0, 0, 0, 0),
	('Warlock', 'Demonology', 4, 41999, 3245, 3520, 3528, 0, 3307, 0),
	('Warlock', 'Demonology', 2, 42012, 3794, 3528, 0, 0, 2868, 0),
	('Warlock', 'Demonology', 5, 41899, 0, 3535, 3531, 0, 2872, 3729),
	('Warlock', 'Demonology', 6, 42006, 3721, 3520, 3531, 0, 0, 0),
	('Warlock', 'Demonology', 7, 49183, 3232, 3563, 0, 0, 2878, 0),
	('Warlock', 'Demonology', 8, 41910, 2332, 0, 0, 0, 0, 0),
	('Warlock', 'Demonology', 9, 42018, 3246, 3535, 0, 0, 2872, 0),
	('Warlock', 'Demonology', 10, 42118, 0, 0, 0, 0, 0, 0),
	('Warlock', 'Demonology', 11, 42116, 0, 0, 0, 0, 0, 0),
	('Warlock', 'Demonology', 12, 51377, 0, 0, 0, 0, 0, 0),
	('Warlock', 'Demonology', 13, 42132, 0, 0, 0, 0, 0, 0),
	('Warlock', 'Demonology', 14, 42078, 3243, 0, 0, 0, 0, 0),
	('Warlock', 'Demonology', 15, 49189, 3834, 3866, 0, 0, 0, 0),
	('Warlock', 'Demonology', 16, 42539, 0, 0, 0, 0, 0, 0),
	('Warlock', 'Demonology', 17, 49185, 0, 0, 0, 0, 0, 0),
	('Warrior', 'Fury', 0, 40829, 3795, 3625, 3525, 0, 2787, 0),
	('Warrior', 'Fury', 1, 42042, 0, 0, 0, 0, 0, 0),
	('Warrior', 'Fury', 0, 40829, 3795, 3625, 3525, 0, 2787, 0),
	('Warrior', 'Fury', 2, 40870, 3793, 3550, 0, 0, 3263, 0),
	('Warrior', 'Fury', 4, 40790, 3832, 3525, 3550, 0, 3600, 0),
	('Warrior', 'Fury', 5, 40883, 0, 3525, 3525, 0, 0, 3729),
	('Warrior', 'Fury', 6, 40850, 3823, 3525, 3525, 0, 0, 0),
	('Warrior', 'Fury', 7, 40884, 1597, 3525, 0, 0, 0, 0),
	('Warrior', 'Fury', 8, 40890, 3845, 0, 0, 0, 0, 0),
	('Warrior', 'Fury', 9, 40810, 1603, 3525, 0, 0, 0, 0),
	('Warrior', 'Fury', 10, 42119, 0, 0, 0, 0, 0, 0),
	('Warrior', 'Fury', 11, 42117, 0, 0, 0, 0, 0, 0),
	('Warrior', 'Fury', 12, 42136, 0, 0, 0, 0, 0, 0),
	('Warrior', 'Fury', 13, 50342, 0, 0, 0, 0, 0, 0),
	('Warrior', 'Fury', 14, 42082, 1099, 0, 0, 0, 0, 0),
	('Warrior', 'Fury', 15, 42324, 3789, 3525, 3525, 0, 0, 0),
	('Warrior', 'Fury', 16, 42324, 3789, 3525, 3525, 0, 0, 0),
	('Warrior', 'Fury', 17, 42487, 0, 0, 0, 0, 0, 0),
	('Warrior', 'Arms', 0, 40829, 3795, 3625, 3525, 0, 2787, 0),
	('Warrior', 'Arms', 1, 42042, 0, 0, 0, 0, 0, 0),
	('Warrior', 'Arms', 2, 40870, 3793, 3550, 0, 0, 3263, 0),
	('Warrior', 'Arms', 4, 40790, 3832, 3525, 3550, 0, 3600, 0),
	('Warrior', 'Arms', 5, 40883, 0, 3525, 3525, 0, 0, 3729),
	('Warrior', 'Arms', 7, 40884, 1597, 3525, 0, 0, 0, 0),
	('Warrior', 'Arms', 6, 40850, 3823, 3525, 3525, 0, 0, 0),
	('Warrior', 'Arms', 8, 40890, 3845, 0, 0, 0, 0, 0),
	('Warrior', 'Arms', 9, 40810, 1603, 3525, 0, 0, 0, 0),
	('Warrior', 'Arms', 10, 42119, 0, 0, 0, 0, 0, 0),
	('Warrior', 'Arms', 11, 42117, 0, 0, 0, 0, 0, 0),
	('Warrior', 'Arms', 12, 42136, 0, 0, 0, 0, 0, 0),
	('Warrior', 'Arms', 13, 50342, 0, 0, 0, 0, 0, 0),
	('Warrior', 'Arms', 14, 42082, 1099, 0, 0, 0, 0, 0),
	('Warrior', 'Arms', 15, 42324, 3789, 3525, 3525, 0, 0, 0),
	('Warrior', 'Arms', 17, 42487, 0, 0, 0, 0, 0, 0),
	('Warrior', 'Protection', 0, 40829, 3795, 3625, 3525, 0, 2787, 0),
	('Warrior', 'Protection', 1, 42042, 0, 0, 0, 0, 0, 0),
	('Warrior', 'Protection', 2, 40870, 3793, 3550, 0, 0, 3263, 0),
	('Warrior', 'Protection', 4, 40790, 3832, 3525, 3550, 0, 3600, 0),
	('Warrior', 'Protection', 5, 40883, 0, 3525, 3525, 0, 0, 3729),
	('Warrior', 'Protection', 6, 40850, 3823, 3525, 3525, 0, 0, 0),
	('Warrior', 'Protection', 7, 40884, 1597, 3525, 0, 0, 0, 0),
	('Warrior', 'Protection', 8, 40890, 3845, 0, 0, 0, 0, 0),
	('Warrior', 'Protection', 9, 40810, 1603, 3525, 0, 0, 0, 0),
	('Warrior', 'Protection', 10, 42119, 0, 0, 0, 0, 0, 0),
	('Warrior', 'Protection', 11, 42117, 0, 0, 0, 0, 0, 0),
	('Warrior', 'Protection', 12, 42136, 0, 0, 0, 0, 0, 0),
	('Warrior', 'Protection', 13, 50342, 0, 0, 0, 0, 0, 0),
	('Warrior', 'Protection', 14, 42082, 1099, 0, 0, 0, 0, 0),
	('Warrior', 'Protection', 15, 42277, 3789, 3863, 0, 0, 2936, 0),
	('Warrior', 'Protection', 16, 42561, 3849, 0, 0, 0, 0, 0),
	('Warrior', 'Protection', 17, 42487, 0, 0, 0, 0, 0, 0),
	('Rogue', 'Subtlety', 0, 41673, 3795, 3628, 3521, 0, 3314, 0),
	('Rogue', 'Subtlety', 1, 42042, 0, 0, 0, 0, 0, 0),
	('Rogue', 'Subtlety', 2, 41684, 3793, 3521, 0, 0, 0, 0),
	('Rogue', 'Subtlety', 4, 41651, 3245, 3521, 3566, 0, 3600, 0),
	('Rogue', 'Subtlety', 5, 41833, 0, 3521, 3521, 0, 0, 3729),
	('Rogue', 'Subtlety', 6, 41656, 3823, 3521, 3879, 0, 3355, 0),
	('Rogue', 'Subtlety', 7, 41837, 1597, 3521, 0, 0, 0, 0),
	('Rogue', 'Subtlety', 8, 41841, 3845, 0, 0, 0, 0, 0),
	('Rogue', 'Subtlety', 9, 41768, 1603, 3521, 0, 0, 0, 0),
	('Rogue', 'Subtlety', 10, 42117, 0, 0, 0, 0, 0, 0),
	('Rogue', 'Subtlety', 11, 42119, 0, 0, 0, 0, 0, 0),
	('Rogue', 'Subtlety', 12, 50342, 0, 0, 0, 0, 0, 0),
	('Rogue', 'Subtlety', 13, 42136, 0, 0, 0, 0, 0, 0),
	('Rogue', 'Subtlety', 14, 42082, 1099, 0, 0, 0, 0, 0),
	('Rogue', 'Subtlety', 15, 42244, 3789, 3521, 0, 0, 0, 0),
	('Rogue', 'Subtlety', 16, 42250, 3731, 3521, 0, 0, 0, 0),
	('Rogue', 'Subtlety', 17, 42483, 0, 0, 0, 0, 0, 0),
	('Rogue', 'Combat', 0, 41673, 3795, 3628, 3521, 0, 3314, 0),
	('Rogue', 'Combat', 1, 42042, 0, 0, 0, 0, 0, 0),
	('Rogue', 'Combat', 2, 41684, 3793, 3521, 0, 0, 0, 0),
	('Rogue', 'Combat', 4, 41651, 3245, 3521, 3566, 0, 3600, 0),
	('Rogue', 'Combat', 5, 41833, 0, 3521, 3521, 0, 0, 3729),
	('Rogue', 'Combat', 6, 41656, 3823, 3521, 3879, 0, 3355, 0),
	('Rogue', 'Combat', 7, 41837, 1597, 3521, 0, 0, 0, 0),
	('Rogue', 'Combat', 8, 41841, 3845, 0, 0, 0, 0, 0),
	('Rogue', 'Combat', 9, 41768, 1603, 3521, 0, 0, 0, 0),
	('Rogue', 'Combat', 10, 42117, 0, 0, 0, 0, 0, 0),
	('Rogue', 'Combat', 11, 42119, 0, 0, 0, 0, 0, 0),
	('Rogue', 'Combat', 12, 50342, 0, 0, 0, 0, 0, 0),
	('Rogue', 'Combat', 13, 42136, 0, 0, 0, 0, 0, 0),
	('Rogue', 'Combat', 14, 42082, 1099, 0, 0, 0, 0, 0),
	('Rogue', 'Combat', 15, 42277, 3789, 3521, 0, 0, 0, 0),
	('Rogue', 'Combat', 16, 42282, 3731, 3521, 0, 0, 0, 0),
	('Rogue', 'Combat', 17, 42483, 0, 0, 0, 0, 0, 0),
	('DeathKnight', 'Blood', 0, 40830, 3795, 3621, 3518, 0, 2787, 0),
	('DeathKnight', 'Blood', 1, 42041, 0, 0, 0, 0, 0, 0),
	('DeathKnight', 'Blood', 2, 40871, 3852, 3518, 0, 0, 0, 0),
	('DeathKnight', 'Blood', 4, 40792, 3832, 3518, 3518, 0, 0, 0),
	('DeathKnight', 'Blood', 5, 40883, 0, 3518, 3879, 0, 0, 3729),
	('DeathKnight', 'Blood', 6, 40851, 3823, 3518, 3535, 0, 3357, 0),
	('DeathKnight', 'Blood', 7, 40884, 1597, 3518, 0, 0, 0, 0),
	('DeathKnight', 'Blood', 8, 40890, 3845, 0, 0, 0, 0, 0),
	('DeathKnight', 'Blood', 9, 40811, 1603, 3518, 0, 0, 0, 0),
	('DeathKnight', 'Blood', 10, 42117, 0, 0, 0, 0, 0, 0),
	('DeathKnight', 'Blood', 11, 42119, 0, 0, 0, 0, 0, 0),
	('DeathKnight', 'Blood', 12, 50342, 0, 0, 0, 0, 0, 0),
	('DeathKnight', 'Blood', 13, 42134, 0, 0, 0, 0, 0, 0),
	('DeathKnight', 'Blood', 14, 42081, 3243, 0, 0, 0, 0, 0),
	('DeathKnight', 'Blood', 15, 42334, 3366, 3518, 3535, 0, 3764, 0),
	('DeathKnight', 'Blood', 17, 42622, 0, 0, 0, 0, 0, 0),
	('Priest', 'Shadow', 0, 41855, 3796, 3621, 3520, 0, 3352, 0),
	('Priest', 'Shadow', 1, 42045, 0, 0, 0, 0, 0, 0),
	('Priest', 'Shadow', 2, 41870, 3794, 3563, 0, 0, 2868, 0),
	('Priest', 'Shadow', 4, 41860, 3832, 3563, 3563, 0, 3307, 0),
	('Priest', 'Shadow', 5, 49179, 0, 3590, 3590, 0, 2872, 3729),
	('Priest', 'Shadow', 6, 41865, 3721, 3520, 3590, 0, 2770, 0),
	('Priest', 'Shadow', 7, 49183, 3232, 3563, 0, 0, 2878, 0),
	('Priest', 'Shadow', 8, 49181, 2332, 0, 0, 0, 0, 0),
	('Priest', 'Shadow', 9, 41875, 3246, 3590, 0, 0, 3752, 0),
	('Priest', 'Shadow', 10, 42118, 0, 0, 0, 0, 0, 0),
	('Priest', 'Shadow', 11, 47732, 0, 0, 0, 0, 0, 0),
	('Priest', 'Shadow', 12, 45518, 0, 0, 0, 0, 0, 0),
	('Priest', 'Shadow', 13, 42137, 0, 0, 0, 0, 0, 0),
	('Priest', 'Shadow', 14, 42077, 3243, 0, 0, 0, 0, 0),
	('Priest', 'Shadow', 15, 49189, 3834, 3590, 0, 0, 3752, 0),
	('Priest', 'Shadow', 16, 42539, 0, 0, 0, 0, 0, 0),
	('Priest', 'Shadow', 17, 42521, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `template_npc_human` ENABLE KEYS */;
