-- Activity data
Insert into activity (ID, ACTIVITY_NAME_EN, ACTIVITY_NAME_TH, DESCRIPTION, STATUS) VALUES 
(1, 'Animal Name', 'ชื่อสัตว์', 'Memorize Animal Names', 1), 
(2, 'Object Name', 'ชื่อออบเจ็กต์', 'Memorize Object Names', 1),  
(3, 'Image Position', 'ตำแหน่งรูปภาพ', 'Memorize Image Positions', 1),
(4, 'Alphabet', 'ตัวอักษร', 'Memorize Alphabet Positions', 1),
(5, 'Miscellaneous', 'เบ็ดเตล็ด', 'Memorize Image & Audio Sequence', 1);

-- Activity 1 Application Object data
INSERT INTO `app_object` (`id`, `name_en`, `name_th`, `audio_title`, `image_title`, `status`) VALUES
(1, 'Ant', 'มด', 'Ant.m4a', 'Ant.jpg', 1),
(2, 'Bear', 'หมี ', 'Bear.m4a', 'Bear.jpg', 1),
(3, 'Bee', 'ผึ้ง', 'Bee.m4a', 'Bee.jpg', 1),
(4, 'Bird', 'นก', 'Bird.m4a', 'Bird.jpg', 1),
(5, 'Buffalo', 'ควาย', 'Buffalo.m4a', 'Buffalo.jpg', 1),
(6, 'Cat', 'แมว ', 'Cat.m4a', 'Cat.jpg', 1),
(7, 'Chicken', 'ไก่', 'Chicken.m4a', 'Chicken.jpg', 1),
(8, 'Cow', 'วัว', 'Cow.m4a', 'Cow.jpg', 1),
(9, 'Crab', 'ปู', 'Crab.m4a', 'Crab.jpg', 1),
(10, 'Dear', 'กวาง', 'Dear.m4a', 'Dear.jpg', 1),
(11, 'Dog', 'หมา', 'Dog.m4a', 'Dog.jpg', 1),
(12, 'Elephant', 'ช้าง', 'Elephant.m4a', 'Elephant.jpg', 1),
(13, 'Fish', 'ปลา', 'Fish.m4a', 'Fish.jpg', 1),
(14, 'Frog', 'กบ', 'Frog.m4a', 'Frog.jpg', 1),
(15, 'Lion', 'สิงโต', 'Lion.m4a', 'Lion.jpg', 1),
(16, 'Monkey', 'ลิง', 'Monkey.m4a', 'Monkey.jpg', 1),
(17, 'Pig', 'หมู', 'Pig.m4a', 'Pig.jpg', 1),
(18, 'Rat', 'หนู', 'Rat.m4a', 'Rat.jpg', 1),
(19, 'Shrimp', 'กุ้ง', 'Shrimp.m4a', 'Shrimp.jpg', 1),
(20, 'Tiger', 'เสือ ', 'Tiger.m4a', 'Tiger.jpg', 1),
(21, 'Turtle', 'เต่า ', 'Turtle.m4a', 'Turtle.jpg', 1);

-- Activity 2 Object Application Object data
INSERT INTO `app_object` (`id`, `name_en`, `name_th`, `audio_title`, `image_title`, `status`) VALUES
(22, 'Above', 'บน', 'Above.m4a', 'Above.jpg', 1),
(23, 'Accept', 'ยอม', 'Accept.m4a', 'Accept.jpg', 1),
(24, 'Animal', 'สัตว์', 'Animal.m4a', 'Animal.jpg', 1),
(25, 'Area', 'ถิ่น', 'Area.m4a', 'Area.jpg', 1),
(26, 'Around', 'ทั่ว', 'Around.m4a', 'Around.jpg', 1),
(27, 'Back', 'กลับ ', 'Back.m4a', 'Back.jpg', 1),
(28, 'Bag', 'ถุง', 'Bag.m4a', 'Bag.jpg', 1),
(29, 'Bark', 'เห่า', 'Bark.m4a', 'Bark.jpg', 1),
(30, 'Beauty', 'งาม', 'Beauty.m4a', 'Beauty.jpg', 1),
(31, 'Bin', 'ถัง', 'Bin.m4a', 'Bin.jpg', 1),
(32, 'Black', 'ดำ', 'Black.m4a', 'Black.jpg', 1),
(33, 'Bowl', 'พาน', 'Bowl.m4a', 'Bowl.jpg', 1),
(34, 'Brave', 'กล้า', 'Brave.m4a', 'Brave.jpg', 1),
(35, 'Car', 'รถ', 'Car.m4a', 'Car.jpg', 1),
(36, 'Clean', 'ล้าง ', 'Clean.m4a', 'Clean.jpg', 1),
(37, 'Couple', 'คู่ ', 'Couple.m4a', 'Couple.jpg', 1),
(39, 'Day', 'วัน', 'Day.m4a', 'Day.jpg', 1),
(40, 'Dish', 'จาน ', 'Dish.m4a', 'Dish.jpg', 1),
(41, 'Drop', 'ทิ้ง', 'Drop.m4a', 'Drop.jpg', 1),
(42, 'Ear', 'หู', 'Ear.m4a', 'Ear.jpg', 1),
(43, 'Eat', 'กิน', 'Eat.m4a', 'Eat.jpg', 1),
(44, 'Egg', 'ไข่ ', 'Egg.m4a', 'Egg.jpg', 1),
(45, 'Far', 'ไกล', 'Far.m4a', 'Far.jpg', 1),
(46, 'Fear', 'กลัว', 'Fear.m4a', 'Fear.jpg', 1),
(47, 'Finger', 'นิ้ว', 'Finger.m4a', 'Finger.jpg', 1),
(48, 'Forest', 'ป่า', 'Forest.m4a', 'Forest.jpg', 1),
(49, 'Forget', 'ลืม', 'Forget.m4a', 'Forget.jpg', 1),
(50, 'Grand', 'ยาย', 'Grand.m4a', 'Grand.jpg', 1),
(51, 'Grand2', 'ตา', 'Grand2.m4a', 'Grand2.jpg', 1),
(52, 'Growth', 'โต', 'Growth.m4a', 'Growth.jpg', 1),
(53, 'Hand', 'มือ ', 'Hand.m4a', 'Hand.jpg', 1),
(54, 'Hard', 'ยาก', 'Hard.m4a', 'Hard.jpg', 1),
(55, 'He', 'เขา', 'He.m4a', 'He.jpg', 1),
(56, 'Heart', 'ใจ', 'Heart.m4a', 'Heart.jpg', 1),
(57, 'High', 'สูง', 'High.m4a', 'High.jpg', 1),
(58, 'Hold', 'ถือ', 'Hold.m4a', 'Hold.jpg', 1),
(59, 'Know', 'รู้', 'Know.m4a', 'Know.jpg', 1),
(60, 'Leaf', 'ใบ', 'Leaf.m4a', 'Leaf.jpg', 1),
(61, 'Leave', 'จาก ', 'Leave.m4a', 'Leave.jpg', 1),
(62, 'Holding', 'หิ้ว', 'Holding.m4a', 'Holding.jpg', 1),
(63, 'Leg', 'ขา', 'Leg.m4a', 'Leg.jpg', 1),
(64, 'Less', 'น้อย', 'Less.m4a', 'Less.jpg', 1),
(65, 'Loose', 'เสีย', 'Loose.m4a', 'Loose.jpg', 1),
(66, 'Low', 'ต่ำ', 'Low.m4a', 'Low.jpg', 1),
(67, 'Money', 'เงิน', 'Money.m4a', 'Money.jpg', 1),
(68, 'Morning', 'เช้า', 'Morning.m4a', 'Morning.jpg', 1),
(69, 'Mouth', 'ปาก ', 'Mouth.m4a', 'Mouth.jpg', 1),
(70, 'Narrow', 'แคบ', 'Narrow.m4a', 'Narrow.jpg', 1),
(71, 'Nation', 'ชาติ', 'Nation.m4a', 'Nation.jpg', 1),
(72, 'Noon', 'บ่าย', 'Noon.m4a', 'Noon.jpg', 1),
(73, 'Point', 'ชี้ ', 'Point.m4a', 'Point.jpg', 1),
(74, 'Praise', 'ชม', 'Praise.m4a', 'Praise.jpg', 1),
(75, 'Pull', 'ดึง ', 'Pull.m4a', 'Pull.jpg', 1),
(76, 'Quiet', 'เงียบ', 'Quiet.m4a', 'Quiet.jpg', 1),
(77, 'Real', 'จริง ', 'Real.m4a', 'Real.jpg', 1),
(78, 'Remember', 'จำ', 'Remember.m4a', 'Remember.jpg', 1),
(79, 'River', 'คลอง', 'River.m4a', 'River.jpg', 1),
(80, 'Row', 'แถว', 'Row.m4a', 'Row.jpg', 1),
(81, 'Run', 'วิ่ง', 'Run.m4a', 'Run.jpg', 1),
(82, 'Sale', 'ขาย', 'Sale.m4a', 'Sale.jpg', 1),
(83, 'Shine', 'ตาก', 'Shine.m4a', 'Shine.jpg', 1),
(84, 'Sit', 'นั่ง', 'Sit.m4a', 'Sit.jpg', 1),
(85, 'Sky', 'ฟ้า', 'Sky.m4a', 'Sky.jpg', 1),
(86, 'Smart', 'เก่ง', 'Smart.m4a', 'Smart.jpg', 1),
(87, 'Stand', 'ยืน', 'Stand.m4a', 'Stand.jpg', 1),
(88, 'Study', 'เรียน', 'Study.m4a', 'Study.jpg', 1),
(89, 'Tell', 'บอก', 'Tell.m4a', 'Tell.jpg', 1),
(90, 'Temple', 'วัด', 'Temple.m4a', 'Temple.jpg', 1),
(91, 'Tooth', 'ฟัน ', 'Tooth.m4a', 'Tooth.jpg', 1),
(92, 'Umbrella', 'ร่ม', 'Umbrella.m4a', 'Umbrella.jpg', 1),
(93, 'Wait', 'เฝ้า', 'Wait.m4a', 'Wait.jpg', 1),
(94, 'Walk', 'เดิน', 'Walk.m4a', 'Walk.jpg', 1),
(95, 'Walking', 'ก้าว ', 'Walking.m4a', 'Walking.jpg', 1),
(96, 'Water', 'น้ำ', 'Water.m4a', 'Water.jpg', 1),
(97, 'Wood', 'ไม้', 'Wood.m4a', 'Wood.jpg', 1),
(98, 'Word', 'คำ', 'Word.m4a', 'Word.jpg', 1),
(99, 'Yet', 'ยัง', 'Yet.m4a', 'Yet.jpg', 1);

-- Activity 3 Demo Object Image data
INSERT INTO `app_object` (`id`, `name_en`, `name_th`, `audio_title`, `image_title`, `status`) VALUES
(100, 'Avatar 1', 'สัญลักษณ์ 1', '1.m4a', '1.jpg', 1),
(101, 'Avatar 2', 'สัญลักษณ์ 2', '2.m4a', '2.jpg', 1);

-- Activity 3 Object Image data
INSERT INTO `app_object` (`id`, `name_en`, `name_th`, `audio_title`, `image_title`, `status`) VALUES
(102, 'Box', 'N/A', 'Box.m4a', 'Box.jpg', 1),
(103, 'Chair', 'N/A', 'Chair.m4a', 'Chair.jpg', 1),
(104, 'Comb', 'N/A', 'Comb.m4a', 'Comb.jpg', 1),
(105, 'Duck', 'N/A', 'Duck.m4a', 'Duck.jpg', 1),
(106, 'Eraser', 'N/A', 'Eraser.m4a', 'Eraser.jpg', 1),
(107, 'Fan', 'N/A', 'Fan.m4a', 'Fan.jpg', 1),
(108, 'Freeze', 'N/A', 'Freeze.m4a', 'Freeze.jpg', 1),
(109, 'Horse', 'N/A', 'Horse.m4a', 'Horse.jpg', 1),
(110, 'Notebook', 'N/A', 'Notebook.m4a', 'Notebook.jpg', 1),
(111, 'Panda', 'N/A', 'Panda.m4a', 'Panda.jpg', 1),
(112, 'Pencil', 'N/A', 'Pencil.m4a', 'Pencil.jpg', 1),
(113, 'Pillow', 'N/A', 'Pillow.m4a', 'Pillow.jpg', 1),
(114, 'Pot', 'N/A', 'Pot.m4a', 'Pot.jpg', 1),
(115, 'Sock', 'N/A', 'Sock.m4a', 'Sock.jpg', 1),
(116, 'Table', 'N/A', 'Table.m4a', 'Table.jpg', 1);

-- Activity 1 Application data
INSERT INTO `application` (`id`, `activity_id`, `app_obj_id`, `activity_level`, `level_round`, `round_order`, `is_image`, `is_example`) VALUES
(1  , 1, 13, 1, 1, 1, 0, 0),
(2  , 1, 3 , 1, 1, 2, 0, 0),
(3  , 1, 17, 1, 2, 1, 0, 0),
(4  , 1, 15, 1, 2, 2, 0, 0),
(5  , 1, 9 , 2, 1, 1, 0, 0),
(6  , 1, 2 , 2, 1, 2, 0, 0),
(7  , 1, 16, 2, 1, 3, 0, 0),
(8  , 1, 12, 2, 2, 1, 0, 0),
(9  , 1, 5 , 2, 2, 2, 0, 0),
(10 , 1, 1 , 2, 2, 3, 0, 0),
(11 , 1, 20, 3, 1, 1, 0, 0),
(12 , 1, 7 , 3, 1, 2, 0, 0),
(13 , 1, 8 , 3, 1, 3, 0, 0),
(14 , 1, 19, 3, 1, 4, 0, 0),
(15 , 1, 6 , 3, 2, 1, 0, 0),
(16 , 1, 16, 3, 2, 2, 0, 0),
(17 , 1, 9 , 3, 2, 3, 0, 0),
(18 , 1, 11, 3, 2, 4, 0, 0),
(19 , 1, 17, 3, 3, 1, 0, 0),
(20 , 1, 16, 3, 3, 2, 0, 0),
(21 , 1, 11, 3, 3, 3, 0, 0),
(22 , 1, 13, 3, 3, 4, 0, 0),
(23 , 1, 11, 3, 4, 1, 0, 0),
(24 , 1, 12, 3, 4, 2, 0, 0),
(25 , 1, 4 , 3, 4, 3, 0, 0),
(26 , 1, 2 , 3, 4, 4, 0, 0),
(27 , 1, 3 , 4, 1, 1, 0, 0),
(28 , 1, 10, 4, 1, 2, 0, 0),
(29 , 1, 6 , 4, 1, 3, 0, 0),
(30 , 1, 16, 4, 1, 4, 0, 0),
(31 , 1, 7 , 4, 1, 5, 0, 0),
(32 , 1, 1 , 4, 2, 1, 0, 0),
(33 , 1, 18, 4, 2, 2, 0, 0),
(34 , 1, 20, 4, 2, 3, 0, 0),
(35 , 1, 8 , 4, 2, 4, 0, 0),
(36 , 1, 16, 4, 2, 5, 0, 0),
(37 , 1, 17, 4, 3, 1, 0, 0),
(38 , 1, 15, 4, 3, 2, 0, 0),
(39 , 1, 2 , 4, 3, 3, 0, 0),
(40 , 1, 9 , 4, 3, 4, 0, 0),
(41 , 1, 19, 4, 3, 5, 0, 0),
(42 , 1, 13, 4, 4, 1, 0, 0),
(43 , 1, 1 , 4, 4, 2, 0, 0),
(44 , 1, 7 , 4, 4, 3, 0, 0),
(45 , 1, 3 , 4, 4, 4, 0, 0),
(46 , 1, 6 , 4, 4, 5, 0, 0),
(47 , 1, 1 , 5, 1, 1, 0, 0),
(48 , 1, 8 , 5, 1, 2, 0, 0),
(49 , 1, 16, 5, 1, 3, 0, 0),
(50 , 1, 20, 5, 1, 4, 0, 0),
(51 , 1, 13, 5, 1, 5, 0, 0),
(52 , 1, 12, 5, 1, 6, 0, 0),
(53 , 1, 4 , 5, 2, 1, 0, 0),
(54 , 1, 10, 5, 2, 2, 0, 0),
(55 , 1, 3 , 5, 2, 3, 0, 0),
(56 , 1, 9 , 5, 2, 4, 0, 0),
(57 , 1, 6 , 5, 2, 5, 0, 0),
(58 , 1, 14, 5, 2, 6, 0, 0),
(59 , 1, 21, 5, 3, 1, 0, 0),
(60 , 1, 15, 5, 3, 2, 0, 0),
(61 , 1, 17, 5, 3, 3, 0, 0),
(62 , 1, 8 , 5, 3, 4, 0, 0),
(63 , 1, 7 , 5, 3, 5, 0, 0),
(64 , 1, 13, 5, 3, 6, 0, 0),
(65 , 1, 14, 5, 4, 1, 0, 0),
(66 , 1, 1 , 5, 4, 2, 0, 0),
(67 , 1, 20, 5, 4, 3, 0, 0),
(68 , 1, 18, 5, 4, 4, 0, 0),
(69 , 1, 5 , 5, 4, 5, 0, 0),
(70 , 1, 3 , 5, 4, 6, 0, 0),
(71 , 1, 4 , 6, 1, 1, 0, 0),
(72 , 1, 14, 6, 1, 2, 0, 0),
(73 , 1, 16, 6, 1, 3, 0, 0),
(74 , 1, 20, 6, 1, 4, 0, 0),
(75 , 1, 13, 6, 1, 5, 0, 0),
(76 , 1, 8 , 6, 1, 6, 0, 0),
(77 , 1, 2 , 6, 1, 7, 0, 0),
(78 , 1, 10, 6, 2, 1, 0, 0),
(79 , 1, 3 , 6, 2, 2, 0, 0),
(80 , 1, 6 , 6, 2, 3, 0, 0),
(81 , 1, 12, 6, 2, 4, 0, 0),
(82 , 1, 11, 6, 2, 5, 0, 0),
(83 , 1, 15, 6, 2, 6, 0, 0),
(84 , 1, 9 , 6, 2, 7, 0, 0),
(85 , 1, 2 , 6, 3, 1, 0, 0),
(86 , 1, 13, 6, 3, 2, 0, 0),
(87 , 1, 4 , 6, 3, 3, 0, 0),
(88 , 1, 7 , 6, 3, 4, 0, 0),
(89 , 1, 1 , 6, 3, 5, 0, 0),
(90 , 1, 19, 6, 3, 6, 0, 0),
(91 , 1, 21, 6, 3, 7, 0, 0),
(92 , 1, 6 , 6, 4, 1, 0, 0),
(93 , 1, 8 , 6, 4, 2, 0, 0),
(94 , 1, 14, 6, 4, 3, 0, 0),
(95 , 1, 11, 6, 4, 4, 0, 0),
(96 , 1, 9 , 6, 4, 5, 0, 0),
(97 , 1, 3 , 6, 4, 6, 0, 0),
(98 , 1, 5 , 6, 4, 7, 0, 0),
(99 , 1, 13, 7, 1, 1, 0, 0),
(100, 1, 3 , 7, 1, 2, 0, 0),
(101, 1, 17, 7, 1, 3, 0, 0),
(102, 1, 7 , 7, 1, 4, 0, 0),
(103, 1, 9 , 7, 1, 5, 0, 0),
(104, 1, 2 , 7, 1, 6, 0, 0),
(105, 1, 16, 7, 1, 7, 0, 0),
(106, 1, 8 , 7, 1, 8, 0, 0),
(107, 1, 12, 7, 2, 1, 0, 0),
(108, 1, 5 , 7, 2, 2, 0, 0),
(109, 1, 1 , 7, 2, 3, 0, 0),
(110, 1, 6 , 7, 2, 4, 0, 0),
(111, 1, 16, 7, 2, 5, 0, 0),
(112, 1, 9 , 7, 2, 6, 0, 0),
(113, 1, 11, 7, 2, 7, 0, 0),
(114, 1, 20, 7, 2, 8, 0, 0),
(115, 1, 20, 7, 3, 1, 0, 0),
(116, 1, 15, 7, 3, 2, 0, 0),
(117, 1, 8 , 7, 3, 3, 0, 0),
(118, 1, 19, 7, 3, 4, 0, 0),
(119, 1, 11, 7, 3, 5, 0, 0),
(120, 1, 12, 7, 3, 6, 0, 0),
(121, 1, 4 , 7, 3, 7, 0, 0),
(122, 1, 2 , 7, 3, 8, 0, 0),
(123, 1, 13, 7, 4, 1, 0, 0),
(124, 1, 7 , 7, 4, 2, 0, 0),
(125, 1, 20, 7, 4, 3, 0, 0),
(126, 1, 8 , 7, 4, 4, 0, 0),
(127, 1, 6 , 7, 4, 5, 0, 0),
(128, 1, 14, 7, 4, 6, 0, 0),
(129, 1, 11, 7, 4, 7, 0, 0),
(130, 1, 9 , 7, 4, 8, 0, 0),
(131, 1, 2 , 8, 1, 1, 0, 0),
(132, 1, 13, 8, 1, 2, 0, 0),
(133, 1, 4 , 8, 1, 3, 0, 0),
(134, 1, 14, 8, 1, 4, 0, 0),
(135, 1, 16, 8, 1, 5, 0, 0),
(136, 1, 20, 8, 1, 6, 0, 0),
(137, 1, 7 , 8, 1, 7, 0, 0),
(138, 1, 1 , 8, 1, 8, 0, 0),
(139, 1, 21, 8, 1, 9, 0, 0),
(140, 1, 11, 8, 2, 1, 0, 0),
(141, 1, 15, 8, 2, 2, 0, 0),
(142, 1, 9 , 8, 2, 3, 0, 0),
(143, 1, 10, 8, 2, 4, 0, 0),
(144, 1, 3 , 8, 2, 5, 0, 0),
(145, 1, 6 , 8, 2, 6, 0, 0),
(146, 1, 12, 8, 2, 7, 0, 0),
(147, 1, 17, 8, 2, 8, 0, 0),
(148, 1, 19, 8, 2, 9, 0, 0),
(149, 1, 13, 8, 3, 1, 0, 0),
(150, 1, 3 , 8, 3, 2, 0, 0),
(151, 1, 17, 8, 3, 3, 0, 0),
(152, 1, 16, 8, 3, 4, 0, 0),
(153, 1, 9 , 8, 3, 5, 0, 0),
(154, 1, 11, 8, 3, 6, 0, 0),
(155, 1, 20, 8, 3, 7, 0, 0),
(156, 1, 7 , 8, 3, 8, 0, 0),
(157, 1, 8 , 8, 3, 9, 0, 0),
(158, 1, 13, 8, 4, 1, 0, 0),
(159, 1, 7 , 8, 4, 2, 0, 0),
(160, 1, 20, 8, 4, 3, 0, 0),
(161, 1, 4 , 8, 4, 4, 0, 0),
(162, 1, 14, 8, 4, 5, 0, 0),
(163, 1, 8 , 8, 4, 6, 0, 0),
(164, 1, 6 , 8, 4, 7, 0, 0),
(165, 1, 9 , 8, 4, 8, 0, 0),
(166, 1, 11, 8, 4, 9, 0, 0);

-- Activity 1 demo data
INSERT INTO application (id, activity_id, app_obj_id, activity_level, level_round, round_order, is_image, is_example) VALUES 
(167, 1, 13, 1,	1, 1, 0, 1), (168, 1, 3, 1, 1, 2, 0, 1);

-- Activity 2 Application data
INSERT INTO `application` (`id`, `activity_id`, `app_obj_id`, `activity_level`, `level_round`, `round_order`, `is_image`, `is_example`) VALUES
(169, 2, 37, 1, 1, 1, 0, 0),
(170, 2, 45, 1, 1, 2, 0, 0),
(171, 2, 55, 1, 2, 1, 0, 0),
(172, 2, 67, 1, 2, 2, 0, 0),
(173, 2, 27, 2, 1, 1, 0, 0),
(174, 2, 30, 2, 1, 2, 0, 0),
(175, 2, 50, 2, 1, 3, 0, 0),
(176, 2, 51, 2, 2, 1, 0, 0),
(177, 2, 76, 2, 2, 2, 0, 0),
(178, 2, 70, 2, 2, 3, 0, 0),
(179, 2, 95, 3, 1, 1, 0, 0),
(180, 2, 78, 3, 1, 2, 0, 0),
(181, 2, 52, 3, 1, 3, 0, 0),
(182, 2, 74, 3, 1, 4, 0, 0),
(183, 2, 75, 3, 2, 1, 0, 0),
(184, 2, 25, 3, 2, 2, 0, 0),
(185, 2, 71, 3, 2, 3, 0, 0),
(186, 2, 58, 3, 2, 4, 0, 0),
(187, 2, 73, 3, 3, 1, 0, 0),
(188, 2, 80, 3, 3, 2, 0, 0),
(189, 2, 92, 3, 3, 3, 0, 0),
(190, 2, 72, 3, 3, 4, 0, 0),
(191, 2, 53, 3, 4, 1, 0, 0),
(192, 2, 87, 3, 4, 2, 0, 0),
(193, 2, 88, 3, 4, 3, 0, 0),
(194, 2, 42, 3, 4, 4, 0, 0),
(195, 2, 39, 4, 1, 1, 0, 0),
(196, 2, 99, 4, 1, 2, 0, 0),
(197, 2, 49, 4, 1, 3, 0, 0),
(198, 2, 59, 4, 1, 4, 0, 0),
(199, 2, 96, 4, 1, 5, 0, 0),
(200, 2, 22, 4, 2, 1, 0, 0),
(201, 2, 60, 4, 2, 2, 0, 0),
(202, 2, 84, 4, 2, 3, 0, 0),
(203, 2, 68, 4, 2, 4, 0, 0),
(204, 2, 94, 4, 2, 5, 0, 0),
(205, 2, 91, 4, 3, 1, 0, 0),
(206, 2, 97, 4, 3, 2, 0, 0),
(207, 2, 81, 4, 3, 3, 0, 0),
(208, 2, 65, 4, 3, 4, 0, 0),
(209, 2, 27, 4, 3, 5, 0, 0),
(210, 2, 44, 4, 4, 1, 0, 0),
(211, 2, 93, 4, 4, 2, 0, 0),
(212, 2, 23, 4, 4, 3, 0, 0),
(213, 2, 35, 4, 4, 4, 0, 0),
(214, 2, 90, 4, 4, 5, 0, 0),
(215, 2, 36, 5, 1, 1, 0, 0),
(216, 2, 76, 5, 1, 2, 0, 0),
(217, 2, 31, 5, 1, 3, 0, 0),
(218, 2, 95, 5, 1, 4, 0, 0),
(219, 2, 48, 5, 1, 5, 0, 0),
(220, 2, 29, 5, 1, 6, 0, 0),
(221, 2, 13, 5, 2, 1, 0, 0),
(222, 2, 55, 5, 2, 2, 0, 0),
(223, 2, 1 , 5, 2, 3, 0, 0),
(224, 2, 67, 5, 2, 4, 0, 0),
(225, 2, 63, 5, 2, 5, 0, 0),
(226, 2, 86, 5, 2, 6, 0, 0),
(227, 2, 45, 5, 3, 1, 0, 0),
(228, 2, 70, 5, 3, 2, 0, 0),
(229, 2, 51, 5, 3, 3, 0, 0),
(230, 2, 30, 5, 3, 4, 0, 0),
(231, 2, 27, 5, 3, 5, 0, 0),
(232, 2, 74, 5, 3, 6, 0, 0),
(233, 2, 40, 5, 4, 1, 0, 0),
(234, 2, 39, 5, 4, 2, 0, 0),
(235, 2, 75, 5, 4, 3, 0, 0),
(236, 2, 71, 5, 4, 4, 0, 0),
(237, 2, 76, 5, 4, 5, 0, 0),
(238, 2, 73, 5, 4, 6, 0, 0),
(239, 2, 61, 6, 1, 1, 0, 0),
(240, 2, 99, 6, 1, 2, 0, 0),
(241, 2, 36, 6, 1, 3, 0, 0),
(242, 2, 65, 6, 1, 4, 0, 0),
(243, 2, 43, 6, 1, 5, 0, 0),
(244, 2, 82, 6, 1, 6, 0, 0),
(245, 2, 84, 6, 1, 7, 0, 0),
(246, 2, 75, 6, 2, 1, 0, 0),
(247, 2, 48, 6, 2, 2, 0, 0),
(248, 2, 68, 6, 2, 3, 0, 0),
(249, 2, 51, 6, 2, 4, 0, 0),
(250, 2, 76, 6, 2, 5, 0, 0),
(251, 2, 44, 6, 2, 6, 0, 0),
(252, 2, 70, 6, 2, 7, 0, 0),
(253, 2, 22, 6, 3, 1, 0, 0),
(254, 2, 86, 6, 3, 2, 0, 0),
(255, 2, 48, 6, 3, 3, 0, 0),
(256, 2, 40, 6, 3, 4, 0, 0),
(257, 2, 60, 6, 3, 5, 0, 0),
(258, 2, 68, 6, 3, 6, 0, 0),
(259, 2, 94, 6, 3, 7, 0, 0),
(260, 2, 63, 6, 4, 1, 0, 0),
(261, 2, 25, 6, 4, 2, 0, 0),
(262, 2, 56, 6, 4, 3, 0, 0),
(263, 2, 8 , 6, 4, 4, 0, 0),
(264, 2, 91, 6, 4, 5, 0, 0),
(265, 2, 51, 6, 4, 6, 0, 0),
(266, 2, 88, 6, 4, 7, 0, 0),
(267, 2, 69, 7, 1, 1, 0, 0),
(268, 2, 41, 7, 1, 2, 0, 0),
(269, 2, 72, 7, 1, 3, 0, 0),
(270, 2, 79, 7, 1, 4, 0, 0),
(271, 2, 74, 7, 1, 5, 0, 0),
(272, 2, 39, 7, 1, 6, 0, 0),
(273, 2, 97, 7, 1, 7, 0, 0),
(274, 2, 49, 7, 1, 8, 0, 0),
(275, 2, 58, 7, 2, 1, 0, 0),
(276, 2, 63, 7, 2, 2, 0, 0),
(277, 2, 33, 7, 2, 3, 0, 0),
(278, 2, 24, 7, 2, 4, 0, 0),
(279, 2, 98, 7, 2, 5, 0, 0),
(280, 2, 85, 7, 2, 6, 0, 0),
(281, 2, 16, 7, 2, 7, 0, 0),
(282, 2, 57, 7, 2, 8, 0, 0),
(283, 2, 77, 7, 3, 1, 0, 0),
(284, 2, 32, 7, 3, 2, 0, 0),
(285, 2, 46, 7, 3, 3, 0, 0),
(286, 2, 69, 7, 3, 4, 0, 0),
(287, 2, 26, 7, 3, 5, 0, 0),
(288, 2, 54, 7, 3, 6, 0, 0),
(289, 2, 89, 7, 3, 7, 0, 0),
(290, 2, 8 , 7, 3, 8, 0, 0),
(291, 2, 12, 7, 4, 1, 0, 0),
(292, 2, 53, 7, 4, 2, 0, 0),
(293, 2, 83, 7, 4, 3, 0, 0),
(294, 2, 87, 7, 4, 4, 0, 0),
(295, 2, 28, 7, 4, 5, 0, 0),
(296, 2, 42, 7, 4, 6, 0, 0),
(297, 2, 90, 7, 4, 7, 0, 0),
(298, 2, 23, 7, 4, 8, 0, 0),
(299, 2, 62, 8, 1, 1, 0, 0),
(300, 2, 91, 8, 1, 2, 0, 0),
(301, 2, 99, 8, 1, 3, 0, 0),
(302, 2, 49, 8, 1, 4, 0, 0),
(303, 2, 59, 8, 1, 5, 0, 0),
(304, 2, 96, 8, 1, 6, 0, 0),
(305, 2, 81, 8, 1, 7, 0, 0),
(306, 2, 24, 8, 1, 8, 0, 0),
(307, 2, 34, 8, 1, 9, 0, 0),
(308, 2, 22, 8, 2, 1, 0, 0),
(309, 2, 51, 8, 2, 2, 0, 0),
(310, 2, 84, 8, 2, 3, 0, 0),
(311, 2, 68, 8, 2, 4, 0, 0),
(312, 2, 60, 8, 2, 5, 0, 0),
(313, 2, 47, 8, 2, 6, 0, 0),
(314, 2, 94, 8, 2, 7, 0, 0),
(315, 2, 44, 8, 2, 8, 0, 0),
(316, 2, 57, 8, 2, 9, 0, 0),
(317, 2, 36, 8, 3, 1, 0, 0),
(318, 2, 50, 8, 3, 2, 0, 0),
(319, 2, 66, 8, 3, 3, 0, 0),
(320, 2, 97, 8, 3, 4, 0, 0),
(321, 2, 81, 8, 3, 5, 0, 0),
(322, 2, 11, 8, 3, 6, 0, 0),
(323, 2, 65, 8, 3, 7, 0, 0),
(324, 2, 90, 8, 3, 8, 0, 0),
(325, 2, 27, 8, 3, 9, 0, 0),
(326, 2, 44, 8, 4, 1, 0, 0),
(327, 2, 31, 8, 4, 2, 0, 0),
(328, 2, 64, 8, 4, 3, 0, 0),
(329, 2, 93, 8, 4, 4, 0, 0),
(330, 2, 23, 8, 4, 5, 0, 0),
(331, 2, 35, 8, 4, 6, 0, 0),
(332, 2, 16, 8, 4, 7, 0, 0),
(333, 2, 66, 8, 4, 8, 0, 0),
(334, 2, 29, 8, 4, 9, 0, 0);

-- Activity 2 demo data
INSERT INTO application (id, activity_id, app_obj_id, activity_level, level_round, round_order, is_image, is_example) VALUES 
(335, 2, 79, 1,	1, 1, 0, 1), (336, 2, 85, 1, 1, 2, 0, 1);

-- Activity 3 demo data
INSERT INTO application (id, activity_id, app_obj_id, activity_level, level_round, round_order, is_image, is_example) VALUES 
(337, 3, 100, 1, 1,	1, 1, 1),	(338, 3, 101, 1, 1,	2, 1, 1);

-- Activity 3 Application Data
INSERT INTO `application` (`id`, `activity_id`, `app_obj_id`, `activity_level`, `level_round`, `round_order`, `is_image`, `is_example`) VALUES
(339, 3, 6  , 1, 1,	1, 1, 0),
(340, 3, 13 , 1, 1,	5, 1, 0),
(341, 3, 6  , 1, 2,	2, 1, 0),
(342, 3, 105, 1, 2,	6, 1, 0),
(343, 3, 13 , 1, 3,	2, 1, 0),
(344, 3, 105, 1, 3,	4, 1, 0),
(345, 3, 16 , 1, 4,	3, 1, 0),
(346, 3, 13 , 1, 4,	5, 1, 0),
(347, 3, 110, 2, 1,	4, 1, 0),
(348, 3, 102, 2, 1,	5, 1, 0),
(349, 3, 107, 2, 1,	3, 1, 0),
(350, 3, 102, 2, 2,	4, 1, 0),
(351, 3, 112, 2, 2,	7, 1, 0),
(352, 3, 110, 2, 2,	6, 1, 0),
(353, 3, 104, 2, 3,	2, 1, 0),
(354, 3, 112, 2, 3,	4, 1, 0),
(355, 3, 102, 2, 3,	6, 1, 0),
(356, 3, 110, 2, 4,	8, 1, 0),
(357, 3, 107, 2, 4,	6, 1, 0),
(358, 3, 104, 2, 4,	1, 1, 0),
(359, 3, 16 , 3, 1,	5, 1, 0),
(360, 3, 7  , 3, 1,	4, 1, 0),
(361, 3, 12 , 3, 1,	6, 1, 0),
(362, 3, 109, 3, 1,	8, 1, 0),
(363, 3, 4  , 3, 2,	2, 1, 0),
(364, 3, 109, 3, 2,	4, 1, 0),
(365, 3, 6  , 3, 2,	6, 1, 0),
(366, 3, 16 , 3, 2,	7, 1, 0),
(367, 3, 12 , 3, 3,	5, 1, 0),
(368, 3, 7  , 3, 3,	3, 1, 0),
(369, 3, 16 , 3, 3,	7, 1, 0),
(370, 3, 4  , 3, 3,	1, 1, 0),
(371, 3, 109, 3, 4,	4, 1, 0),
(372, 3, 16 , 3, 4,	9, 1, 0),
(373, 3, 6  , 3, 4,	5, 1, 0),
(374, 3, 4  , 3, 4,	3, 1, 0),
(375, 3, 107, 4, 1,	1, 1, 0),
(376, 3, 108, 4, 1,	2, 1, 0),
(377, 3, 104, 4, 1,	7, 1, 0),
(378, 3, 106, 4, 1,	5, 1, 0),
(379, 3, 116, 4, 1,	6, 1, 0),
(380, 3, 108, 4, 2,	2, 1, 0),
(381, 3, 104, 4, 2,	4, 1, 0),
(382, 3, 116, 4, 2,	6, 1, 0),
(383, 3, 106, 4, 2,	7, 1, 0),
(384, 3, 107, 4, 2,	8, 1, 0),
(385, 3, 106, 4, 3,	3, 1, 0),
(386, 3, 116, 4, 3,	5, 1, 0),
(387, 3, 115, 4, 3,	4, 1, 0),
(388, 3, 112, 4, 3,	6, 1, 0),
(389, 3, 104, 4, 3,	1, 1, 0),
(390, 3, 107, 4, 4,	1, 1, 0),
(391, 3, 112, 4, 4,	4, 1, 0),
(392, 3, 115, 4, 4,	9, 1, 0),
(393, 3, 116, 4, 4,	2, 1, 0),
(394, 3, 108, 4, 4,	5, 1, 0),
(395, 3, 17 , 5, 1,	8, 1, 0),
(396, 3, 111, 5, 1,	7, 1, 0),
(397, 3, 11 , 5, 1,	5, 1, 0),
(398, 3, 8  , 5, 1,	3, 1, 0),
(399, 3, 19 , 5, 1,	9, 1, 0),
(400, 3, 9  , 5, 1,	1, 1, 0),
(401, 3, 13 , 5, 2,	2, 1, 0),
(402, 3, 19 , 5, 2,	5, 1, 0),
(403, 3, 11 , 5, 2,	3, 1, 0),
(404, 3, 111, 5, 2,	6, 1, 0),
(405, 3, 20 , 5, 2,	4, 1, 0),
(406, 3, 17 , 5, 2,	8, 1, 0),
(407, 3, 111, 5, 3,	6, 1, 0),
(408, 3, 19 , 5, 3,	7, 1, 0),
(409, 3, 20 , 5, 3,	1, 1, 0),
(410, 3, 17 , 5, 3,	8, 1, 0),
(411, 3, 9  , 5, 3,	2, 1, 0),
(412, 3, 13 , 5, 3,	4, 1, 0),
(413, 3, 8  , 5, 4,	8, 1, 0),
(414, 3, 20 , 5, 4,	1, 1, 0),
(415, 3, 17 , 5, 4,	2, 1, 0),
(416, 3, 13 , 5, 4,	4, 1, 0),
(417, 3, 111, 5, 4,	6, 1, 0),
(418, 3, 9  , 5, 4,	5, 1, 0),
(419, 3, 102, 6, 1,	5, 1, 0),
(420, 3, 115, 6, 1,	8, 1, 0),
(421, 3, 103, 6, 1,	6, 1, 0),
(422, 3, 114, 6, 1,	9, 1, 0),
(423, 3, 106, 6, 1,	7, 1, 0),
(424, 3, 104, 6, 1,	2, 1, 0),
(425, 3, 110, 6, 1,	1, 1, 0),
(426, 3, 114, 6, 2,	2, 1, 0),
(427, 3, 103, 6, 2,	7, 1, 0),
(428, 3, 115, 6, 2,	4, 1, 0),
(429, 3, 104, 6, 2,	8, 1, 0),
(430, 3, 106, 6, 2,	3, 1, 0),
(431, 3, 113, 6, 2,	5, 1, 0),
(432, 3, 110, 6, 2,	9, 1, 0),
(433, 3, 104, 6, 3,	2, 1, 0),
(434, 3, 114, 6, 3,	5, 1, 0),
(435, 3, 102, 6, 3,	4, 1, 0),
(436, 3, 113, 6, 3,	9, 1, 0),
(437, 3, 115, 6, 3,	8, 1, 0),
(438, 3, 106, 6, 3,	7, 1, 0),
(439, 3, 103, 6, 3,	6, 1, 0),
(440, 3, 113, 6, 4,	3, 1, 0),
(441, 3, 110, 6, 4,	5, 1, 0),
(442, 3, 106, 6, 4,	7, 1, 0),
(443, 3, 114, 6, 4,	6, 1, 0),
(444, 3, 115, 6, 4,	8, 1, 0),
(445, 3, 104, 6, 4,	2, 1, 0),
(446, 3, 102, 6, 4,	1, 1, 0),
(447, 3, 16 , 7, 1,	4, 1, 0),
(448, 3, 111, 7, 1,	6, 1, 0),
(449, 3, 21 , 7, 1,	3, 1, 0),
(450, 3, 8  , 7, 1,	1, 1, 0),
(451, 3, 12 , 7, 1,	8, 1, 0),
(452, 3, 17 , 7, 1,	5, 1, 0),
(453, 3, 19 , 7, 1,	2, 1, 0),
(454, 3, 105, 7, 1,	9, 1, 0),
(455, 3, 16 , 7, 2,	5, 1, 0),
(456, 3, 109, 7, 2,	4, 1, 0),
(457, 3, 105, 7, 2,	1, 1, 0),
(458, 3, 19 , 7, 2,	9, 1, 0),
(459, 3, 18 , 7, 2,	3, 1, 0),
(460, 3, 17 , 7, 2,	2, 1, 0),
(461, 3, 21 , 7, 2,	8, 1, 0),
(462, 3, 111, 7, 2,	7, 1, 0),
(463, 3, 12 , 7, 3,	7, 1, 0),
(464, 3, 21 , 7, 3,	4, 1, 0),
(465, 3, 18 , 7, 3,	6, 1, 0),
(466, 3, 105, 7, 3,	3, 1, 0),
(467, 3, 111, 7, 3,	9, 1, 0),
(468, 3, 109, 7, 3,	8, 1, 0),
(469, 3, 16 , 7, 3,	2, 1, 0),
(470, 3, 8  , 7, 3,	1, 1, 0),
(471, 3, 17 , 7, 4,	4, 1, 0),
(472, 3, 8  , 7, 4,	5, 1, 0),
(473, 3, 105, 7, 4,	3, 1, 0),
(474, 3, 111, 7, 4,	1, 1, 0),
(475, 3, 12 , 7, 4,	7, 1, 0),
(476, 3, 18 , 7, 4,	8, 1, 0),
(477, 3, 19 , 7, 4,	6, 1, 0),
(478, 3, 109, 7, 4,	9, 1, 0);

-- Activity 4 Application Object Data
INSERT INTO `app_object` (`id`, `name_en`, `name_th`, `audio_title`, `image_title`, `status`) VALUES
(117,	'A',	'A',	'A.m4a',	'A.jpg',	1),
(118,	'B',	'B',	'B.m4a',	'B.jpg',	1),
(119,	'C',	'C',	'C.m4a',	'C.jpg',	1),
(120,	'D',	'D',	'D.m4a',	'D.jpg',	1),
(121,	'E',	'E',	'E.m4a',	'E.jpg',	1),
(122,	'F',	'F',	'F.m4a',	'F.jpg',	1),
(123,	'G',	'G',	'G.m4a',	'G.jpg',	1),
(124,	'H',	'H',	'H.m4a',	'H.jpg',	1),
(125,	'I',	'I',	'I.m4a',	'I.jpg',	1),
(126,	'J',	'J',	'J.m4a',	'J.jpg',	1),
(127,	'K',	'K',	'K.m4a',	'K.jpg',	1),
(128,	'L',	'L',	'L.m4a',	'L.jpg',	1),
(129,	'M',	'M',	'M.m4a',	'M.jpg',	1),
(130,	'N',	'N',	'N.m4a',	'N.jpg',	1),
(131,	'O',	'O',	'O.m4a',	'O.jpg',	1),
(132,	'P',	'P',	'P.m4a',	'P.jpg',	1),
(133,	'Q',	'Q',	'Q.m4a',	'Q.jpg',	1),
(134,	'R',	'R',	'R.m4a',	'R.jpg',	1),
(135,	'S',	'S',	'S.m4a',	'S.jpg',	1),
(136,	'T',	'T',	'T.m4a',	'T.jpg',	1),
(137,	'U',	'U',	'U.m4a',	'U.jpg',	1),
(138,	'V',	'V',	'V.m4a',	'V.jpg',	1),
(139,	'W',	'W',	'W.m4a',	'W.jpg',	1),
(140,	'X',	'X',	'X.m4a',	'X.jpg',	1),
(141,	'Y',	'Y',	'Y.m4a',	'Y.jpg',	1);

-- Activity 4, Application Data
INSERT INTO `application` (`id`, `activity_id`, `app_obj_id`, `activity_level`, `level_round`, `round_order`, `is_image`, `is_example`) VALUES
(479, 4, 122, 1, 1,	1, 0, 0),
(480, 4, 141, 1, 1,	2, 0, 0),
(481, 4, 118, 1, 2,	1, 0, 0),
(482, 4, 123, 1, 2,	2, 0, 0),
(483, 4, 120, 2, 1,	1, 0, 0),
(484, 4, 128, 2, 1,	2, 0, 0),
(485, 4, 117, 2, 1,	3, 0, 0),
(486, 4, 138, 2, 2,	1, 0, 0),
(487, 4, 127, 2, 2,	2, 0, 0),
(488, 4, 131, 2, 2,	3, 0, 0),
(489, 4, 132, 3, 1,	1, 0, 0),
(490, 4, 136, 3, 1,	2, 0, 0),
(491, 4, 135, 3, 1,	3, 0, 0),
(492, 4, 117, 3, 1,	4, 0, 0),
(493, 4, 129, 3, 2,	1, 0, 0),
(494, 4, 133, 3, 2,	2, 0, 0),
(495, 4, 121, 3, 2,	3, 0, 0),
(496, 4, 134, 3, 2,	4, 0, 0),
(497, 4, 121, 3, 3,	1, 0, 0),
(498, 4, 136, 3, 3,	2, 0, 0),
(499, 4, 130, 3, 3,	3, 0, 0),
(500, 4, 120, 3, 3,	4, 0, 0),
(501, 4, 132, 3, 4,	1, 0, 0),
(502, 4, 129, 3, 4,	2, 0, 0),
(503, 4, 125, 3, 4,	3, 0, 0),
(504, 4, 124, 3, 4,	4, 0, 0),
(505, 4, 135, 4, 1,	1, 0, 0),
(506, 4, 130, 4, 1,	2, 0, 0),
(507, 4, 134, 4, 1,	3, 0, 0),
(508, 4, 125, 4, 1,	4, 0, 0),
(509, 4, 126, 4, 1,	5, 0, 0),
(510, 4, 129, 4, 2,	1, 0, 0),
(511, 4, 132, 4, 2,	2, 0, 0),
(512, 4, 117, 4, 2,	3, 0, 0),
(513, 4, 119, 4, 2,	4, 0, 0),
(514, 4, 123, 4, 2,	5, 0, 0),
(515, 4, 126, 4, 3,	1, 0, 0),
(516, 4, 127, 4, 3,	2, 0, 0),
(517, 4, 141, 4, 3,	3, 0, 0),
(518, 4, 137, 4, 3,	4, 0, 0),
(519, 4, 120, 4, 3,	5, 0, 0),
(520, 4, 118, 4, 4,	1, 0, 0),
(521, 4, 136, 4, 4,	2, 0, 0),
(522, 4, 125, 4, 4,	3, 0, 0),
(523, 4, 117, 4, 4,	4, 0, 0),
(524, 4, 122, 4, 4,	5, 0, 0),
(525, 4, 131, 5, 1,	1, 0, 0),
(526, 4, 130, 5, 1,	2, 0, 0),
(527, 4, 123, 5, 1,	3, 0, 0),
(528, 4, 121, 5, 1,	4, 0, 0),
(529, 4, 136, 5, 1,	5, 0, 0),
(530, 4, 135, 5, 1,	6, 0, 0),
(531, 4, 128, 5, 2,	1, 0, 0),
(532, 4, 123, 5, 2,	2, 0, 0),
(533, 4, 137, 5, 2,	3, 0, 0),
(534, 4, 131, 5, 2,	4, 0, 0),
(535, 4, 119, 5, 2,	5, 0, 0),
(536, 4, 120, 5, 2,	6, 0, 0),
(537, 4, 133, 5, 3,	1, 0, 0),
(538, 4, 122, 5, 3,	2, 0, 0),
(539, 4, 141, 5, 3,	3, 0, 0),
(540, 4, 117, 5, 3,	4, 0, 0),
(541, 4, 138, 5, 3,	5, 0, 0),
(542, 4, 124, 5, 3,	6, 0, 0),
(543, 4, 125, 5, 4,	1, 0, 0),
(544, 4, 124, 5, 4,	2, 0, 0),
(545, 4, 128, 5, 4,	3, 0, 0),
(546, 4, 121, 5, 4,	4, 0, 0),
(547, 4, 118, 5, 4,	5, 0, 0),
(548, 4, 135, 5, 4,	6, 0, 0),
(549, 4, 132, 6, 1,	1, 0, 0),
(550, 4, 119, 6, 1,	2, 0, 0),
(551, 4, 122, 6, 1,	3, 0, 0),
(552, 4, 120, 6, 1,	4, 0, 0),
(553, 4, 128, 6, 1,	5, 0, 0),
(554, 4, 123, 6, 1,	6, 0, 0),
(555, 4, 117, 6, 1,	7, 0, 0),
(556, 4, 138, 6, 2,	1, 0, 0),
(557, 4, 127, 6, 2,	2, 0, 0),
(558, 4, 131, 6, 2,	3, 0, 0),
(559, 4, 118, 6, 2,	4, 0, 0),
(560, 4, 123, 6, 2,	5, 0, 0),
(561, 4, 132, 6, 2,	6, 0, 0),
(562, 4, 135, 6, 2,	7, 0, 0),
(563, 4, 121, 6, 3,	1, 0, 0),
(564, 4, 136, 6, 3,	2, 0, 0),
(565, 4, 124, 6, 3,	3, 0, 0),
(566, 4, 127, 6, 3,	4, 0, 0),
(567, 4, 130, 6, 3,	5, 0, 0),
(568, 4, 135, 6, 3,	6, 0, 0),
(569, 4, 133, 6, 3,	7, 0, 0),
(570, 4, 129, 6, 4,	1, 0, 0),
(571, 4, 134, 6, 4,	2, 0, 0),
(572, 4, 121, 6, 4,	3, 0, 0),
(573, 4, 118, 6, 4,	4, 0, 0),
(574, 4, 137, 6, 4,	5, 0, 0),
(575, 4, 131, 6, 4,	6, 0, 0),
(576, 4, 141, 6, 4,	7, 0, 0),
(577, 4, 132, 7, 1,	1, 0, 0),
(578, 4, 136, 7, 1,	2, 0, 0),
(579, 4, 121, 7, 1,	3, 0, 0),
(580, 4, 138, 7, 1,	4, 0, 0),
(581, 4, 130, 7, 1,	5, 0, 0),
(582, 4, 120, 7, 1,	6, 0, 0),
(583, 4, 135, 7, 1,	7, 0, 0),
(584, 4, 117, 7, 1,	8, 0, 0),
(585, 4, 129, 7, 2,	1, 0, 0),
(586, 4, 133, 7, 2,	2, 0, 0),
(587, 4, 132, 7, 2,	3, 0, 0),
(588, 4, 117, 7, 2,	4, 0, 0),
(589, 4, 125, 7, 2,	5, 0, 0),
(590, 4, 124, 7, 2,	6, 0, 0),
(591, 4, 134, 7, 2,	7, 0, 0),
(592, 4, 121, 7, 2,	8, 0, 0),
(593, 4, 126, 7, 3,	1, 0, 0),
(594, 4, 127, 7, 3,	2, 0, 0),
(595, 4, 135, 7, 3,	3, 0, 0),
(596, 4, 121, 7, 3,	4, 0, 0),
(597, 4, 118, 7, 3,	5, 0, 0),
(598, 4, 141, 7, 3,	6, 0, 0),
(599, 4, 137, 7, 3,	7, 0, 0),
(600, 4, 120, 7, 3,	8, 0, 0),
(601, 4, 129, 7, 4,	1, 0, 0),
(602, 4, 132, 7, 4,	2, 0, 0),
(603, 4, 126, 7, 4,	3, 0, 0),
(604, 4, 124, 7, 4,	4, 0, 0),
(605, 4, 117, 7, 4,	5, 0, 0),
(606, 4, 119, 7, 4,	6, 0, 0),
(607, 4, 123, 7, 4,	7, 0, 0),
(608, 4, 127, 7, 4,	8, 0, 0),
(609, 4, 135, 8, 1,	1, 0, 0),
(610, 4, 130, 8, 1,	2, 0, 0),
(611, 4, 138, 8, 1,	3, 0, 0),
(612, 4, 117, 8, 1,	4, 0, 0),
(613, 4, 134, 8, 1,	5, 0, 0),
(614, 4, 125, 8, 1,	6, 0, 0),
(615, 4, 126, 8, 1,	7, 0, 0),
(616, 4, 132, 8, 1,	8, 0, 0),
(617, 4, 121, 8, 1,	9, 0, 0),
(618, 4, 129, 8, 2,	1, 0, 0),
(619, 4, 132, 8, 2,	2, 0, 0),
(620, 4, 117, 8, 2,	3, 0, 0),
(621, 4, 122, 8, 2,	4, 0, 0),
(622, 4, 120, 8, 2,	5, 0, 0),
(623, 4, 119, 8, 2,	6, 0, 0),
(624, 4, 123, 8, 2,	7, 0, 0),
(625, 4, 117, 8, 2,	8, 0, 0),
(626, 4, 133, 8, 2,	9, 0, 0),
(627, 4, 126, 8, 3,	1, 0, 0),
(628, 4, 128, 8, 3,	2, 0, 0),
(629, 4, 124, 8, 3,	3, 0, 0),
(630, 4, 127, 8, 3,	4, 0, 0),
(631, 4, 141, 8, 3,	5, 0, 0),
(632, 4, 137, 8, 3,	6, 0, 0),
(633, 4, 129, 8, 3,	7, 0, 0),
(634, 4, 136, 8, 3,	8, 0, 0),
(635, 4, 120, 8, 3,	9, 0, 0),
(636, 4, 138, 8, 4,	1, 0, 0),
(637, 4, 118, 8, 4,	2, 0, 0),
(638, 4, 133, 8, 4,	3, 0, 0),
(639, 4, 136, 8, 4,	4, 0, 0),
(640, 4, 122, 8, 4,	5, 0, 0),
(641, 4, 125, 8, 4,	6, 0, 0),
(642, 4, 117, 8, 4,	7, 0, 0),
(643, 4, 119, 8, 4,	8, 0, 0),
(644, 4, 130, 8, 4,	9, 0, 0);

-- Activity 4, Demo Application Data
INSERT INTO `application` (`id`, `activity_id`, `app_obj_id`, `activity_level`, `level_round`, `round_order`, `is_image`, `is_example`) VALUES
(645, 4, 119, 1, 1,	1, 0, 1),
(646, 4, 130, 1, 1,	2, 0, 1);

-- Activity 5, Demo Application Data
INSERT INTO `application` (`id`, `activity_id`, `app_obj_id`, `activity_level`, `level_round`, `round_order`, `is_image`, `is_example`) VALUES
(647, 5, 100, 1, 1,	1, 1, 1),
(648, 5, 132 , 1, 1,	2, 0, 1);

-- Activity 5, Application Data
INSERT INTO `application` (`id`, `activity_id`, `app_obj_id`, `activity_level`, `level_round`, `round_order`, `is_image`, `is_example`) VALUES
(649, 5, 21 , 1, 1,	1, 1, 0),
(650, 5, 119, 1, 1,	2, 0, 0),
(651, 5, 20 , 1, 2,	1, 1, 0),
(652, 5, 117, 1, 2,	2, 0, 0),
(653, 5, 105, 2, 1,	1, 1, 0),
(654, 5, 128, 2, 1,	2, 0, 0),
(655, 5, 12 , 2, 1,	3, 1, 0),
(656, 5, 6  , 2, 2,	1, 1, 0),
(657, 5, 138, 2, 2,	2, 0, 0),
(658, 5, 9  , 2, 2,	3, 1, 0),
(659, 5, 4  , 3, 1,	1, 1, 0),
(660, 5, 123, 3, 1,	2, 0, 0),
(661, 5, 12 , 3, 1,	3, 1, 0),
(662, 5, 117, 3, 1,	4, 0, 0),
(663, 5, 20 , 3, 2,	1, 1, 0),
(664, 5, 124, 3, 2,	2, 0, 0),
(665, 5, 21 , 3, 2,	3, 1, 0),
(666, 5, 125, 3, 2,	4, 0, 0),
(667, 5, 12 , 4, 1,	1, 1, 0),
(668, 5, 129, 4, 1,	2, 0, 0),
(669, 5, 105, 4, 1,	3, 1, 0),
(670, 5, 134, 4, 1,	4, 0, 0),
(671, 5, 9  , 4, 1,	5, 1, 0),
(672, 5, 16 , 4, 2,	1, 1, 0),
(673, 5, 124, 4, 2,	2, 0, 0),
(674, 5, 19 , 4, 2,	3, 1, 0),
(675, 5, 136, 4, 2,	4, 0, 0),
(676, 5, 17 , 4, 2,	5, 1, 0),
(677, 5, 8  , 5, 1,	1, 1, 0),
(678, 5, 135, 5, 1,	2, 0, 0),
(679, 5, 111, 5, 1,	3, 1, 0),
(680, 5, 119, 5, 1,	4, 0, 0),
(681, 5, 105, 5, 1,	5, 1, 0),
(682, 5, 141, 5, 1,	6, 0, 0),
(683, 5, 4  , 5, 2,	1, 1, 0),
(684, 5, 120, 5, 2,	2, 0, 0),
(685, 5, 13 , 5, 2,	3, 1, 0),
(686, 5, 131, 5, 2,	4, 0, 0),
(687, 5, 12 , 5, 2,	5, 1, 0),
(688, 5, 132, 5, 2,	6, 0, 0),
(689, 5, 18 , 6, 1,	1, 1, 0),
(690, 5, 117, 6, 1,	2, 0, 0),
(691, 5, 6  , 6, 1,	3, 1, 0),
(692, 5, 128, 6, 1,	4, 0, 0),
(693, 5, 9  , 6, 1,	5, 1, 0),
(694, 5, 127, 6, 1,	6, 0, 0),
(695, 5, 16 , 6, 1,	7, 1, 0),
(696, 5, 111, 6, 2,	1, 1, 0),
(697, 5, 118, 6, 2,	2, 0, 0),
(698, 5, 13 , 6, 2,	3, 1, 0),
(699, 5, 130, 6, 2,	4, 0, 0),
(700, 5, 105, 6, 2,	5, 1, 0),
(701, 5, 126, 6, 2,	6, 0, 0),
(702, 5, 17 , 6, 2,	7, 1, 0),
(703, 5, 11 , 7, 1,	1, 1, 0),
(704, 5, 129, 7, 1,	2, 0, 0),
(705, 5, 4  , 7, 1,	3, 1, 0),
(706, 5, 123, 7, 1,	4, 0, 0),
(707, 5, 20 , 7, 1,	5, 1, 0),
(708, 5, 122, 7, 1,	6, 0, 0),
(709, 5, 111, 7, 1,	7, 1, 0),
(710, 5, 136, 7, 1,	8, 0, 0),
(711, 5, 109, 7, 2,	1, 1, 0),
(712, 5, 121, 7, 2,	2, 0, 0),
(713, 5, 111, 7, 2,	3, 1, 0),
(714, 5, 117, 7, 2,	4, 0, 0),
(715, 5, 19 , 7, 2,	5, 1, 0),
(716, 5, 124, 7, 2,	6, 0, 0),
(717, 5, 7  , 7, 2,	7, 1, 0),
(718, 5, 132, 7, 2,	8, 0, 0),
(719, 5, 111, 8, 1,	1, 1, 0),
(720, 5, 134, 8, 1,	2, 0, 0),
(721, 5, 11 , 8, 1,	3, 1, 0),
(722, 5, 141, 8, 1,	4, 0, 0),
(723, 5, 13 , 8, 1,	5, 1, 0),
(724, 5, 123, 8, 1,	6, 0, 0),
(725, 5, 8  , 8, 1,	7, 1, 0),
(726, 5, 135, 8, 1,	8, 0, 0),
(727, 5, 12 , 8, 1,	9, 1, 0),
(728, 5, 7  , 8, 2,	1, 1, 0),
(729, 5, 122, 8, 2,	2, 0, 0),
(730, 5, 109, 8, 2,	3, 1, 0),
(731, 5, 131, 8, 2,	4, 0, 0),
(732, 5, 4  , 8, 2,	5, 1, 0),
(733, 5, 127, 8, 2,	6, 0, 0),
(734, 5, 6  , 8, 2,	7, 1, 0),
(735, 5, 120, 8, 2,	8, 0, 0),
(736, 5, 21 , 8, 2,	9, 1, 0);

