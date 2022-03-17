//Olivia Chan
//Ms. Basaraba
//June 13, 2020
//Culminating Assignment - Final Draft
//This program outputs an original animated story with 4 characters. The animation starts with Melba and Dotty, and they are on a quest to find the rare watermelon.
//Along the way, they first meet Hornsby the rhino, but he does not have the watermelon. Instead, they found other fruits that are similar to watermelon along the way. 
//They finally find out that a Japanese raccoon dog has the watermelon. They all get slices of the watermelon and live happily ever after.

//Decleration Section
float animalCount=-230;//This variable is a counter variable 
float walkingX=0;//This variable is used for horizontal movement for Melba and Dotty
float walkingY=0;//This variable is used for vertical movement for Melba and Dotty
float walkRhino=0;//This variable is used for horizontal movement for Hornsby
float leg=0;//This variable is used for the movement of the Melba and Dotty's legs
float legRhino=0;//This variable is used for the movement of the Hornsby's legs
float armMelba=0;//This variable is used for the movement of Melba's arm
float transition=0;//This variable is used for the movement of the transition slides
float introEnd=0;//This variable is used for the movement of the introduction and end slides
float pearMove=0;//This variable is used for the movement of the pear
float armRhino=0;//This variable is used for the movement of Hornsby's arm
float armRaccoon=0;//This variable is used for the movement of the Tom Nook's arm
float walkRaccoon=0;//This variable is used for horizontal movement for Tom Nook
float legRaccoon=0;//This variable is used for the movement of Tom Nook's Legs

//Program Setup
void setup() {
  size(800, 500);
  noStroke();
}

void draw() {
  if (animalCount>-220&&animalCount<830) {//First background stays the same before the first transition
    background1();
  }
  if (animalCount>830&&animalCount<2080) {//Changes to second background after first transition
    background2();
  }
  if (animalCount>2040&&animalCount<3080) {//Changes to third background after second transition
    background3();
  }
  bunny();//This outputs the bunny named Dotty
  koala();//This outputs the koala named Melba
  rhino();//This outputs the rhino named Hornsby
  if (animalCount>2040) {
    raccoonDog();//This outputs the Japanese raccoon dog named Tom Nook
  }
  if (animalCount>=-230) {
    introEnd();//This outputs the introduction and ending slide
  }
  if (animalCount>-170&&animalCount<-10) {
    introEnd=introEnd+4;//Variable increases for the introduction slide(downwards movement)
  } else if (animalCount>2280&&animalCount<2500) {
    introEnd=introEnd-5;//Variable decreased for the ending slide(upwards movement)
  }
  transition();//This outputs the transition slides
  dialogue();//This outputs dialogue between the characters
  animalCount=animalCount+1;//Counter value increases by 1 each time
  if ((animalCount>680&&animalCount<780)||(animalCount>1890&&animalCount<1990)) {
    transition=transition-7;//Transition variable decreases for first animated transition slide(upwards movement)
  } else if ((animalCount>830&&animalCount<930)||(animalCount>2040&&animalCount<2140)) {
    transition=transition+7;//Transition variable increases for first animated transition slide(downwards movement)
  }
  if (animalCount>-100&&animalCount<13) {//Contains general movement for walking
    walkingX=walkingX-4;//Bunny and koala walk onto screen to the right
  } else if (animalCount>520&&animalCount<750) {
    walkingX=walkingX-3;//Bunny and koala walk off screen to the right
  } else if (animalCount>760&&animalCount<797) {//Bunny and koala go to new position for background 2 during transition
    walkingX=walkingX+30;
  } else if (animalCount>870&&animalCount<975) {//Bunny and koala walk onto new background to the right
    walkingX=walkingX-3;
  } else if (animalCount>1080&&animalCount<1110) {//Animals move up and to the right, closer to the apple tree
    walkingX=walkingX-3;
    walkingY=walkingY-2;
  } else if (animalCount>1230&&animalCount<1280) {//Rhino moves from right of the screen towards the middle
    walkRhino=walkRhino-3;
  } else if (animalCount>1500&&animalCount<1560) {//Rhino goes to the right of the screen to retrieve a fruit
    walkRhino=walkRhino+3;
  } else if (animalCount>1560&&animalCount<1630) {//Rhino retrieves fruit and returns to the screen with a pear
    walkRhino=walkRhino-3;
    pearMove=pearMove-3;
  } else if (animalCount>1770&&animalCount<2000) {//Rhino, bunny, and koala off screen to the right
    walkingX=walkingX-4;
    walkRhino=walkRhino+4;
  } else if (animalCount>2010&&animalCount<2047) {//Rhino, bunny, and koala return to next position in the new background
    walkingX=walkingX+30;
    walkRhino=walkRhino-41;
  } else if (animalCount>2060&&animalCount<2110) {//Rhino, bunny, and koala walk on screen in background 3 to the right, raccoon dog walks on the screen towards left
    walkingX=walkingX-3;
    walkRhino=walkRhino+3;
    walkRaccoon=walkRaccoon-2;
  } else if (animalCount>2260&&animalCount<2272) {//Raccoon dog walks left to reach watermelon
    walkRaccoon=walkRaccoon-4;
  }
}

void background1() {
  noFill();
  noStroke();
  strokeWeight(2);
  background(#A3DDED);

  //This outputs the hills
  for (int hill1=0; hill1<100; hill1++) {//This loop outputs first hill
    stroke(#2C8952);
    arc(100, 160, 108+hill1, hill1, radians(270), radians(360));//This outputs the first hill(from the left)  
    stroke(#2FAF27);
    arc(100, 160, 108+hill1, hill1, radians(180), radians(270));//This outputs the shading of the first hill
  }
  for (int hill5=0; hill5<100; hill5++) {//This loop outputs the fifth hill
    stroke(#317E30);
    arc(800, 160, 130+hill5, 1+hill5, radians(270), radians(360));//This outputs the fifth hill    
    stroke(#439842);
    arc(800, 160, 130+hill5, 1+hill5, radians(180), radians(270));//This outputs the shading of the fifth hill
  }
  for (int hill2=0; hill2<100; hill2++) {//This loop outputs the second hill
    stroke(#29D36E);
    arc(200, 160, 100+hill2/2, 15+hill2/2, radians(270), radians(360));//This outputs the second hill  
    stroke(#69DB68);
    arc(200, 160, 100+hill2/2, 15+hill2/2, radians(180), radians(270));//This outputs the shading of the second hill
  }
  for (int hill4=0; hill4<100; hill4++) {//This loop outputs the fourth hill
    stroke(#29D36E);   
    arc(700, 160, 100+hill4/2, 15+hill4/2, radians(270), radians(360));//This outputs the fourth hill  
    stroke(#69DB68);
    arc(700, 160, 100+hill4/2, 15+hill4/2, radians(180), radians(270));//This outputs the shading of the fourth hill
  }
  for (int hill3=0; hill3<100; hill3++) {//This loop outputs the third hill
    stroke(#3B8E6A);
    arc(610, 170, 15+hill3, 1+hill3, radians(270), radians(360));//This outputs the third hill    
    stroke(#2FAF27);
    arc(610, 170, 15+hill3, 1+hill3, radians(180), radians(270));//This outputs the shading of the third hill
  }

  //This loop outputs the trees in the background
  for (int tree=0; tree<20; tree++) {
    //This outputs the first tree(from the left)
    stroke(#73CE55);
    ellipse(80, 120, tree, tree+10);
    //This outputs the second tree
    stroke(#207947);
    ellipse(280, 120, tree, tree+10);
    //This outputs the third tree
    stroke(#73CE55);
    ellipse(330, 123, tree, tree);
    //This outputs the fourth tree
    stroke(#45AD38);
    ellipse(650, 120, tree, tree+8);
    //This outputs the fifth tree
    stroke(#216C18);
    ellipse(670, 130, tree-3, tree);
    //This outputs the sixth tree
    stroke(#42C431);
    ellipse(780, 126, tree, tree+5);
  }
  for (int treeDetail=0; treeDetail<20; treeDetail++) {//This loop outputs the shading and trunks on the trees
    strokeCap(ROUND);
    strokeWeight(4.1);
    //This outputs the shading of the first tree
    stroke(#90E076);
    ellipse(77, 120, treeDetail/1.5, treeDetail/1.1+10);    
    stroke(#67512F);
    line(80, 120, 80, 150);
    //This outputs the shading of the second tree
    stroke(#388E5E);
    ellipse(278, 120, treeDetail/1.5, treeDetail/1.1+10);    
    stroke(#67512F);
    line(280, 117, 280, 150);
    //This outputs the shading of the third tree
    stroke(#90E076);
    ellipse(327, 123, treeDetail/1.1, treeDetail/1.1);    
    stroke(#67512F);
    line(328, 123, 328, 150);
    //This outputs the shading of the fourth tree
    stroke(#6AD15D);
    ellipse(647, 120, treeDetail/1.5, treeDetail/1.1+8);    
    stroke(#67512F);
    line(650, 119, 650, 150);
    //This outputs the shading of the fifth tree
    stroke(#388E2E);
    ellipse(667, 130, treeDetail/1.7, treeDetail/1.1);    
    stroke(#67512F);
    line(670, 130, 670, 150);
    //This outputs the shading of the sixth tree
    stroke(#6DE35E);
    ellipse(777, 126, treeDetail/1.3, treeDetail/1.2+5);    
    stroke(#67512F);
    line(780, 126, 780, 150);
  }

  //This outputs the clouds
  for (int clouds=0; clouds<50; clouds++) {
    //This outputs the first cloud(from the left)
    strokeWeight(2);
    stroke(#E1E7E8);
    ellipse(170, 60, clouds/1.3, clouds/1.3);
    ellipse(195, 60, clouds/2, clouds/2);
    ellipse(215, 63, clouds/2, clouds/2);
    strokeWeight(20);
    line(170, 70, 236, 70);
    strokeWeight(6);
    stroke(#CCD0D1);
    line(173, 70, 177, 70);
    line(188, 70, 203, 70);
    //This outputs the second cloud
    strokeWeight(2);
    stroke(#E1E7E8);
    ellipse(380, 90, clouds/1.5, clouds/1.5);
    ellipse(405, 90, clouds/2.2, clouds/2.2);
    ellipse(425, 93, clouds/2.2, clouds/2.2);
    strokeWeight(20);
    line(360, 100, 430, 100);
    strokeWeight(6);
    stroke(#CCD0D1);
    line(370, 100, 376, 100);
    line(388, 100, 410, 100);
    //This outputs the third cloud
    strokeWeight(2);
    stroke(#E1E7E8);
    ellipse(700, 30, clouds/1.5, clouds/1.5);
    ellipse(680, 30, clouds/2.2, clouds/2.2);
    ellipse(665, 33, clouds/2.2, clouds/2.2);
    strokeWeight(20);
    line(710, 40, 650, 40);
    strokeWeight(6);
    stroke(#CCD0D1);
    line(668, 40, 684, 40);
    line(694, 40, 704, 40);
  }

  //This loop outputs the stream 
  for (int stream=0; stream<20; stream++) {
    rectMode(CORNERS);
    stroke(#249DD3);
    rect(0, 150+stream, 800, 156+stream);//This outputs the stream next to the hills
    stroke(#4EC160);
    rect(0, 150, 800, 151);//This outputs the grass closest to the hills
  }

  //This loop outputs the grass
  for (int grass=0; grass<350; grass++) {
    stroke(#5ECE86);
    rect(0, 170+grass, 800, 200+grass);
  }

  //This outputs the tree in the foreground
  strokeCap(CORNERS);//This section outputs the trunk
  strokeWeight(19);
  stroke(#A27254);
  line(515, 320, 515, 200);
  strokeWeight(13);
  stroke(#895C41);  
  line(500, 320, 500, 200);
  strokeCap(ROUND);
  stroke(#6A4934);
  strokeWeight(10);
  line(508, 240, 508, 250);
  line(512, 270, 512, 278);
  line(508, 300, 508, 310);
  //This section outputs the tree leaves
  for (int circleShading=0; circleShading<50; circleShading++) {//This outputs the shading of the tree leaves
    stroke(#047945);
    ellipse(491, 95, circleShading, circleShading);  
    ellipse(468, 120, circleShading, circleShading);
    ellipse(446, 160, circleShading, circleShading);
    ellipse(468, 190, circleShading, circleShading);
  }
  for (int treeCircles=0; treeCircles<50; treeCircles++) {//This outputs the tree leaves
    stroke(#069556);
    ellipse(508, 200, treeCircles, treeCircles);
    ellipse(548, 190, treeCircles, treeCircles);
    ellipse(570, 160, treeCircles, treeCircles);
    ellipse(548, 120, treeCircles, treeCircles);
    ellipse(525, 95, treeCircles, treeCircles);
    ellipse(508, 150, treeCircles+20, treeCircles+2);
    ellipse(511, 100, treeCircles, treeCircles);
    ellipse(488, 125, treeCircles, treeCircles);
    ellipse(466, 160, treeCircles, treeCircles);
    ellipse(488, 187, treeCircles, treeCircles);
  }
  //This outputs the apples on the tree in the foreground
  for (int apple=0; apple<20; apple++) {//This outputs the shading of the apples
    stroke(#DB3B33);
    ellipse(440, 190, apple, apple);
    ellipse(480, 100, apple, apple);
    ellipse(500, 160, apple, apple);
    ellipse(540, 130, apple, apple);
    ellipse(570, 190, apple, apple);
    ellipse(567, 310, apple, apple);
  }
  for (int apple=0; apple<19; apple++) {//This outputs the apples
    stroke(#F0453C);
    ellipse(445, 190, apple, apple);
    ellipse(485, 100, apple, apple);
    ellipse(505, 160, apple, apple);
    ellipse(545, 130, apple, apple);
    ellipse(575, 190, apple, apple);
    ellipse(572, 310, apple, apple);
  }
  //This outputs the stems of the apples
  stroke(#265220);
  strokeWeight(7);
  line(443, 174, 443, 180);
  line(483, 84, 483, 90);
  line(503, 144, 503, 150);
  line(543, 114, 543, 120);
  line(573, 174, 573, 180);
  line(570, 294, 570, 300);
}

void background2() {
  noFill();
  noStroke();
  strokeWeight(2);
  background(#81BAFF);

  //This outputs the hills
  for (int hill1=0; hill1<100; hill1++) {//This loop outputs first hill
    stroke(#464133);
    arc(70, 160, 108+hill1, hill1, radians(270), radians(360));//This outputs the first hill(from the left)  
    stroke(#6C6755);
    arc(70, 160, 108+hill1, hill1, radians(180), radians(270));//This outputs the shading of the first hill
  }
  for (int hill5=0; hill5<100; hill5++) {//This loop outputs the fifth hill
    stroke(#317E30);
    arc(780, 160, 130+hill5, 1+hill5, radians(270), radians(360));//This outputs the fifth hill    
    stroke(#28A52D);
    arc(780, 160, 130+hill5, 1+hill5, radians(180), radians(270));//This outputs the shading of the fifth hill
  }
  for (int hill2=0; hill2<100; hill2++) {//This loop outputs the second hill
    stroke(#778977);
    arc(160, 160, 100+hill2/2, 15+hill2/2, radians(270), radians(360));//This outputs the second hill  
    stroke(#497E4B);
    arc(160, 160, 100+hill2/2, 15+hill2/2, radians(180), radians(270));//This outputs the shading of the second hill
  }
  for (int hill4=0; hill4<100; hill4++) {//This loop outputs the fourth hill
    stroke(#464133);   
    arc(620, 160, 100+hill4/2, 15+hill4/2, radians(270), radians(360));//This outputs the fourth hill  
    stroke(#6C6755);
    arc(620, 160, 100+hill4/2, 15+hill4/2, radians(180), radians(270));//This outputs the shading of the fourth hill
  }
  for (int hill3=0; hill3<100; hill3++) {//This loop outputs the third hill
    stroke(#4A7C3C);
    arc(520, 170, 15+hill3, 1+hill3, radians(270), radians(360));//This outputs the third hill    
    stroke(#2F6C1E);
    arc(520, 170, 15+hill3, 1+hill3, radians(180), radians(270));//This outputs the shading of the third hill
  }

  //This loop outputs the trees in the background
  for (int tree=0; tree<20; tree++) {
    //This outputs the first tree(from the left)
    stroke(#73CE55);
    ellipse(60, 120, tree, tree+10);
    //This outputs the second tree
    stroke(#207947);
    ellipse(280, 120, tree, tree+10);
    //This outputs the third tree
    stroke(#73CE55);
    ellipse(330, 123, tree, tree);
    //This outputs the fourth tree
    stroke(#45AD38);
    ellipse(650, 120, tree, tree+8);
    //This outputs the fifth tree
    stroke(#216C18);
    ellipse(670, 130, tree-3, tree);
    //This outputs the sixth tree
    stroke(#42C431);
    ellipse(780, 126, tree, tree+5);
  }
  for (int treeDetail=0; treeDetail<20; treeDetail++) {//This loop outputs the shading and trunks on the trees
    strokeCap(ROUND);
    strokeWeight(4.1);
    //This outputs the shading of the first tree
    stroke(#90E076);
    ellipse(57, 120, treeDetail/1.5, treeDetail/1.1+10);    
    stroke(#67512F);
    line(60, 120, 60, 150);
    //This outputs the shading of the second tree
    stroke(#388E5E);
    ellipse(278, 120, treeDetail/1.5, treeDetail/1.1+10);    
    stroke(#67512F);
    line(280, 117, 280, 150);
    //This outputs the shading of the third tree
    stroke(#90E076);
    ellipse(327, 123, treeDetail/1.1, treeDetail/1.1);    
    stroke(#67512F);
    line(328, 123, 328, 150);
    //This outputs the shading of the fourth tree
    stroke(#6AD15D);
    ellipse(647, 120, treeDetail/1.5, treeDetail/1.1+8);    
    stroke(#67512F);
    line(650, 119, 650, 150);
    //This outputs the shading of the fifth tree
    stroke(#388E2E);
    ellipse(667, 130, treeDetail/1.7, treeDetail/1.1);    
    stroke(#67512F);
    line(670, 130, 670, 150);
    //This outputs the shading of the sixth tree
    stroke(#6DE35E);
    ellipse(777, 126, treeDetail/1.3, treeDetail/1.2+5);    
    stroke(#67512F);
    line(780, 126, 780, 150);
  }

  //This outputs the clouds
  for (int clouds=0; clouds<50; clouds++) {
    //This outputs the first cloud(from the left)
    pushMatrix();
    translate(-80, 0);
    strokeWeight(2);
    stroke(#E1E7E8);
    ellipse(170, 60, clouds/1.3, clouds/1.3);
    ellipse(195, 60, clouds/2, clouds/2);
    ellipse(215, 63, clouds/2, clouds/2);
    strokeWeight(20);
    line(170, 70, 236, 70);
    strokeWeight(6);
    stroke(#CCD0D1);
    line(173, 70, 177, 70);
    line(188, 70, 203, 70);
    popMatrix();
    //This outputs the second cloud
    pushMatrix();
    translate(80, -10);
    strokeWeight(2);
    stroke(#E1E7E8);
    ellipse(380, 90, clouds/1.5, clouds/1.5);
    ellipse(405, 90, clouds/2.2, clouds/2.2);
    ellipse(425, 93, clouds/2.2, clouds/2.2);
    strokeWeight(20);
    line(360, 100, 430, 100);
    strokeWeight(6);
    stroke(#CCD0D1);
    line(370, 100, 376, 100);
    line(388, 100, 410, 100);
    popMatrix();
    //This outputs the third cloud
    strokeWeight(2);
    stroke(#E1E7E8);
    ellipse(700, 30, clouds/1.5, clouds/1.5);
    ellipse(680, 30, clouds/2.2, clouds/2.2);
    ellipse(665, 33, clouds/2.2, clouds/2.2);
    strokeWeight(20);
    line(710, 40, 650, 40);
    strokeWeight(6);
    stroke(#CCD0D1);
    line(668, 40, 684, 40);
    line(694, 40, 704, 40);
  }

  //This loop outputs the stream 
  for (int stream=0; stream<20; stream++) {
    rectMode(CORNERS);
    stroke(#249DD3);
    rect(0, 150+stream, 800, 156+stream);//This outputs the stream next to the hills
    stroke(#70BC81);
    rect(0, 150, 800, 151);//This outputs the grass closest to the hills
  }

  //This loop outputs the grass
  for (int grass=0; grass<350; grass++) {
    stroke(#70BC81);
    rect(0, 170+grass, 800, 200+grass);
  }
  pushMatrix();
  translate(-220, -50);
  //This outputs the tree in the foreground
  strokeCap(CORNERS);//This section outputs the trunk
  strokeWeight(19);
  stroke(#A27254);
  line(515, 320, 515, 200);
  strokeWeight(13);
  stroke(#895C41);  
  line(500, 320, 500, 200);
  strokeCap(ROUND);
  stroke(#6A4934);
  strokeWeight(10);
  line(508, 240, 508, 250);
  line(512, 270, 512, 278);
  line(508, 300, 508, 310);
  //This section outputs the tree leaves
  for (int circleShading=0; circleShading<50; circleShading++) {//This outputs the shading of the tree leaves
    stroke(#047945);
    ellipse(491, 95, circleShading, circleShading);  
    ellipse(468, 120, circleShading, circleShading);
    ellipse(446, 160, circleShading, circleShading);
    ellipse(468, 190, circleShading, circleShading);
  }
  for (int treeCircles=0; treeCircles<50; treeCircles++) {//This outputs the tree leaves
    stroke(#069556);
    ellipse(508, 200, treeCircles, treeCircles);
    ellipse(548, 190, treeCircles, treeCircles);
    ellipse(570, 160, treeCircles, treeCircles);
    ellipse(548, 120, treeCircles, treeCircles);
    ellipse(525, 95, treeCircles, treeCircles);
    ellipse(508, 150, treeCircles+20, treeCircles+2);
    ellipse(511, 100, treeCircles, treeCircles);
    ellipse(488, 125, treeCircles, treeCircles);
    ellipse(466, 160, treeCircles, treeCircles);
    ellipse(488, 187, treeCircles, treeCircles);
  }
  //This outputs the apples on the tree in the foreground
  for (int appleShading=0; appleShading<20; appleShading++) {//This outputs the shading of the apples
    stroke(#36CE1F);
    ellipse(440, 190, appleShading, appleShading);
    ellipse(480, 100, appleShading, appleShading);
    ellipse(500, 160, appleShading, appleShading);
    ellipse(540, 130, appleShading, appleShading);
    ellipse(570, 190, appleShading, appleShading);
    pushMatrix();
    translate(0, -armMelba);
    ellipse(567, 310, appleShading, appleShading);//This outputs the shading of the animated apple
    popMatrix();
  }
  for (int apple=0; apple<19; apple++) {//This outputs the apples
    stroke(#6CD85C);
    ellipse(445, 190, apple, apple);
    ellipse(485, 100, apple, apple);
    ellipse(505, 160, apple, apple);
    ellipse(545, 130, apple, apple);
    ellipse(575, 190, apple, apple);
    pushMatrix();
    translate(0, -armMelba);
    ellipse(572, 310, apple, apple);//This outputs the animated apple
    popMatrix();
  }
  //This outputs the stems of the apples
  stroke(#624B3C);
  strokeWeight(7);
  line(443, 174, 443, 180);
  line(483, 84, 483, 90);
  line(503, 144, 503, 150);
  line(543, 114, 543, 120);
  line(573, 174, 573, 180);
  pushMatrix();
  translate(0, -armMelba);
  line(570, 294, 570, 300);//This outputs the stem of the animated apple
  popMatrix();
  popMatrix();

  //This outputs the right bush
  pushMatrix();
  translate(80, -10);
  for (int bushShading=0; bushShading<30; bushShading++) {//This outputs the bush shading
    stroke(#248333);
    ellipse(508, 200, bushShading+10, bushShading);
    ellipse(480, 215, bushShading, bushShading);
    ellipse(465, 240, bushShading, bushShading);
    ellipse(465, 240, bushShading, bushShading);
  }
  for (int bush=0; bush<30; bush++) {//This outputs the bush
    stroke(#1EAD34);
    ellipse(493, 220, bush, bush);
    ellipse(478, 240, bush, bush);
    ellipse(514, 203, bush, bush);
    ellipse(535, 215, bush, bush);
  }
  strokeWeight(40);
  stroke(#1EAD34);
  line(488, 240, 545, 240);
  //This outputs details on the bush
  stroke(#248333);
  strokeWeight(8);
  arc(520, 245, 10, 9, radians(180), radians(360));
  arc(530, 215, 12, 11, radians(180), radians(360));
  arc(490, 225, 11, 10, radians(180), radians(360));
  popMatrix();
  //This outputs the left bush  
  for (int bushShading=0; bushShading<40; bushShading++) {//This outputs the bush shading
    stroke(#63B21B);
    ellipse(508, 200, bushShading+10, bushShading);
    ellipse(480, 215, bushShading, bushShading);
    ellipse(465, 240, bushShading, bushShading);
    ellipse(465, 240, bushShading, bushShading);
  }
  for (int bush=0; bush<40; bush++) {//This outputs the bush
    stroke(#8DDE43);
    ellipse(493, 220, bush, bush);
    ellipse(478, 240, bush, bush);
    ellipse(514, 203, bush, bush);
    ellipse(535, 215, bush, bush);
  }
  strokeWeight(48);
  stroke(#8DDE43);
  line(488, 240, 550, 240);
  //This outputs details on the bush
  stroke(#79C433);
  strokeWeight(8);
  arc(520, 250, 13, 12, radians(180), radians(360));
  arc(540, 220, 14, 13, radians(180), radians(360));
  arc(486, 230, 12, 11, radians(180), radians(360));
  arc(506, 205, 12, 11, radians(180), radians(360));
}

void background3() {
  noFill();
  noStroke();
  strokeWeight(2);
  background(#E8581E);

  //This outputs the hills
  for (int hill1=0; hill1<100; hill1++) {//This loop outputs first hill
    stroke(#464133);
    arc(70, 160, 108+hill1, hill1, radians(270), radians(360));//This outputs the first hill(from the left)  
    stroke(#6C6755);
    arc(70, 160, 108+hill1, hill1, radians(180), radians(270));//This outputs the shading of the first hill
  }
  for (int hill2=0; hill2<100; hill2++) {//This loop outputs the second hill
    stroke(#778977);
    arc(160, 160, 100+hill2/2, 15+hill2/2, radians(270), radians(360));//This outputs the second hill  
    stroke(#497E4B);
    arc(160, 160, 100+hill2/2, 15+hill2/2, radians(180), radians(270));//This outputs the shading of the second hill
  }
  for (int hill3=0; hill3<100; hill3++) {//This loop outputs the third hill
    stroke(#4A7C3C);
    arc(520, 170, 15+hill3, 1+hill3, radians(270), radians(360));//This outputs the third hill    
    stroke(#2F6C1E);
    arc(520, 170, 15+hill3, 1+hill3, radians(180), radians(270));//This outputs the shading of the third hill
  }
  //This outputs the sun
  for (int sun=0; sun<100; sun++) {
    stroke(#F0DF27);
    ellipse(400, 170, sun, sun);
  }

  //This loop outputs the trees in the background
  for (int tree=0; tree<20; tree++) {
    //This outputs the first tree(from the left)
    stroke(#73CE55);
    ellipse(60, 120, tree, tree+10);
    //This outputs the second tree
    stroke(#207947);
    ellipse(280, 120, tree, tree+10);
    //This outputs the third tree
    stroke(#73CE55);
    ellipse(330, 123, tree, tree);
  }
  for (int treeDetail=0; treeDetail<20; treeDetail++) {//This loop outputs the shading and trunks on the trees
    strokeCap(ROUND);
    strokeWeight(4.1);
    //This outputs the shading of the first tree
    stroke(#90E076);
    ellipse(57, 120, treeDetail/1.5, treeDetail/1.1+10);    
    stroke(#67512F);
    line(60, 120, 60, 150);
    //This outputs the shading of the second tree
    stroke(#388E5E);
    ellipse(278, 120, treeDetail/1.5, treeDetail/1.1+10);    
    stroke(#67512F);
    line(280, 117, 280, 150);
    //This outputs the shading of the third tree
    stroke(#90E076);
    ellipse(327, 123, treeDetail/1.1, treeDetail/1.1);    
    stroke(#67512F);
    line(328, 123, 328, 150);
  }

  //This outputs the clouds
  for (int clouds=0; clouds<50; clouds++) {
    //This outputs the first cloud(from the left)
    pushMatrix();
    translate(-90, 0);
    strokeWeight(2);
    stroke(#E1E7E8);
    ellipse(170, 60, clouds/1.3, clouds/1.3);
    ellipse(195, 60, clouds/2, clouds/2);
    ellipse(215, 63, clouds/2, clouds/2);
    strokeWeight(20);
    line(170, 70, 236, 70);
    strokeWeight(6);
    stroke(#CCD0D1);
    line(173, 70, 177, 70);
    line(188, 70, 203, 70);
    popMatrix();
    //This outputs the second cloud
    pushMatrix();
    translate(-50, -10);
    strokeWeight(2);
    stroke(#E1E7E8);
    ellipse(380, 90, clouds/1.5, clouds/1.5);
    ellipse(405, 90, clouds/2.2, clouds/2.2);
    ellipse(425, 93, clouds/2.2, clouds/2.2);
    strokeWeight(20);
    line(360, 100, 430, 100);
    strokeWeight(6);
    stroke(#CCD0D1);
    line(370, 100, 376, 100);
    line(388, 100, 410, 100);
    //This outputs the third cloud
    translate(-80, 20);
    strokeWeight(2);
    stroke(#E1E7E8);
    ellipse(700, 30, clouds/1.5, clouds/1.5);
    ellipse(680, 30, clouds/2.2, clouds/2.2);
    ellipse(665, 33, clouds/2.2, clouds/2.2);
    strokeWeight(20);
    line(710, 40, 650, 40);
    strokeWeight(6);
    stroke(#CCD0D1);
    line(668, 40, 684, 40);
    line(694, 40, 704, 40);
    popMatrix();
  }

  //This loop outputs the stream 
  for (int stream=0; stream<20; stream++) {
    rectMode(CORNERS);
    stroke(#249DD3);
    rect(0, 150+stream, 800, 156+stream);//This outputs the stream next to the hills
    stroke(#66CE4F);
    rect(0, 150, 800, 151);//This outputs the grass closest to the hills
  }

  //This loop outputs the grass
  for (int grass=0; grass<350; grass++) {
    stroke(#66CE4F);
    rect(0, 170+grass, 800, 200+grass);
  }

  //This outputs the right bush
  pushMatrix();
  translate(-300, -60);
  for (int bushShading=0; bushShading<30; bushShading++) {//This outputs the bush shading
    stroke(#248333);
    ellipse(508, 200, bushShading+10, bushShading);
    ellipse(480, 215, bushShading, bushShading);
    ellipse(465, 240, bushShading, bushShading);
    ellipse(465, 240, bushShading, bushShading);
  }
  for (int bush=0; bush<30; bush++) {
    stroke(#1EAD34);
    ellipse(493, 220, bush, bush);
    ellipse(478, 240, bush, bush);
    ellipse(514, 203, bush, bush);
    ellipse(535, 215, bush, bush);
  }
  strokeWeight(40);
  stroke(#1EAD34);
  line(488, 240, 545, 240);
  //This outputs details on the bush
  stroke(#248333);
  strokeWeight(8);
  arc(520, 245, 10, 9, radians(180), radians(360));
  arc(530, 215, 12, 11, radians(180), radians(360));
  arc(490, 225, 11, 10, radians(180), radians(360));
  popMatrix();
  //This outputs the left bush  
  pushMatrix();
  translate(-390, -50);
  for (int bushShading=0; bushShading<40; bushShading++) {//This outputs the bush shading
    stroke(#32861B);
    ellipse(508, 200, bushShading+10, bushShading);
    ellipse(480, 215, bushShading, bushShading);
    ellipse(465, 240, bushShading, bushShading);
    ellipse(465, 240, bushShading, bushShading);
  }
  for (int bush=0; bush<40; bush++) {//This outputs the bush
    stroke(#5DAF07);
    ellipse(493, 220, bush, bush);
    ellipse(478, 240, bush, bush);
    ellipse(514, 203, bush, bush);
    ellipse(535, 215, bush, bush);
  }
  strokeWeight(48);
  stroke(#5DAF07);
  line(488, 240, 550, 240);
  //This outputs details on the bush
  stroke(#3B9822);
  strokeWeight(8);
  arc(520, 250, 13, 12, radians(180), radians(360));
  arc(540, 220, 14, 13, radians(180), radians(360));
  arc(486, 230, 12, 11, radians(180), radians(360));
  arc(506, 205, 12, 11, radians(180), radians(360));
  popMatrix();

  //This outputs the main base of the house
  pushMatrix();
  translate(340, -100);
  rectMode(CORNER);
  strokeCap(CORNERS);
  strokeWeight(200);
  stroke(#F5E5C1);
  line(197, 300, 600, 300);
  strokeWeight(80);
  triangle(327, 195, 473, 185, 400, 140);
  strokeWeight(15);
  stroke(#E8D6AB);
  line(205, 220, 405, 120);
  strokeCap(CORNERS);
  line(205, 200, 205, 400);
  strokeCap(ROUND);
  strokeWeight(18);
  line(330, 150, 450, 150);
  line(210, 190, 520, 190);
  line(210, 230, 580, 230);
  line(210, 270, 580, 270);
  line(210, 310, 580, 310);
  line(210, 350, 580, 350);
  line(210, 390, 580, 390);
  //This outputs the roof
  stroke(#95AFF2);
  strokeWeight(29);
  line(200, 200, 400, 100);
  line(600, 200, 400, 100);
  //This outputs the windows
  stroke(#3D75FC);
  strokeWeight(23);
  line(303, 257, 303, 323);
  line(262, 257, 262, 323);
  line(502, 257, 502, 323);
  line(542, 257, 542, 323);
  strokeWeight(12);
  stroke(#1E53D6);
  line(293, 257, 293, 323);
  line(252, 257, 252, 323);
  line(492, 257, 492, 323);
  line(532, 257, 532, 323);
  strokeWeight(13);
  noFill();
  stroke(255);
  rect(240, 250, 80, 80);//This outputs the left window
  rect(480, 250, 80, 80);//This outputs the right window
  line(280, 250, 280, 330);
  line(520, 250, 520, 330);
  //This outputs the doorframe
  strokeWeight(13);
  stroke(255);
  rect(365, 250, 80, 143); 
  //This outputs the door
  strokeCap(CORNERS);
  strokeWeight(50);
  stroke(#D89037);
  line(413, 255, 413, 400);
  strokeWeight(20);
  stroke(#B97B2F);
  line(381, 255, 381, 400);
  //This outputs the doorknob
  strokeCap(ROUND);
  stroke(#6C4719);
  strokeWeight(10);
  line(380, 330, 380, 340);
  popMatrix();
}

void bunny() {//Dotty
  pushMatrix();
  translate(-450, 0);
  translate(-walkingX, walkingY);
  //This outputs the tail
  noStroke();
  fill(#F7FCFF);
  ellipse(127, 350, 15, 15);

  //This outputs the arms
  strokeCap(ROUND);
  stroke(#F7FCFF);
  strokeWeight(8);
  line(175, 330, 178, 335);
  stroke(#35393B);
  strokeCap(CORNERS);
  line(140, 300, 120, 330);
  line(160, 310, 175, 330);
  strokeCap(ROUND);

  //This outputs the legs
  strokeWeight(9.5);
  stroke(#F7FCFF);
  line(143, 350, 142, 365);//This outputs the left upper leg
  line(159, 350, 158, 365);//This outputs the right upper leg
  line(142, 365, 140+leg, 377);
  line(158, 365, 157-leg, 377);

  //This outputs the dress
  noStroke();
  fill(#612398);
  quad(135, 280, 165, 280, 175, 355, 125, 355);
  ellipse(150, 355, 47, 10);
  fill(#8E94CB);
  triangle(135, 280, 125, 355, 170, 280);
  triangle(150, 280, 150, 360, 175, 289);

  //This outputs the ears
  stroke(#35393B);//This outputs the left ear
  strokeWeight(18);
  line(133, 250, 130, 190);
  line(128, 250, 121, 195);
  strokeWeight(23);
  line(123, 195, 127, 193);  
  strokeWeight(18);//This outputs the right ear
  line(166, 250, 169, 190);
  line(171, 250, 178, 195);
  strokeWeight(23);
  line(176, 195, 172, 193);
  strokeWeight(13);//This outputs the inside of the ears
  stroke(#249BA7);
  line(130, 250, 126, 200);
  line(168, 250, 174, 200);

  //This outputs the head
  noStroke();
  fill(#F7FCFF);
  arc(149, 280, 99, 85, radians(180), radians(360));
  arc(149, 280, 99, 70, radians(0), radians(180));
  fill(#35393B);
  arc(147, 280, 94, 85, radians(179), radians(270));
  arc(153, 280, 92, 85, radians(270), radians(366));
  noFill();
  strokeWeight(15);
  stroke(#35393B);
  arc(107, 184, 200, 200, radians(70.8), radians(90));
  arc(192, 184, 199, 200, radians(91), radians(108));

  //This outputs the eyes
  fill(#F7FCFF);
  noStroke();
  ellipse(127, 271, 26, 26);
  ellipse(176, 270, 25, 25);
  //This outputs the pupils
  fill(#35393B);
  ellipse(127, 271, 20, 20);
  ellipse(176, 270, 19, 19);

  //This outputs the mouth
  noFill();
  strokeWeight(3);
  stroke(#35393B);
  arc(153, 254, 110, 85, radians(75), radians(103));

  strokeWeight(8);//This outputs the left arm that shows on top of the dress
  stroke(#F7FCFF);
  line(120, 330, 130, 323);

  //This outputs Dotty's mouth moving when speaking
  strokeWeight(3);
  if ((animalCount%3==0&&animalCount>35&&animalCount<65)||(animalCount%3==0&&animalCount>115&&animalCount<140)||(animalCount%3==0&&animalCount>150&&animalCount<175)||(animalCount%3==0&&animalCount>245&&animalCount<275)||(animalCount%3==0&&animalCount>385&&animalCount<400)||(animalCount%3==0&&animalCount>400&&animalCount<430)||(animalCount%3==0&&animalCount>475&&animalCount<490)||(animalCount%3==0&&animalCount>500&&animalCount<520)||(animalCount%3==0&&animalCount>1040&&animalCount<1065)||(animalCount%3==0&&animalCount>1190&&animalCount<1210)||(animalCount%3==0&&animalCount>1250&&animalCount<1270)||(animalCount%3==0&&animalCount>1360&&animalCount<1375)||(animalCount%3==0&&animalCount>1655&&animalCount<1675)||(animalCount%3==0&&animalCount>1675&&animalCount<1700)||(animalCount%3==0&&animalCount>2165&&animalCount<2185)) {
    stroke(#F7FCFF);
    fill(#F7FCFF);
    ellipse(154, 296, 29, 7);
    noFill();
    stroke(#35393B);
    ellipse(154, 296, 29, 7);
  }
  popMatrix();
}
void koala() {//Melba
  pushMatrix();
  translate(-450, 0);
  translate(-walkingX, walkingY);
  //This outputs the legs
  strokeWeight(9);
  stroke(#D8AC97);
  line(390, 350, 390+leg, 365);//This outputs the left upper leg
  line(405, 350, 405-leg, 365);//This outputs the right upper leg

  //This outputs the arms
  line(395, 295, 427, 332);
  line(380, 315, 365-(armMelba/2), 332-armMelba);
  //This outputs the lower body
  noStroke();
  fill(#D8AC97);
  ellipse(397.5, 340, 45, 25);

  //This outputs the shirt  
  fill(#F58945);
  quad(385, 275, 410, 275, 420, 340, 375, 340);
  ellipse(397.5, 340, 45, 10);
  strokeCap(CORNERS);
  noFill();
  strokeWeight(7);
  stroke(#F5CE81);
  arc(397.5, 260, 150, 150, radians(75), radians(105));
  arc(397.5, 245, 150, 150, radians(77), radians(102));
  noStroke();
  strokeCap(ROUND);
  fill(#F7EAE3);
  triangle(388, 290, 408, 290, 398, 330);

  //This outputs the ears
  fill(#5F463A);
  ellipse(365, 242, 45, 45);
  ellipse(435, 242, 45, 45);
  fill(#FFF6F2);
  ellipse(439, 244, 30, 30);
  ellipse(361, 244, 30, 30);

  //This outputs the head
  fill(#D8AC97);
  ellipse(400, 272, 85, 80);

  //This outputs the nose
  fill(#5F463A);
  arc(397, 280, 25, 20, radians(0), radians(180));
  ellipse(397, 280, 25, 7);

  //This outputs the eyes
  fill(#2C2927);
  ellipse(376, 270, 8, 15);
  ellipse(417, 270, 8, 15);
  fill(#FFF6F2);
  ellipse(376, 270, 4, 7);
  ellipse(417, 270, 4, 7);
  
  //This outputs the blush
  fill(#EA8C87);
  ellipse(367, 280, 10, 10);
  ellipse(430, 280, 10, 10);

  //This outputs the eyebrows
  noFill();
  stroke(#5F463A);
  strokeWeight(3);
  arc(367, 238, 40, 40, radians(60), radians(85));
  arc(425, 238, 40, 40, radians(95), radians(120));
  //This outputs fur on the head
  arc(392, 243, 20, 20, radians(90), radians(160));
  arc(406, 243, 22, 20, radians(85), radians(170));

  //This outputs the smile
  arc(398, 253, 90, 90, radians(70), radians(110)); 

  //This outputs the movement of the legs when Melba and Dotty are walking
  if (((animalCount*-1)%2==0&&animalCount>-100&&animalCount<13)||(animalCount%2==0&&animalCount>520&&animalCount<760)||(animalCount%2==0&&animalCount>870&&animalCount<975)||(animalCount%2==0&&animalCount>1080&&animalCount<1110)||(animalCount%2==0&&animalCount>1770&&animalCount<2000)||(animalCount%2==0&&animalCount>2060&&animalCount<2110)) {
    leg=3;
  } else if (((animalCount*-1)%2-1==0&&animalCount>-100&&animalCount<13)||(animalCount%2-1==0&&animalCount>520&&animalCount<760)||(animalCount%2-1==0&&animalCount>870&&animalCount<975)||(animalCount%2-1==0&&animalCount>1080&&animalCount<1110)||(animalCount%2-1==0&&animalCount>1770&&animalCount<2000)||(animalCount%2-1==0&&animalCount>2060&&animalCount<2110)) {
    leg=0;
  }
  //This outputs Melba's arm movement when picking up an apple
  if (animalCount>1130&&animalCount<1270) {
    armMelba=20;
  } else if (animalCount>1270) {
    armMelba=0;
  }
  //This outputs Melba's mouth moving when spekaing
  if ((animalCount%3==0&&animalCount>10&&animalCount<25)||(animalCount%3==0&&animalCount>75&&animalCount<105)||(animalCount%3==0&&animalCount>185&&animalCount<210)||(animalCount%3==0&&animalCount>210&&animalCount<235)||(animalCount%3==0&&animalCount>285&&animalCount<310)||(animalCount%3==0&&animalCount>310&&animalCount<335)||(animalCount%3==0&&animalCount>345&&animalCount<375)||(animalCount%3==0&&animalCount>440&&animalCount<465)||(animalCount%3==0&&animalCount>500&&animalCount<520)||(animalCount%3==0&&animalCount>980&&animalCount<1000)||(animalCount%3==0&&animalCount>1010&&animalCount<1030)||(animalCount%3==0&&animalCount>1140&&animalCount<1160)||(animalCount%3==0&&animalCount>1160&&animalCount<1180)||(animalCount%3==0&&animalCount>1220&&animalCount<1240)||(animalCount%3==0&&animalCount>1330&&animalCount<1350)||(animalCount%3==0&&animalCount>1385&&animalCount<1400)||(animalCount%3==0&animalCount>1400&&animalCount<1420)||(animalCount%3==0&&animalCount>1710&&animalCount<1730)||(animalCount%3==0&&animalCount>2240&&animalCount<2260)) {
    stroke(#D8AC97);
    fill(#D8AC97);
    ellipse(398, 295, 35, 8);
    stroke(#5F463A);
    ellipse(398, 297, 34, 5);
  } 
  popMatrix();
}
void rhino() {
  pushMatrix();
  translate(210, 0);
  translate(walkRhino, 0);
  strokeCap(ROUND);
  //This outputs the legs
  strokeWeight(12);
  stroke(#3EA5E3);
  line(672, 336, 673+legRhino, 354);
  line(655, 336, 654-legRhino, 354);
  noStroke();

  //This outputs the lower body
  fill(#3EA5E3);
  ellipse(662, 327, 54, 23);
  //This outputs the shirt
  fill(#FFF8A7);
  quad(640, 275, 680, 275, 690, 327, 635, 327);
  ellipse(662, 327, 54, 10);

  if ((animalCount>1230&&animalCount<=1500)||(animalCount>1560&&animalCount<=1770)) {
    //If statement to change the direction of the character
    //This outputs designs on the shirt
    noFill();
    stroke(#A7DEFF);
    strokeWeight(7);
    strokeCap(CORNERS);
    line(650, 289, 650, 331);
    strokeWeight(4);
    arc(664, 235, 180, 180, radians(73), radians(108));
    arc(662, 225, 180, 180, radians(73), radians(105));
    triangle(655, 323, 665, 323, 660, 317);
    strokeWeight(7);
    strokeCap(ROUND);
    line(663, 280, 664, 296);
    noStroke();

    //This outputs the ears
    fill(#3EA5E3);
    pushMatrix();//This outputs the right ear
    translate(355, -215);
    rotate(radians(30));
    ellipse(500, 200, 25, 35);
    fill(#FA7CCC);
    translate(1, 2);
    ellipse(500, 200, 20, 27);
    popMatrix();
    pushMatrix();//This outputs the left ear
    fill(#3EA5E3);
    translate(123, 188);
    rotate(radians(-20));
    ellipse(500, 200, 20, 30);
    popMatrix();

    //This outputs the head
    fill(#3EA5E3);
    ellipse(650, 250, 110, 80);

    //This outputs the eye
    fill(#FFFEF7);
    ellipse(675, 250, 30, 40);
    fill(#151515);
    ellipse(678, 250, 25, 35);

    //This outputs the nose
    ellipse(617, 255, 5, 5);

    //This outputs the horns
    fill(#E8DEAB);
    arc(600, 200, 80, 80, radians(50), radians(90));
    arc(631, 195, 60, 60, radians(55), radians(95));
    fill(#FFF9DB);
    arc(600, 200, 60, 60, radians(50), radians(90));
    arc(631, 195, 45, 45, radians(55), radians(95));

    //This outputs the arm
    strokeCap(ROUND);
    strokeWeight(13);
    stroke(#3EA5E3);
    line(674, 294, 688-armRhino, 318);
    stroke(#E8DEAB);
    line(686-armRhino, 316, 688-armRhino/1.1, 318);
    noStroke();
    fill(#FFF9DB);
    ellipse(689-armRhino, 319, 12, 12);
  } else if ((animalCount>1500&&animalCount<1560)||(animalCount>1770)) {//Character goes faces opposite direction at different times
    //This outputs designs on the shirt
    noFill();
    stroke(#A7DEFF);
    strokeWeight(7);
    strokeCap(CORNERS);
    line(672, 289, 672, 331);
    strokeWeight(4);
    arc(664, 235, 180, 180, radians(73), radians(108));
    arc(662, 225, 180, 180, radians(73), radians(105));
    triangle(655, 323, 665, 323, 660, 317);
    strokeWeight(7);
    strokeCap(ROUND);
    line(660, 280, 661, 296);
    noStroke();

    //This outputs the ears
    fill(#3EA5E3);
    pushMatrix();//This outputs the right ear
    translate(328, -218);
    rotate(radians(30));
    ellipse(500, 200, 20, 27);
    popMatrix();
    pushMatrix();//This outputs the left ear
    fill(#3EA5E3);
    translate(93, 193);
    rotate(radians(-20));
    ellipse(500, 200, 25, 35);
    fill(#FA7CCC);
    translate(1, 2);
    ellipse(500, 200, 20, 30);
    popMatrix();

    //This outputs the head
    fill(#3EA5E3);
    ellipse(670, 250, 110, 80);

    //This outputs the eye
    fill(#FFFEF7);
    ellipse(645, 250, 30, 40);
    fill(#151515);
    ellipse(642, 250, 25, 35);

    //This outputs the nose
    ellipse(704, 255, 5, 5);

    //This outputs the horns
    fill(#E8DEAB);
    arc(720, 200, 80, 80, radians(90), radians(130));
    arc(688, 195, 60, 60, radians(80), radians(120));
    fill(#FFF9DB);
    arc(720, 200, 60, 60, radians(90), radians(130));
    arc(688, 195, 45, 45, radians(80), radians(120));

    strokeCap(ROUND);
    //This outputs the arm
    strokeWeight(13);
    stroke(#3EA5E3);
    line(650, 294, 638, 318);
    stroke(#E8DEAB);
    line(638, 318, 639, 317);
    noStroke();
    fill(#FFF9DB);
    ellipse(638, 319, 12, 12);
  } 
  //This outputs movement of the Rhino's legs
  if ((animalCount%2==0&&animalCount>1230&&animalCount<1280)||(animalCount%2==0&&animalCount>1500&&animalCount<1560)||(animalCount%2==0&&animalCount>1560&&animalCount<1630)||(animalCount%2==0&&animalCount>1770&&animalCount<2000)||(animalCount%2==0&&animalCount>2120&&animalCount<2110)) {
    legRhino=3;
  } else if ((animalCount%2-1==0&&animalCount>1230&&animalCount<1280)||(animalCount%2-1==0&&animalCount>1500&&animalCount<1560)||(animalCount%2-1==0&&animalCount>1560&&animalCount<1630)||(animalCount%2-1==0&&animalCount>1770&&animalCount<2000)||(animalCount%2-1==0&&animalCount>2120&&animalCount<2110)) {
    legRhino=0;
  }
  //This outputs movement of the Rhino's arm
  if (animalCount>1560&&animalCount<1610) {
    armRhino=30;
  } else if (animalCount>1770) {
    armRhino=0;
  }
  popMatrix();

  //This outputs a pear that Hornsby holds
  if (animalCount<2040) {//This outputs the leaf
    pushMatrix();
    translate(620, 70);
    translate(pearMove, 0);
    pushMatrix();
    rotate(radians(-30));
    stroke(#56E00E);
    strokeWeight(2);
    translate(-82, -60);
    for (int leaf=0; leaf<7; leaf++) {
      ellipse(200, 370, leaf, leaf/2);
    }
    popMatrix();
    stroke(#6F5F53);//This outputs the stem
    strokeWeight(5);
    line(250, 250, 250, 205);
    strokeWeight(8);
    noFill();
    stroke(#8BEA26);
    for (int pear=0; pear<30; pear++) {//This outputs the pear shape
      ellipse(250, 250, pear+10, pear);
      ellipse(250, 225, pear/2+2, pear/2);
    }
    strokeWeight(7);
    arc(213, 225, 55, 55, radians(4), radians(50));
    arc(285, 225, 50, 50, radians(130), radians(176));
    stroke(#96FF27);
    for (int pearShading=0; pearShading<24; pearShading++) {//This outputs the pear shading
      ellipse(253, 247, pearShading+7, pearShading);
      ellipse(253, 225, pearShading/2+2, pearShading/2);
    }
    arc(219, 225, 55, 55, radians(4), radians(42));
    arc(285, 225, 50, 50, radians(130), radians(176));
    stroke(#8BEA26);
    strokeWeight(8);
    line(258, 240, 258, 240);
    strokeWeight(7);
    line(250, 250, 250, 250);
    line(263, 251, 263, 251);
    popMatrix();
  }
}

void raccoonDog() {
  pushMatrix();
  translate(100, 0);
  translate(walkRaccoon, 0);
  //This outputs the tail
  noStroke();
  fill(#341F0A);
  ellipse(753, 348, 30, 34);
  fill(#9B5F1F);
  ellipse(750, 350, 28, 32);
  arc(720, 365, 55, 55, radians(310), radians(364));
  //This outputs the legs
  stroke(#404040);
  strokeWeight(8);
  line(697, 340, 699+legRaccoon, 380);
  line(712, 340, 712-legRaccoon, 380);
  
  //This outputs the left arm
  stroke(#E3E6ED);
  strokeWeight(7);
  line(689, 328, 669, 350-armRaccoon);
  noStroke();
  
  //This outputs the shirt and lower body 
  fill(#404040);
  ellipse(705, 345, 50, 50.5);
  fill(#4560BF);
  arc(705, 345, 50.5, 55.5, radians(160), radians(380), OPEN);
  ellipse(705, 350, 50, 20);
  //This outputs the shirt on the inside
  fill(#E8E9EA);
  triangle(697, 327, 713, 327, 705, 338);
  //This outputs designs on the shirt
  fill(#D8C742);
  quad(685, 345, 690, 340, 695, 345, 690, 350);
  quad(715, 345, 720, 340, 725, 345, 720, 350);
  fill(#8DA4F5);
  quad(700, 347, 705, 342, 710, 347, 705, 352);
  //This outputs the tie
  fill(#AD2109);
  ellipse(705, 328, 9, 9);
  ellipse(705, 337, 9, 15);

  //This outputs the right arm
  stroke(#E3E6ED);
  noFill();
  line(725, 333, 739, 348);
  noStroke();
  //This outputs the hands
  fill(#341F0A);
  ellipse(739, 348, 8, 8);
  ellipse(669, 350-armRaccoon, 8, 8); 
  
  //This outputs the ears
  pushMatrix();
  translate(-8, 61);
  rotate(radians(-5));
  fill(#9B5F1F);
  ellipse(675, 252, 30, 20);
  fill(#DB7196);
  ellipse(675, 252, 22, 12);
  popMatrix();
  pushMatrix();
  translate(140, -226);
  rotate(radians(20));
  fill(#9B5F1F);
  ellipse(725, 252, 30, 20);
  fill(#DB7196);
  ellipse(725, 252, 22, 12);
  popMatrix();

  //This outputs the head
  fill(#9B5F1F);
  ellipse(705, 292, 95, 75);
  noFill();
  strokeWeight(35);
  stroke(#341F0A);
  arc(700, 327, 80, 80, radians(240), radians(300));

  //This outputs the eyes
  noStroke();
  fill(255);
  ellipse(678, 294, 12, 17);
  ellipse(718, 294, 12, 17);
  fill(#5A51B9);
  ellipse(678, 294, 7.5, 12);//This outputs the pupil
  ellipse(718, 294, 7.5, 12);
  fill(#9B5F1F);
  arc(678, 294, 12.5, 17.5, radians(170), radians(350));//This outputs the eyelids
  arc(718, 294, 12.5, 17.5, radians(190), radians(370));

  //This outputs the nose
  fill(#6A300D);
  arc(685, 305, 40, 40, radians(10), radians(60));
  fill(#361806);
  arc(685, 305, 32, 32, radians(10), radians(60));
  popMatrix();
  noFill();
  
  //This outputs Tom Nook's watermelon
  if (animalCount<2283) {
    strokeWeight(5);
    stroke(#5F4F43);
    line(570, 270, 570, 330);
    for (int watermelon=0; watermelon<100; watermelon++) {
      stroke(#A0ED3C);
      arc(570, 330, watermelon, watermelon+10, radians(90), radians(270));
      stroke(#57C980);
      arc(570, 330, watermelon, watermelon+10, radians(270), radians(450));
      arc(570, 330, watermelon-25, watermelon+10, radians(90), radians(270));
    }
    for (int watermelon=0; watermelon<45; watermelon++) {
      stroke(#A0ED3C);
      arc(570, 330, watermelon, watermelon*2+20, radians(90), radians(270));
    }
    for (int watermelon=0; watermelon<20; watermelon++) {
      stroke(#57C980);
      arc(570, 330, watermelon, watermelon*5+15, radians(90), radians(270));
    }
    for (int watermelon=0; watermelon<100; watermelon++) {
      stroke(#3EAF7D);
      arc(570, 330, watermelon-25, watermelon+10, radians(270), radians(450));
    }
    for (int watermelon=0; watermelon<45; watermelon++) {
      stroke(#57C980);
      arc(570, 330, watermelon, watermelon*2+20, radians(270), radians(450));
    }
    for (int watermelon=0; watermelon<20; watermelon++) {
      stroke(#3EAF7D);
      arc(570, 330, watermelon, watermelon*5+15, radians(270), radians(450));
    }
  }
  //This outputs the slices of watermelon
  if (animalCount>=2283&&animalCount<3000) {
    //This outputs the first slice(Dotty)
    for (int slice=0; slice<70; slice++) {
      strokeWeight(3);
      stroke(#A0ED3C);
      arc(110, 260, slice, slice, radians(90), radians(180));
    }
    for (int slice=0; slice<70; slice++) {
      stroke(#57C980);
      arc(110, 260, slice, slice, radians(360), radians(450));
    }
    for (int slice=0; slice<54; slice++) {
      stroke(#F76670);
      arc(110, 260, slice, slice, radians(90), radians(180));
    }
    for (int slice=0; slice<54; slice++) {
      stroke(#D83F5C);
      arc(110, 260, slice, slice, radians(360), radians(450));
    }
    for (int slice=0; slice<5; slice++) {
      stroke(#D34962);
      ellipse(97, 268, slice, slice);
      stroke(#A7364B);
      ellipse(123, 268, slice, slice);
      stroke(#B43C52);
      ellipse(110, 272, slice, slice);
    }
    //This outputs the 2nd slice(Hornsby)
    for (int slice=0; slice<70; slice++) {
      strokeWeight(3);
      stroke(#A0ED3C);
      arc(260, 310, slice, slice, radians(90), radians(180));
    }
    for (int slice=0; slice<70; slice++) {
      stroke(#57C980);
      arc(260, 310, slice, slice, radians(360), radians(450));
    }
    for (int slice=0; slice<54; slice++) {
      stroke(#F76670);
      arc(260, 310, slice, slice, radians(90), radians(180));
    }
    for (int slice=0; slice<54; slice++) {
      stroke(#D83F5C);
      arc(260, 310, slice, slice, radians(360), radians(450));
    }
    for (int slice=0; slice<5; slice++) {
      stroke(#D34962);
      ellipse(247, 318, slice, slice);
      stroke(#A7364B);
      ellipse(273, 318, slice, slice);
      stroke(#B43C52);
      ellipse(260, 322, slice, slice);
    }
    //This outputs the 3rd slice(Melba)
    for (int slice=0; slice<70; slice++) {
      strokeWeight(3);
      stroke(#A0ED3C);
      arc(400, 250, slice, slice, radians(90), radians(180));
    }
    for (int slice=0; slice<70; slice++) {
      stroke(#57C980);
      arc(400, 250, slice, slice, radians(360), radians(450));
    }
    for (int slice=0; slice<54; slice++) {
      stroke(#F76670);
      arc(400, 250, slice, slice, radians(90), radians(180));
    }
    for (int slice=0; slice<54; slice++) {
      stroke(#D83F5C);
      arc(400, 250, slice, slice, radians(360), radians(450));
    }
    for (int slice=0; slice<5; slice++) {
      stroke(#D34962);
      ellipse(387, 258, slice, slice);
      stroke(#A7364B);
      ellipse(413, 258, slice, slice);
      stroke(#B43C52);
      ellipse(400, 262, slice, slice);
    }
    //This outputs the 4th slice(Tom Nook)
    for (int slice=0; slice<70; slice++) {
      strokeWeight(3);
      stroke(#A0ED3C);
      arc(640, 330, slice, slice, radians(90), radians(180));
    }
    for (int slice=0; slice<70; slice++) {
      stroke(#57C980);
      arc(640, 330, slice, slice, radians(360), radians(450));
    }
    for (int slice=0; slice<54; slice++) {
      stroke(#F76670);
      arc(640, 330, slice, slice, radians(90), radians(180));
    }
    for (int slice=0; slice<54; slice++) {
      stroke(#D83F5C);
      arc(640, 330, slice, slice, radians(360), radians(450));
    }
    for (int slice=0; slice<5; slice++) {
      stroke(#D34962);
      ellipse(627, 338, slice, slice);
      stroke(#A7364B);
      ellipse(653, 338, slice, slice);
      stroke(#B43C52);
      ellipse(640, 342, slice, slice);
    }
  }
  //This outputs movement of the raccoon dog's legs
  if ((animalCount%2==0&&animalCount>2060&&animalCount<2110)||(animalCount%2==0&&animalCount>2260&&animalCount<2272)) {//This outputs the moving legs of Tom Nook
    legRaccoon=0;
  } else if ((animalCount%2-1==0&&animalCount>2060&&animalCount<2110)||(animalCount%2-1==0&&animalCount>2260&&animalCount<2272)) {
    legRaccoon=2;
  } else if (animalCount>2271&&animalCount<2278) {//This outputs movement of the raccoon dog's arms
    armRaccoon=25;
  } else if (animalCount>2278&&animalCount<2283) {
    armRaccoon=0;
  }
}
void dialogue() {
  rectMode(CORNERS);
  //format of dialogue=(animal name: dialogue line #)
  //Scene 1: Melba and Dotty want to find the rare watermelon
  strokeWeight(3);
  if (animalCount>10&&animalCount<25) {//Melba: line 1
    PFont font;//Declares the variable
    font = loadFont("CooperBlack-48.vlw");
    textFont(font);
    stroke(#FAC4AC);
    fill(#FFFBF7);
    rect(135, 190, 415, 150, 10);
    triangle(360, 190, 393, 210, 390, 190);
    noStroke();
    triangle(358, 187, 391, 207, 388, 187);
    fill(#555555);
    textSize(22);
    text("Good morning Dotty!", 150, 180);
  } else if (animalCount>35&&animalCount<65) {//Dotty: line 2
    stroke(#BEABF5);
    fill(#FFFBF7);
    rect(157, 150, 430, 80, 10);
    triangle(165, 150, 162, 170, 190, 150);
    noStroke();
    triangle(167, 147, 164, 167, 192, 147);
    fill(#555555);    
    text("Hey Melba, it is such ", 170, 110);
    text("a beautiful day today!", 170, 140);
  } else if (animalCount>75&&animalCount<105) {//Melba: line 3
    stroke(#FAC4AC);
    fill(#FFFBF7);
    rect(143, 170, 415, 100, 10);
    triangle(365, 170, 396, 190, 395, 170);
    noStroke();
    triangle(363, 167, 394, 187, 393, 167);
    fill(#555555);
    text("Yeah, today is a great", 158, 130);
    text("day to take a walk!", 158, 160);
  } else if (animalCount>115&&animalCount<140) {//Dotty: line 4
    stroke(#BEABF5);
    fill(#FFFBF7);
    rect(157, 150, 450, 80, 10);
    triangle(165, 150, 162, 170, 190, 150);
    noStroke();
    triangle(167, 147, 164, 167, 192, 147);
    fill(#555555);    
    text("I’m starting to get a bit", 170, 110);
    text("hungry...", 170, 140);
  } else if (animalCount>150&&animalCount<175) {//Dotty: line 5
    stroke(#BEABF5);
    fill(#FFFBF7);
    rect(157, 150, 490, 80, 10);
    triangle(165, 150, 162, 170, 190, 150);
    noStroke();
    triangle(167, 147, 164, 167, 192, 147);
    fill(#555555); 
    text("But I’m getting tired of", 170, 110);
    text("eating apples all the time...", 170, 140);
  } else if (animalCount>185&&animalCount<210) {//Melba: line 6 
    stroke(#FAC4AC);
    fill(#FFFBF7);
    rect(143, 170, 430, 100, 10);
    triangle(365, 170, 396, 190, 395, 170);
    noStroke();
    triangle(363, 167, 394, 187, 393, 167);
    fill(#555555);
    text("Same! I’ve eaten apples", 158, 130);
    text("for the past 2 weeks!", 158, 160);
  } else if (animalCount>210&&animalCount<235) {//Melba: line 7
    stroke(#FAC4AC);
    fill(#FFFBF7);
    rect(143, 170, 440, 100, 10);
    triangle(365, 170, 396, 190, 395, 170);
    noStroke();
    triangle(363, 167, 394, 187, 393, 167);
    fill(#555555);
    text("I think it would be nice ", 158, 130);
    text("to try something new…", 158, 160);
  } else if (animalCount>245&&animalCount<275) {//Dotty: line 8
    stroke(#BEABF5);
    fill(#FFFBF7);
    rect(157, 185, 490, 70, 10);
    triangle(165, 186, 162, 206, 190, 186);
    noStroke();
    triangle(167, 183, 164, 203, 192, 183);
    fill(#555555); 
    text("Hmm...have you ever heard", 170, 108);
    text("of the rare fruit called", 170, 138);
    text("watermelon?", 170, 170);
  } else if (animalCount>285&&animalCount<310) {//Melba: line 9 
    stroke(#FAC4AC);
    fill(#FFFBF7);
    rect(143, 170, 410, 100, 10);
    triangle(365, 170, 396, 190, 395, 170);
    noStroke();
    triangle(363, 167, 394, 187, 393, 167);
    fill(#555555);
    text("Watermelon? Hmm…", 158, 130);
    text("I’ve heard about it.", 158, 160);
  } else if (animalCount>310&&animalCount<335) {//Melba: line 10
    stroke(#FAC4AC);
    fill(#FFFBF7);
    rect(143, 170, 420, 100, 10);
    triangle(365, 170, 396, 190, 395, 170);
    noStroke();
    triangle(363, 167, 394, 187, 393, 167);
    fill(#555555);
    text("But I've never seen it ", 158, 130);
    text("in person before...", 158, 160);
  } else if (animalCount>345&&animalCount<375) {//Melba: line 11      
    stroke(#FAC4AC);
    fill(#FFFBF7);
    rect(157, 185, 490, 70, 10);
    triangle(365, 186, 396, 206, 395, 186);
    noStroke();
    triangle(363, 183, 394, 203, 393, 183);
    fill(#555555);
    text("Apparently, watermelon is", 170, 103);
    text("super delicious and the", 170, 133);
    text("sweet taste is just perfect!", 170, 165);
  } else if (animalCount>385&&animalCount<400) {//Dotty: line 12  
    stroke(#BEABF5);
    fill(#FFFBF7);
    rect(157, 190, 440, 150, 10);
    triangle(165, 190, 162, 210, 190, 190);
    noStroke();
    triangle(167, 187, 164, 207, 192, 187);
    fill(#555555); 
    text("It sounds so awesome!", 170, 180);
  } else if (animalCount>400&&animalCount<430) {//Dotty: line 13
    stroke(#BEABF5);
    fill(#FFFBF7);
    rect(157, 185, 480, 70, 10);
    triangle(165, 186, 162, 206, 190, 186);
    noStroke();
    triangle(167, 183, 164, 203, 192, 183);
    fill(#555555); 
    text("I've heard that it’s a huge", 170, 108);
    text("green fruit that is red on", 170, 138);
    text("the inside!", 170, 170);
  } else if (animalCount>440&&animalCount<465) {//Melba: line 14   
    stroke(#FAC4AC);
    fill(#FFFBF7);
    rect(143, 170, 500, 100, 10);
    triangle(365, 170, 396, 190, 395, 170);
    noStroke();
    triangle(363, 167, 394, 187, 393, 167);
    fill(#555555);
    text("That is sooo cool! Are you...", 158, 130);
    text("thinking what I’m thinking?", 158, 160);
  } else if (animalCount>475&&animalCount<490) {//Dotty: line 15
    stroke(#BEABF5);
    fill(#FFFBF7);
    rect(157, 190, 350, 150, 10);
    triangle(165, 190, 162, 210, 190, 190);
    noStroke();
    triangle(167, 187, 164, 207, 192, 187);
    fill(#555555); 
    text("You know it!", 170, 180);
  } else if (animalCount>500&&animalCount<520) {//Melba and Dotty: line 16 
    stroke(#555555);
    fill(#FFFBF7);
    rect(133, 170, 450, 100, 10);
    triangle(355, 170, 386, 190, 385, 170);
    triangle(155, 170, 152, 190, 180, 170);
    noStroke();
    triangle(353, 167, 384, 187, 383, 167);
    triangle(157, 167, 154, 187, 182, 167);
    fill(#555555);
    text("JOURNEY TO THE", 153, 130);
    text("RARE WATERMELON!!!!", 153, 160);
  }
  //Scene 2: Melba and Dotty find a green apple and meet Hornsby the rhino
  if (animalCount>980&&animalCount<1000) {//Melba: line 1
    stroke(#FAC4AC);
    fill(#FFFBF7);
    textSize(22);
    rect(63, 170, 330, 100, 10);
    triangle(285, 170, 316, 190, 314, 170);
    noStroke();
    triangle(283, 167, 314, 187, 313, 167);
    fill(#555555);
    text("Is that...what I think", 78, 130);
    text("it is?", 78, 160);
  } else if (animalCount>1010&&animalCount<1030) {//Melba: line 2
    stroke(#FAC4AC);
    fill(#FFFBF7);
    rect(73, 170, 350, 100, 10);
    triangle(295, 170, 326, 190, 325, 170);
    noStroke();
    triangle(293, 167, 324, 187, 323, 167);
    fill(#555555);
    text("There is some kind of", 88, 130);
    text("green fruit over here!", 88, 160);
  } else if (animalCount>1040&&animalCount<1065) {//Dotty: line 3
    stroke(#BEABF5);
    fill(#FFFBF7);
    rect(67, 150, 360, 80, 10);
    triangle(75, 150, 72, 170, 100, 150);
    noStroke();
    triangle(77, 147, 74, 167, 102, 147);
    fill(#555555);    
    text("Oh, I didn't notice it at", 80, 110);
    text("first! Let's check it out!", 80, 140);
  } else if (animalCount>1140&&animalCount<1160) {//Melba: line 4
    stroke(#FAC4AC);
    fill(#FFFBF7);
    rect(123, 120, 390, 50, 10);
    triangle(345, 120, 376, 140, 375, 120);
    noStroke();
    triangle(343, 117, 374, 137, 373, 117);
    fill(#555555);
    text("Oh no... I don't think", 138, 80);
    text("this is a watermelon!", 138, 110);
  } else if (animalCount>1160&&animalCount<1180) {//Melba: line 5
    stroke(#FAC4AC);
    fill(#FFFBF7);
    rect(123, 120, 440, 50, 10);
    triangle(345, 120, 376, 140, 375, 120);
    noStroke();
    triangle(343, 117, 374, 137, 373, 117);
    fill(#555555);
    text("It is green, but it's too", 138, 80);
    text("small to be a watermelon!", 138, 110);
  } else if (animalCount>1190&&animalCount<1210) {//Dotty: line 6
    stroke(#BEABF5);
    fill(#FFFBF7);
    rect(137, 100, 420, 30, 10);
    triangle(145, 100, 142, 120, 160, 100);
    noStroke();
    triangle(147, 97, 144, 117, 162, 97);
    fill(#555555);    
    text("You're right! This is a", 150, 60);
    text("green apple!", 150, 90);
  } else if (animalCount>1220&&animalCount<1240) {//Melba: line 7
    stroke(#FAC4AC);
    fill(#FFFBF7);
    rect(123, 120, 510, 50, 10);
    triangle(345, 120, 376, 140, 375, 120);
    noStroke();
    triangle(343, 117, 374, 137, 373, 117);
    fill(#555555);
    text("Oh that's too bad. I guess", 138, 80);
    text("we have to continue searching...", 138, 110);
  } else if (animalCount>1250&&animalCount<1270) {//Dotty: line 8
    stroke(#BEABF5);
    fill(#FFFBF7);
    rect(137, 100, 460, 30, 10);
    triangle(145, 100, 142, 120, 160, 100);
    noStroke();
    triangle(147, 97, 144, 117, 162, 97);
    fill(#555555);    
    text("Hey look! There is another", 150, 60);
    text("animal over there!", 150, 90);
  } else if (animalCount>1280&&animalCount<1300) {//Hornsby: line 9
    stroke(#81FAFF);
    fill(#FFFBF7);
    rect(403, 120, 720, 50, 10);
    triangle(625, 120, 656, 140, 655, 120);
    noStroke();
    triangle(623, 117, 654, 137, 653, 117);
    fill(#555555);
    text("Hey, are you guys ", 418, 80);
    text("searching for something?", 418, 110);
  } else if (animalCount>1300&&animalCount<1320) {//Hornsby: line 10
    stroke(#81FAFF);
    fill(#FFFBF7);
    rect(403, 120, 690, 50, 10);
    triangle(625, 120, 656, 140, 655, 120);
    noStroke();
    triangle(623, 117, 654, 137, 653, 117);
    fill(#555555);
    text("Oh, and my name is", 418, 80);
    text("Hornsby by the way!", 418, 110);
  } else if (animalCount>1330&&animalCount<1350) {//Melba: line 11
    stroke(#FAC4AC);
    fill(#FFFBF7);
    rect(387, 120, 710, 50, 10);
    triangle(395, 120, 392, 140, 410, 120);
    noStroke();
    triangle(397, 117, 394, 137, 412, 117);
    fill(#555555);    
    text("Nice to meet you Hornsby!", 400, 80);
    text("My name is Melba!", 400, 110);
  } else if (animalCount>1360&&animalCount<1375) {//Dotty: line 12  
    stroke(#BEABF5);
    fill(#FFFBF7);
    rect(137, 100, 430, 60, 10);
    triangle(145, 100, 142, 120, 160, 100);
    noStroke();
    triangle(147, 97, 144, 117, 162, 97);
    fill(#555555);       
    text("And my name is Dotty!", 150, 90);
  } else if (animalCount>1385&&animalCount<1400) {//Melba: line 13
    stroke(#FAC4AC);
    fill(#FFFBF7);
    rect(387, 120, 690, 50, 10);
    triangle(395, 120, 392, 140, 410, 120);
    noStroke();
    triangle(397, 117, 394, 137, 412, 117);
    fill(#555555);    
    text("We’re searching for the", 400, 80);
    text("rare watermelon!", 400, 110);
  } else if (animalCount>1400&&animalCount<1420) {//Melba: line 14 
    stroke(#FAC4AC);
    fill(#FFFBF7);
    rect(387, 120, 690, 50, 10);
    triangle(395, 120, 392, 140, 410, 120);
    noStroke();
    triangle(397, 117, 394, 137, 412, 117);
    fill(#555555);    
    text("It is a huge green fruit ", 400, 80);
    text("that's red on the inside!", 400, 110);
  } else if (animalCount>1430&&animalCount<1450) {//Hornsby: line 15
    stroke(#81FAFF);
    fill(#FFFBF7);
    rect(403, 120, 710, 50, 10);
    triangle(625, 120, 656, 140, 655, 120);
    noStroke();
    triangle(623, 117, 654, 137, 653, 117);
    fill(#555555);
    text("I came across some kind", 418, 80);
    text("of green fruit earlier...", 418, 110);
  } else if (animalCount>1450&&animalCount<1470) {//Hornsby: line 16
    stroke(#81FAFF);
    fill(#FFFBF7);
    rect(403, 120, 700, 50, 10);
    triangle(625, 120, 656, 140, 655, 120);
    noStroke();
    triangle(623, 117, 654, 137, 653, 117);
    fill(#555555);
    text("Maybe it is what you're", 418, 80);
    text("looking for!", 418, 110);
  } else if (animalCount>1470&&animalCount<1490) {//Hornsby: line 17
    stroke(#81FAFF);
    fill(#FFFBF7);
    rect(403, 120, 700, 50, 10);
    triangle(625, 120, 656, 140, 655, 120);
    noStroke();
    triangle(623, 117, 654, 137, 653, 117);
    fill(#555555);
    text("Wait here for a bit and", 418, 80);
    text("I'll bring it over!", 418, 110);
  } else if (animalCount>1630&&animalCount<1645) {//Hornsby: line 18
    stroke(#81FAFF);
    fill(#FFFBF7);
    rect(403, 120, 720, 50, 10);
    triangle(625, 120, 656, 140, 655, 120);
    noStroke();
    triangle(623, 117, 654, 137, 653, 117);
    fill(#555555);
    text("I found it! Here's what I", 418, 80);
    text("saw earlier!", 418, 110);
  } else if (animalCount>1655&&animalCount<1675) {//Dotty: line 20
    stroke(#BEABF5);
    fill(#FFFBF7);
    rect(137, 100, 380, 30, 10);
    triangle(145, 100, 142, 120, 160, 100);
    noStroke();
    triangle(147, 97, 144, 117, 162, 97);
    fill(#555555);    
    text("Oh, I think that is", 150, 60);
    text("just a pear...", 150, 90);
  } else if (animalCount>1675&&animalCount<1700) {//Dotty: line 20
    stroke(#BEABF5);
    fill(#FFFBF7);
    rect(137, 100, 380, 30, 10);
    triangle(145, 100, 142, 120, 160, 100);
    noStroke();
    triangle(147, 97, 144, 117, 162, 97);
    fill(#555555);    
    text("But we appreciate", 150, 60);
    text("your help!", 150, 90);
  } else if (animalCount>1710&&animalCount<1730) {//Melba: line 21 
    stroke(#FAC4AC);
    fill(#FFFBF7);
    rect(387, 120, 690, 50, 10);
    triangle(395, 120, 392, 140, 410, 120);
    noStroke();
    triangle(397, 117, 394, 137, 412, 117);
    fill(#555555);    
    text("Come on Hornsby! Let's", 400, 80);
    text("continue searching!!", 400, 110);
  } else if (animalCount>1740&&animalCount<1760) {//Hornsby: line 18
    stroke(#81FAFF);
    fill(#FFFBF7);
    rect(433, 150, 680, 80, 10);
    triangle(635, 150, 666, 170, 665, 150);
    noStroke();
    triangle(637, 147, 668, 167, 667, 147);
    fill(#555555);
    text("I'd love that! Let's", 448, 110);
    text("get going!", 448, 140);
  }
  //Scene 3: Tom Nook has the watermelon and they all share it
  if (animalCount>2120&&animalCount<2140) {//Tom Nook: line 1
    textSize(22);
    strokeWeight(3);
    stroke(#956647);
    fill(#FFFBF7);
    rect(463, 200, 710, 130, 10);
    triangle(665, 200, 696, 220, 695, 200);
    noStroke();
    triangle(665, 197, 696, 217, 695, 197);
    fill(#555555);
    text("Hey, what are you", 478, 160);
    text("all doing here?", 478, 190);
  } else if (animalCount>2140&&animalCount<2160) {//Tom Nook: line 2
    stroke(#956647);
    fill(#FFFBF7);
    rect(433, 200, 760, 130, 10);
    triangle(635, 200, 666, 220, 665, 200);
    noStroke();
    triangle(635, 197, 666, 217, 665, 197);
    fill(#555555);
    text("I'm Tom Nook by the way!", 448, 160);
    text("Oh, and this is my house!", 448, 190);
  } else if (animalCount>2165&&animalCount<2185) {//Dotty: line 3
    stroke(#BEABF5);
    fill(#FFFBF7);
    rect(137, 100, 470, 30, 10);
    triangle(145, 100, 142, 120, 160, 100);
    noStroke();
    triangle(146, 97, 144, 117, 161, 97);
    fill(#555555);    
    text("Nice to m- wait a minute, is", 150, 60);
    text("that the rare watermelon?", 150, 90);
  } else if (animalCount>2190&&animalCount<2210) {//Tom Nook: line 4
    stroke(#956647);
    fill(#FFFBF7);
    rect(433, 200, 760, 130, 10);
    triangle(635, 200, 666, 220, 665, 200);
    noStroke();
    triangle(635, 197, 666, 217, 665, 197);
    fill(#555555);
    text("Why yes it is, I found it", 448, 160);
    text("while travelling yesterday!", 448, 190);
  } else if (animalCount>2210&&animalCount<2230) {//Tom Nook: line 5
    stroke(#956647);
    fill(#FFFBF7);
    rect(433, 200, 770, 130, 10);
    triangle(635, 200, 666, 220, 665, 200);
    noStroke();
    triangle(635, 197, 666, 217, 665, 197);
    fill(#555555);
    text("But it's too big for myself,", 448, 160);
    text("so do you want to share it?", 448, 190);
  } else if (animalCount>2240&&animalCount<2260) {//Melba: line 6
    stroke(#FAC4AC);
    fill(#FFFBF7);
    rect(387, 120, 720, 50, 10);
    triangle(395, 120, 392, 140, 410, 120);
    noStroke();
    triangle(397, 117, 394, 137, 412, 117);
    fill(#555555);    
    text("Wow thank you! We spent", 400, 80);
    text("all day searching for it!", 400, 110);
  }
} 
void introEnd() {
  noFill();
  smooth();
  pushMatrix();
  translate(0, -170);//Sets initial position
  translate(0, introEnd);//intro/end slide moves downwards for introduction and upwards for ending
  strokeWeight(2);
  //This outputs the main rectangle of the intro/end slide
  for (int slideBase=0; slideBase<2000; slideBase++) {
    stroke(#F7EF8E);
    rect(0, 170+slideBase, 800, 200+slideBase);
  }
  //This outputs the circles that make up the wave of the intro/end slide
  for (int design=0; design<800; design+=199) {//This loop is used to output multiple circles across the screen in a wave pattern
    for (int hill3=0; hill3<85; hill3++) {//This loop outputs a single circle
      strokeWeight(25);
      stroke(#F7EF8E);
      ellipse(50+design, 160, 15+hill3, hill3-15);
    }
    strokeWeight(25);
    arc(150+design, 130, 120, 70, radians(30), radians(150));
  }
  //This outputs the border of the circles that make up the wave of the intro/end slide
  for (int design1=0; design1<800; design1+=199) {
    stroke(#F2E227);
    strokeWeight(15);
    arc(150+design1, 115, 120, 80, radians(30), radians(150));
    arc(50+design1, 160, 120, 80, radians(210), radians(330));
  }
  popMatrix();
  //This outputs the text that appears on the intro/end slide
  if (animalCount>-225&&animalCount<-173) {//Start of text for introduction
    stroke(#F0974D);
    PFont font;//Declares the variable
    font = loadFont("CooperBlack-48.vlw");
    textFont(font);
    fill(#4CB6E5);
    textSize(55);
    text("Journey", 170, 220);
    fill(#77C5E8);
    text("Journey", 173, 223);
  } 
  if (animalCount>-223&&animalCount<-174) {//Each word appears and disappears after the next
    fill(#4CB6E5);
    text("to", 430, 220);
    fill(#77C5E8);
    text("to", 433, 223);
  }
  if (animalCount>-220&&animalCount<-175) {
    fill(#4CB6E5);
    text("the", 510, 220);
    fill(#77C5E8);
    text("the", 513, 223);
  }
  if (animalCount>-218&&animalCount<-176) {
    fill(#4CB6E5);
    text("rare", 160, 300);
    fill(#77C5E8);
    text("rare", 163, 303);
  }
  if (animalCount>-216&&animalCount<-177) {
    fill(#4CB6E5);
    text("watermelon!", 300, 300);
    fill(#77C5E8);
    text("watermelon!", 303, 303);
  }
  if (animalCount>-214&&animalCount<-178) {
    textSize(30);
    fill(#4CB6E5);
    text("By:", 20, 480);
    fill(#77C5E8);
    text("By:", 22, 482);
  }
  if (animalCount>-213&&animalCount<-179) {
    fill(#4CB6E5);
    text("Olivia", 80, 480);
    fill(#77C5E8);
    text("Olivia", 82, 482);
  }
  if (animalCount>-212&&animalCount<-180) {
    fill(#4CB6E5);
    text("Chan", 180, 480);
    fill(#77C5E8);
    text("Chan", 182, 482);
  }
  if (animalCount>2398) {//Start of text for end slide
    textSize(80);
    fill(#4CB6E5);
    text("The", 230, 250);
    fill(#77C5E8);
    text("The", 232, 253);
  }
  if (animalCount>2400) {
    textSize(80);
    fill(#4CB6E5);
    text("End", 410, 250);
    fill(#77C5E8);
    text("End", 412, 253);
  }
}

void transition() {
  noFill();
  smooth();
  pushMatrix();
  translate(0, 500);//Sets original position of the transition slide
  translate(0, transition);//Transition slide moves upwards, then downwards to transition to a new background
  strokeWeight(2);
  //This outputs the main rectangle of the transition slide
  for (int slideBase=0; slideBase<2000; slideBase++) {
    stroke(#F5AA6D);
    rect(0, 170+slideBase, 800, 200+slideBase);
  }
  //This outputs the circles that make up the wave of the transition slide
  for (int design=0; design<800; design+=199) {//This loop is used to output multiple circles across the screen in a wave pattern
    for (int hill3=0; hill3<85; hill3++) {//This loop outputs a single circle
      strokeWeight(25);
      stroke(#F5AA6D);
      ellipse(50+design, 160, 15+hill3, hill3-15);
    }
    strokeWeight(25);
    arc(150+design, 130, 120, 70, radians(30), radians(150));
  }
  //This outputs the border of the circles that make up the wave of the transition slide
  for (int design1=0; design1<800; design1+=199) {
    stroke(#F0974D);
    strokeWeight(15);
    arc(150+design1, 115, 120, 80, radians(30), radians(150));
    arc(50+design1, 160, 120, 80, radians(210), radians(330));
  }
  popMatrix();
  //This outputs a polkadot pattern on the transition slide
  noStroke();
  fill(#F5EA72);
  if ((animalCount>790&&animalCount<832)||(animalCount>2000&&animalCount<2042)) {//Seperate if-statements so each circle appears and disappears at different times 
    ellipse(100, 50, 50, 50);
  }
  if ((animalCount>791&&animalCount<831)||(animalCount>2001&&animalCount<2041)) {//The circle that appears first disappears last and vice-versa
    ellipse(300, 50, 50, 50);
  }
  if ((animalCount>792&&animalCount<830)||(animalCount>2002&&animalCount<2040)) {
    ellipse(500, 50, 50, 50);
  }
  if ((animalCount>793&&animalCount<829)||(animalCount>2003&&animalCount<2039)) {
    ellipse(700, 50, 50, 50);
  }
  if ((animalCount>794&&animalCount<828)||(animalCount>2004&&animalCount<2038)) {    
    ellipse(100, 450, 50, 50);
  }
  if ((animalCount>795&&animalCount<827)||(animalCount>2005&&animalCount<2037)) {
    ellipse(300, 450, 50, 50);
  }
  if ((animalCount>796&&animalCount<826)||(animalCount>2006&&animalCount<2036)) {
    ellipse(500, 450, 50, 50);
  }
  if ((animalCount>797&&animalCount<825)||(animalCount>2007&&animalCount<2035)) {
    ellipse(700, 450, 50, 50);
  }
  if ((animalCount>798&&animalCount<824)||(animalCount>2008&&animalCount<2034)) {
    ellipse(0, 150, 50, 50);
  }
  if ((animalCount>799&&animalCount<823)||(animalCount>2009&&animalCount<2033)) {
    ellipse(200, 150, 50, 50);
  }
  if ((animalCount>800&&animalCount<822)||(animalCount>2010&&animalCount<2032)) {
    ellipse(400, 150, 50, 50);
  }
  if ((animalCount>801&&animalCount<821)||(animalCount>2011&&animalCount<2031)) {
    ellipse(600, 150, 50, 50);
  }
  if ((animalCount>802&&animalCount<820)||(animalCount>2012&&animalCount<2030)) {
    ellipse(800, 150, 50, 50);
  }
  if ((animalCount>803&&animalCount<819)||(animalCount>2013&&animalCount<2029)) {
    ellipse(0, 350, 50, 50);
  }
  if ((animalCount>804&&animalCount<818)||(animalCount>2014&&animalCount<2028)) {
    ellipse(200, 350, 50, 50);
  }
  if ((animalCount>805&&animalCount<817)||(animalCount>2015&&animalCount<2027)) {
    ellipse(400, 350, 50, 50);
  }
  if ((animalCount>806&&animalCount<816)||(animalCount>2016&&animalCount<2026)) {
    ellipse(600, 350, 50, 50);
  }
  if ((animalCount>807&&animalCount<815)||(animalCount>2017&&animalCount<2025)) {
    ellipse(800, 350, 50, 50);
  }
  //This outputs the text that appears on the transition slide
  if (animalCount>790&&animalCount<830) {//Start of text for first transition
    stroke(#F0974D);
    PFont font;//Declares the variable
    font = loadFont("CooperBlack-48.vlw");
    textFont(font);
    fill(#4F9B32);
    textSize(50);
    text("Two", 150, 260);
    fill(#76B75C);
    text("Two", 153, 263);
  } 
  if (animalCount>793&&animalCount<828) {//Each word appears and disappears after the next
    PFont font;//Declares the variable
    font = loadFont("CooperBlack-48.vlw");
    textFont(font);
    textSize(50);
    fill(#4F9B32);
    text("hours", 280, 260);
    fill(#76B75C);
    text("hours", 283, 263);
  }
  if (animalCount>796&&animalCount<826) {
    PFont font;//Declares the variable
    font = loadFont("CooperBlack-48.vlw");
    textFont(font);
    textSize(50);
    fill(#4F9B32);
    text("later", 440, 260);
    fill(#76B75C);
    text("later", 443, 263);
  }
  if (animalCount>798&&animalCount<824) {
    PFont font;//Declares the variable
    font = loadFont("CooperBlack-48.vlw");
    textFont(font);
    textSize(50);
    fill(#4F9B32);
    text(".", 560, 260);
    fill(#76B75C);
    text(".", 563, 263);
  }
  if (animalCount>799&&animalCount<822) {
    PFont font;//Declares the variable
    font = loadFont("CooperBlack-48.vlw");
    textFont(font);
    textSize(50);
    fill(#4F9B32);
    text(".", 585, 260);
    fill(#76B75C);
    text(".", 588, 263);
  }
  if (animalCount>800&&animalCount<820) {
    PFont font;//Declares the variable
    font = loadFont("CooperBlack-48.vlw");
    textFont(font);
    textSize(50);
    fill(#4F9B32);
    text(".", 610, 260);
    fill(#76B75C);
    text(".", 613, 263);
  }
  if (animalCount>2000&&animalCount<2040) {//Start of text for second transition
    PFont font;//Declares the variable
    font = loadFont("CooperBlack-48.vlw");
    textFont(font);
    textSize(50);
    fill(#4F9B32);
    text("Five", 147, 260);
    fill(#76B75C);
    text("Five", 144, 263);
  }
  if (animalCount>2003&&animalCount<2038) {
    PFont font;//Declares the variable
    font = loadFont("CooperBlack-48.vlw");
    textFont(font);
    textSize(50);
    fill(#4F9B32);
    text("hours", 270, 260);
    fill(#76B75C);
    text("hours", 273, 263);
  }
  if (animalCount>2006&&animalCount<2036) {
    PFont font;//Declares the variable
    font = loadFont("CooperBlack-48.vlw");
    textFont(font);
    textSize(50);
    fill(#4F9B32);
    text("later", 440, 260);
    fill(#76B75C);
    text("later", 443, 263);
  }

  if (animalCount>2008&&animalCount<2034) {
    PFont font;//Declares the variable
    font = loadFont("CooperBlack-48.vlw");
    textFont(font);
    textSize(50);
    fill(#4F9B32);
    text(".", 560, 260);
    fill(#76B75C);
    text(".", 563, 263);
  }

  if (animalCount>2009&&animalCount<2032) {
    PFont font;//Declares the variable
    font = loadFont("CooperBlack-48.vlw");
    textFont(font);
    textSize(50);
    fill(#4F9B32);
    text(".", 585, 260);
    fill(#76B75C);
    text(".", 588, 263);
  }
  if (animalCount>2010&&animalCount<2030) {
    PFont font;//Declares the variable
    font = loadFont("CooperBlack-48.vlw");
    textFont(font);
    textSize(50);
    fill(#4F9B32);
    text(".", 610, 260);
    fill(#76B75C);
    text(".", 613, 263);
  }
}
