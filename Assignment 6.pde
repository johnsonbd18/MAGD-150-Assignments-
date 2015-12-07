int posX= 25;
int posY = 450;
int movementSize=3;
int ballDiameter=25;

int pressedState=0;
int pressed = 0;

void setup(){
size(1200,800);
background(#3E5EF7);

}

void draw(){
background(#3E5EF7);
  if(pressedState ==1){  
     background(0);
 
     drawHamburger();
 
 textSize(32);
 text("HAMBURGER!!!!!!",300,300);
 //Plate
 fill(225);
 ellipse(500,600,550,75);
 stroke(5);
 ellipse(500,600,250,50);
  }
  else {
   //baby
  //eyes
  fill(#F5DB92);
 ellipse(750,300,500,600); 
  ellipseMode(CENTER);
  fill(255);
  ellipse(630,200,100,50);
  fill(#2CDAE8);
  ellipse(630,200,50,50);
  fill(225);
  ellipse(850,200,100,50);
  fill(#2CDAE8);
  ellipse(850,200,50,50);
  fill(0);
  ellipse(630,200,25,25);
  ellipse(850,200,25,25);
  //mouth
  fill(0);
  ellipse(750,450,200,100);
  fill(225);
  rect(720,400,50,60);
  
  fill(225);
  textSize(32);
  text("I want HAMBURGER!",100,300);
  //bib
  for(int x=1; x<10; x++){
    fill(225);
    rect(600,600,300,100);
    fill(#098112);
  ellipse(700,650,25,25);
  }
  //spoon
  
  fill(50);
  rect(posX,posY-10,100,20);
  fill(50);
  ellipse(posX, posY, ballDiameter,25);
  ellipse(posX+150,posY,100,50);
  fill(#098112);
  ellipse(posX+150,posY,50,50);
  update();
  } 
}//scene
void mousePressed(){
  background(#3E5EF7);
  pressed=pressed +1;
  pressedState =(pressed %2);
}
  //hamburger
void drawHamburger(){
  int centerX= round(random(width));
  int centerY= round(random(width));
  int offset1= 15;
  int offset2= 15;
  frameRate(3);
      fill(#E08E29);
     arc(centerX+100,centerY,200,200,PI,TWO_PI);
     fill(#2B890F);
     rect(centerX,centerY,200,25);
     fill(#6A400D);
     rect(centerX,centerY+20,200,50);
     fill(#ED1123);
     rect(centerX,centerY+50,200,50);
     fill(#E08E29);
     rect(centerX,centerY+100,200,75);
  
}

void update(){
  if((posX + (ballDiameter/2)) > width){
   movementSize = movementSize * -1;
  } else if (posX < ballDiameter/2){
    movementSize = movementSize * -1;
  }
 posX = posX + movementSize;
}
