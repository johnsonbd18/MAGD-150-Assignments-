int posX = 25;
int posY = 150;
int movementSize = 1;
int ballDiameter = 25;


void setup(){
  size(1200,600);
  background(20,30,196);
  
  
 
}

void draw() {
   background(20,30,196);
  
  //Moon
  
  fill(255,236,85);
  ellipse(posX,posY,ballDiameter,25);
 update();



//Yard of the castle
  fill(52,178,67);
  rect(0,400,1250,400);
  
  //Castle
  fill(50);
  stroke(0);
  strokeWeight(2);
  
  //Roof top of castle
  rect(500,200,200,200);
  rect(500,100,25,100);
  rect(675,100,25,100);
  rect(560,100,80,100);
   fill(50);
  triangle(540,100,600,25,660,100);
  triangle(495,100,510,60,530,100);
  triangle(670,100,690,60,705,100);
  noStroke();
  fill(250,226,43);
  rect(590,145,25,25);
  
  //Door
  stroke(0);
  strokeWeight(1);
  fill(124,65,6);
  rect(550,300,90,100);
  
  //Knob
  ellipseMode(CENTER);
  fill(252,243,64);
  ellipse(630,350,15,15);
  
//Ghost
noStroke();
   fill(255);
  arc(mouseX,mouseY,100,100, PI,TWO_PI);
  rect(mouseX-50,mouseY,100,100);
  ellipseMode(CENTER);
  fill(0);
  ellipse(mouseX-20,mouseY,20,20);
  ellipseMode(CENTER);
  fill(0);
  ellipse(mouseX+20,mouseY,20,20);
  ellipseMode(CENTER);
  fill(0);
  ellipse(mouseX,mouseY+20,20,20);
   
   //Happy Halloween :)
   fill(242,165,20);
   textSize(24);
 text("Happy Halloween!", 800, 100);
  
  //This is for the walk way by the haunted castle
  for(int x= 1; x<10; x++){
    fill(88,58,3);
    rect(545,400,100,200);
  }
  
  
}
  
  void update(){
  if((posX + (ballDiameter/2)) > width){
   movementSize = movementSize * -1;
  } else if (posX < ballDiameter/2){
    movementSize = movementSize * -1;
  }
 posX = posX + movementSize;
}
  
