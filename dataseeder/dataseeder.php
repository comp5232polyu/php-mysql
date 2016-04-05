<?php
include('../db.php');
include('../vars.php');

global $mysqli;

// sql to create table
$sql = "DROP TABLE STOCK";
$result = $mysqli->query($sql);

$sql = "CREATE TABLE STOCK (ID BIGINT NOT NULL, DESCRIPTION VARCHAR(4000), IMGSRC VARCHAR(255), IMGSRC_D1 VARCHAR(255), IMGSRC_D2 VARCHAR(255), PRICE INTEGER, QUAN INTEGER, TITLE VARCHAR(255), PRIMARY KEY (ID))";

$result = $mysqli->query($sql);

if ($result) {
    echo "Table STOCK created successfully. ";
} else {
    echo "Error creating table! ";
}

// Populate the table
$prints = array(
    array(1, 'Size : (H)230mm X (W)420mm X (L)240mm<br><br>Number of bricks : 2523<br><br>',
     '01_h.jpg', '01_d1.jpg', '01_d2.jpg', 1800, 5, 'LEGO 71006 The Simpsons House'),

	 
    array(2, "Size : 150mm X 70mm X 50mm<br><br>Ratio: 1:32<br><br>Specs and Features: <br><br>
- Kit features Item 15087 Azente body. <br><br>
- Super-II chassis is made from ABS material molded in Black. A-parts and EX side stays are molded in Light Gun Metal ABS material. <br><br>
- Comes equipped with Item 15394 FRP Multi Roller Setting Stay, <br><br>
- Item 15430 FRP Rear Multi Roller Setting Stay, <br><br>
- Item 152431 FRP Reinforcing Plate Set. <br><br>
- Comes with large-diameter carbon reinforced wheels and low-profile tires. <br><br>
- 13mm aluminum bearing rollers (Black) and 19mm low friction rollers included. <br><br>
- Mass dampers included. <br><br>
- Features 3.5:1 gear ratio. <br><br>
- Type 130 motor and two AA batteries required (separately available). <br><br>
",
     '03_h.jpg', '03_d1.jpg', '03_d2.jpg', 2000, 0, 'TAMIYA (SUPER II CHASSIS)'),
	 
    array(3, "Size : 400mm X 240mm X 130mm<br><br>Weight :400G<br><br>",
     '05_h.jpg', '05_d1.jpg', '05_d2.jpg', 500, 0, 'Rilakkuma Plush'),
	 
    array(4, "Package<br><br>
Unicorn Gundam PG RX-0<br><br>
LED Unit<br><br>
",
     '06_h.jpg', '06_d1.jpg', '06_d2.jpg', 2100, 10, 'Unicorn Gundam PG RX-0 /w LED Unit'),
	 
	     array(5, "License Marvel<br><br>
Manufacturer: Hot Toys<br><br>
Ratio: 1/6<br><br>
Size : 304.8mm<br><br>
Figure body:<br><br>
- LED-lighted eyes and circle-shaped RT on chest (white light, battery operated)<br><br>
- One (1) pair of interchangeable wrist guards for posing with repulsor palms<br><br>
- One (1) interchangeable forearm rocket armor<br><br>
- Three (3) pairs of interchangeable palms including: <br><br>
- One (1) pair of palms with movable fingers and light-up repulsors (white light, battery operated) <br><br>
- One (1) pair of fists <br><br>
- One (1) pair of battle palms with light-up repulsor (white light, battery operated)<br><br>
- Fully deployed air flaps at back of the armor<br><br>
- Articulation on waist armor which allow flexible movement<br><br>
",
     '08_h.jpg', '08_d1.jpg', '08_d2.jpg', 2100, 0, 'Iron Man Mark XLIII'),
	 
	 	array(6, "Material : PVC, paper<br><br>
Box Size : (H)375mm X (W)225mm X (L)500mm<br><br>
Expanded Size : (H)645mm X (W)210mm X (L)645mm<br><br>
",
     '09_h.jpg', '09_d1.jpg', '09_d2.jpg', 300, 1, 'TOMICA Auto Carpark Tower'),
	 
	 	array(7, "Size : 420mm X 350mm X 120mm<br><br>Specs and Features: <br><br>
- Included 2.7K / 12 Megapixel Camera<br><br>
- Integrated 3-Axis Stabilization Gimbal<br><br>
- Easy to Fly, Intelligent Flight System<br><br>
- Live HD View<br><br>
- Dedicated Remote Controller<br><br>
- Powerful Mobile App w/ Auto Video Editor<br><br>
- Vision Positioning for Indoor Flight<br><br>	
	",
     '04_h.jpg', '04_d1.jpg', '04_d2.jpg', 6999, 1, 'Phantom 3 Advanced'),
	 	
	array(8, "Size : (H)230mm X (W)420mm X (L)240mm<br><br>Ratio: 1/4<br><br>",
     '02_h.jpg', '02_d1.jpg', '02_d2.jpg', 2500, 1, 'VOCALOID3 Miku V3 1/4 Figure'),
	 
	 	array(9, "Size : 320mm X 150mm X 120mm",
     '07_h.jpg', '07_d1.jpg', '07_d2.jpg', 500, 10, 'まんぞくさん (Mr Meet)')
);

foreach ($prints as $print) {
	$desc = str_replace("'","''",$print[1]);
	$rc = $mysqli->query("INSERT INTO stock (id,  description, imgsrc, imgsrc_d1, imgsrc_d2 , price, quan, title) VALUES ( {$print[0]}, '${desc}' , '{$print[2]}', '{$print[3]}','{$print[4]}', {$print[5]}, {$print[6]}, '{$print[7]}' )");
    if ($rc) {
        print "Insert succeded. ";
    }
	else print "Insert failed! ";
}

$mysqli->close();
?>
