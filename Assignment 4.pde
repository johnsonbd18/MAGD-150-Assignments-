int pressed = 0;
int pressedState = 0;

//Genetics 
void setup()
{
  size (1280,800);
   background(147,68,15);
  
}

void draw()
{
 
  //book
  line(400,200,430,190);
  fill(90,2,24);
  rect(430,190,400,455);
  fill(225);
  rect(430,195,395,20);
  fill(90,2,24);
  rect(400,200,400,450);
  fill(225);
 rect(800,195,25,440);
 fill(221,200,132);
  ellipse(600,300,200,100);
  fill(0);
textSize(32);
text("The Book",530,300);
//Called "The Book" because you don't know what a book is about till you read it 
  triangle(700,500,600,600,500,500);
  fill(225);
 textSize(18);
 text("By: Bethany Johnson",510,500);
}
 void mousePressed(){
    fill(247,99,40);
  text("Never Judge a Book by it's Cover", mouseX,mouseY);
 }
 
