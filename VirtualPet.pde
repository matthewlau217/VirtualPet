void setup()
{
  size (1000,1000);
}

void draw()
{
  noStroke();
  background(#00E7ED);
  fill(#FFEB08);
  ellipse(0,0,500,500);
  fill(#31B464);
  rect(0,750,1000,250);
  //background
  fill(#816B40);
  ellipse(500,1000,600,1000);
  //body
  fill(#3E3324);
  triangle(300,125,330,300,480,200);
  fill(#3E3324);
  triangle(700,125,670,300,530,200);
  //ears
  fill(#AA8950);
  ellipse(500,350,400,425);
  ellipse(500,550,500,400);
  fill(#553D1C);
  ellipse(500,420,160,160);
  //head
  fill(#553D1C);
  rect(420,425,160,200);
  fill(#000000);
  ellipse(500,440,70,70);
  //notstrils
  fill(#3E3324);
  triangle(500,500,450,400,550,400);
  //fill(#3E3324);
  rect(480,460,40,40);
  //nose
  fill(#000000);
  ellipse(410,300,75,100);
  ellipse(590,300,75,100);
  fill(#FFFFFF);
  ellipse(400,280,20,20);
  ellipse(580,280,20,20);
  //eyes
  g.stroke = true;
  noFill();
  arc(400,500,200,200,0,PI/4);
  noFill();
  arc(600,500,200,200,3*PI/4,PI);
  //mouth
}
