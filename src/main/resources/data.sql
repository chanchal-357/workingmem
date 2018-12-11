Insert into ANIMAL (ID, AUDIO_TITLE, NAME_EN, NAME_TH, STATUS) VALUES (1, 'resources/fish.m4a', 'Fish', 'ปลา', 1), 
(2, 'resources/ant.m4a', 'Ant', 'มด', 1),  (3, 'resources/bee.m4a', 'Bee', 'ผึ้ง', 1),  (4, 'resources/bear.m4a', 'Bear', 'หมี', 1);

Insert into ACTIVITY (ID, ACTIVITY_NAME_EN, ACTIVITY_NAME_TH, DESCRIPTION, STATUS) VALUES (1, 'Animal Name', 'ชื่อสัตว์', 'Memorize Animal Name', 1), 
(2, 'Object Name', 'ชื่อออบเจ็กต์', 'Memorize Object Name', 1),  (3, 'Image Poisition', 'ตำแหน่งรูปภาพ', 'Memorize Image Position', 1);

Insert into APPLICATION (ID, ACTIVITY_LEVEL, IS_EXAMPLE, LEVEL_ORDER, ACTIVITY_ID, ANIMAL_ID) VALUES 
(1, 1, 0, 1, 1, 1), (2, 1, 0, 2, 1, 2),  (3, 2, 0, 1, 1, 3), (4, 2, 0, 2, 1, 4);