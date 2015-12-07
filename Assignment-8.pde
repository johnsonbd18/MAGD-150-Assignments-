int pressedState=0;
int pressed = 0;
PImage arcade;

class Timer{
  int savedTime;
  int totalTime;
  
  Timer(int _totalTime){
    totalTime = _totalTime;
  }
  
   void start() {
    savedTime = millis();
    }
     boolean isFinished() {
       int passedTime = millis() - savedTime;
   if (passedTime > totalTime) {
     return true;
   } else {
     return false;
   }
 }
}

class Movement{
  int centerX, centerY, offset1, offset2, offsetX1, offsetX2, r1, r2, r3;
  boolean keys[];
  int savedTime, totalTime;

int xVelocity, yVelocity;

Movement(){
    centerX = round(random(0, width));
    centerY = round(random(0, height));
    offset1 = -20;
    offset2 = +20;
    offsetX1 = -20;
    offsetX2 = + 20;
    r1 = 40;
    r2 = 20;
    r3 = 15;
    keys = new boolean [4];
  }
 //arcade screen
 void display(){
    fill(#F5D7AF);
    rect(centerX, centerY, r1, 40); 
    fill(#F70718);
    rect(centerX, centerY, r1, 10);
    fill(#4750F2);
    rect(centerX,centerY+40,r1,30);
    rect(centerX,centerY+70,10,r1);
    rect(centerX+30,centerY+70,10,r1);
    fill(50);
    rect(centerX,centerY+100,20,15);
    rect(centerX+30,centerY+100,20,15);
   
  }
  
  void update(){
    if (keys[0]){
      yVelocity = -5;
    }
    if(keys[1]){
      yVelocity = 5;
    }
    if(keys[2]){
      xVelocity = -5;
    }
    if(keys[3]){
      xVelocity = 5;
    }
    if(!keys[2] && !keys[3]){ 
      xVelocity = 0;
      
    }
    if(!keys[0] && !keys[1]){ 
      yVelocity = 0;
      
    }
    centerX += xVelocity;
    centerY += yVelocity;
  }
 void keyPressed(){
    if(key == 'w'){
      keys[0] = true;
    } 
    if(key == 's'){
      keys[1] = true;
    }
    if(key == 'a'){
      keys[2] = true;
    }
    if(key == 'd'){
      keys[3] = true;
    } 
  }
  
  void keyReleased(){ 
    println("Keyreleased " + key);
    if(key == 'w'){
      keys[0] = false;
    } 
    if(key == 's'){
      keys[1] = false;
    }
    if(key == 'a'){
      keys[2] = false;
    }
    if(key == 'd'){
      keys[3] = false;
    } 
  }   
}

Movement newMovement;

Timer myTimer;

void setup(){
  size(800,600);
  newMovement = new Movement();
    arcade= loadImage("imgres.jpg");
    //Move player up to the flag and land him at the botton of the flag. After 2 seconds and without pressing any buttons the will words appear. 
    myTimer = new Timer(2000);
  
}



void draw(){
  background(#FCE457);
  
if(pressedState ==1){

   // blocks and flag 
    
       fill(225);
      ellipse(200,300,50,50);
      background(0);
     fill(#F2D80C);
     rect(200,300,100,50);
     rect(400,200,100,50);
     fill(#5F3609);
     rect(0,500,900,200);
     fill(50);
     rect(700,100,20,400);
     fill(#F50C14);
     triangle(600,100,720,50,720,100);
     
       
       
       if (myTimer.isFinished()){
        println("timer");
        fill(#49EAD6);
        textSize(32);
        text("Congratulations!", 300, 100);

  }
  
  
  
 // character moving displaying
 newMovement.update();
  newMovement.display();
} else {
    
    //Arcade machine
  fill(0);
  rect(225,150,350,300);
 image(arcade,220,10);
 rect(250,475,300,100);
  
  //buttons
  fill(#FF0000);
  stroke(0);
  ellipse(300,500,25,25);
  fill(#0F0CF5);
  ellipse(330,530,25,25);
  fill(225);
  ellipse(360,500,25,25);
  
  //stick 
    fill(100);
    rect(500,500,10,50);
    fill(#F2180C);
    ellipse(505,500,20,20);
  }
}
    
void keyPressed(){
  newMovement.keyPressed(); 
  myTimer.start();
}

void keyReleased(){
  newMovement.keyReleased(); 
}

void mousePressed(){
  pressed=pressed +1;
pressedState =(pressed %2);
  
}
