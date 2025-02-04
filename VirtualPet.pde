import processing.serial.*;
import cc.arduino.*;
import java.lang.Math;
Arduino arduino;

void setup()
{
  size (1000,1000);
  arduino = new Arduino(this, Arduino.list()[1], 57600);
  frameRate(60);
  
}
int i = 0;
int nowIKnowMyABCsNextTimeWontYouSingWithMeee;
int lmfao;
int delay = 0;
  
void draw()
{
  int x = arduino.analogRead(5);
  int y = arduino.analogRead(6);
  int z = arduino.analogRead(1);
  
  
  if (delay > 30) {
    nowIKnowMyABCsNextTimeWontYouSingWithMeee = (int)(Math.random() * 1001);
    lmfao = (int)(Math.random() * 701);
    delay = 0;
  }
  delay++;
  
  x = 8 * x;
  System.out.println(nowIKnowMyABCsNextTimeWontYouSingWithMeee);
  noStroke();
  background(0-0.6*x,231-0.6*x,237-0.6*x);
  if (x >= 250) {
    fill(#FFFFFF);
    ellipse(2.5*x,0,500,500);
    fill(#FFFF00);
    rect(nowIKnowMyABCsNextTimeWontYouSingWithMeee,lmfao,20,20);
    triangle(nowIKnowMyABCsNextTimeWontYouSingWithMeee,lmfao,nowIKnowMyABCsNextTimeWontYouSingWithMeee + 20,lmfao,nowIKnowMyABCsNextTimeWontYouSingWithMeee + 10,lmfao - 30);
    triangle(nowIKnowMyABCsNextTimeWontYouSingWithMeee,lmfao,nowIKnowMyABCsNextTimeWontYouSingWithMeee,lmfao + 20,nowIKnowMyABCsNextTimeWontYouSingWithMeee - 30,lmfao + 10);
    triangle(nowIKnowMyABCsNextTimeWontYouSingWithMeee,lmfao + 20,nowIKnowMyABCsNextTimeWontYouSingWithMeee + 20,lmfao + 20,nowIKnowMyABCsNextTimeWontYouSingWithMeee + 10,lmfao + 50);
    triangle(nowIKnowMyABCsNextTimeWontYouSingWithMeee + 20,lmfao + 20,nowIKnowMyABCsNextTimeWontYouSingWithMeee + 20,lmfao,nowIKnowMyABCsNextTimeWontYouSingWithMeee + 50,lmfao + 10);
  } else {
    fill(#FFEB08);
    ellipse(2.5*x,0,500,500);
  }
  fill(#31B464);
  rect(0,750,1000,250);
  //background
  if (z >= 500) {
    translate(500,500);
    i++;
    rotate((float)i/5);
    translate(-500,-500);
  }
  if (z<500){
    i=0;
  }
  //rButton
  fill(#816B40);
  ellipse(500,1000,600,1000);
  //body
  fill(#3E3324);
  triangle(300,125,330,300,480,200);
  fill(#3E3324);
  triangle(700,125,670,300,530,200);
  //ears
  fill(#AA8950);
  triangle(520,75,350,300,510,500);
  triangle(550,100,400,250,510,500);
  ellipse(500,350,400,425);
  ellipse(500,550,500,400);
  //head
  fill(#553D1C);
  ellipse(500,420,160,160);
  rect(420,425,160,200);
  fill(#000000);
  ellipse(500,440,70,70);
  //notstrils
  if (y > 500) {
   fill(#AD2525);
   arc(500,500,140,140,PI/3,2*PI/3); 
  }
  fill(#3E3324);
  triangle(500,500,450,400,550,400);
  rect(480,460,40,40);
  //nose
  g.stroke = true;
  fill(#553D1C);
  arc(400,500,200,200,0,PI/4);
  arc(600,500,200,200,3*PI/4,PI);
  noStroke();
  fill(#AA8950);
  rect(400,500,20,20);
  rect(580,500,20,20);
  //mouth
  if (y > 500) {
    fill(#FFFF00);
    rect(390,280,40,40);
    triangle(390,280,430,280,410,200);
    triangle(390,320,430,320,410,400);
    triangle(390,280,390,320,310,300);
    triangle(430,320,430,280,510,300);
    rect(570,280,40,40);
    triangle(610,280,570,280,590,200);
    triangle(610,320,570,320,590,400);
    triangle(610,280,610,320,690,300);
    triangle(570,320,570,280,490,300);
  } else if (x >= 250) {
    fill(#000000);
    rect(360,300,100,10);
    rect(540,300,100,10);
  } else {
    fill(#000000);
    ellipse(410,300,75,100);
    ellipse(590,300,75,100);
    fill(#FFFFFF);
    ellipse(400,280,20,20);
    ellipse(580,280,20,20);
  }
  //eyes
  fill(#523F1B);
  translate(850,1000);
  rotate((float)x/2000);
  ellipse(0,0,100,750);
  //tail
  //System.out.println(z);
}
