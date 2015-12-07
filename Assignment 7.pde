PImage thanksgiving;
PImage turkey;

Timer myTimer;
Thanksgiving myThanksgiving;
Turkey myTurkey;



void setup(){
  size(800,600);
  background(255);

  thanksgiving = loadImage("pilgrim-boy.jpg");
  turkey = loadImage("turkey.jpg");
 myTimer = new Timer(1000);
 myThanksgiving = new Thanksgiving();
}

void draw(){
  background(255);

  image(thanksgiving,50,50);
  image(turkey,300,50);
  if (myTimer.isFinished()){
   println("timer");
  fill(0);
  textSize(20);
  text("Happy Thanksgiving",300,40);
}
}

class Thanksgiving {
  
  Thanksgiving(){
     image(thanksgiving,50,50);
  }
  
}

class Turkey{
  
  Turkey(){
    image(turkey,300,50);
  }
  
}
