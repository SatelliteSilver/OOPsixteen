 void amongus(float x,float y,float d){
  fill(255,0,0);
  rect(x+d*6,y+d*7,d*12,d*15);
  fill(121,35,35);
  rect(x+d*6,y+d*9,d*10,d*10);
  fill(255,0,0);
  arc(x,y+d*30,d*30,d*60,PI,2*PI);
  fill(121,35,35);
  arc(x,y+d*30,d*25,d*55,PI,2*PI);
  fill(255,0,0);
  arc(x,y+d*30,d*10,d*15,PI,2*PI);
  fill(0);
  arc(x,y+d*30,d*5,d*10,PI,2*PI);
  stroke(0, 137, 182);
  strokeWeight(d);
  fill(0, 91, 140);
  rect(x-d*6,y+d*7,d*12,d*5);
  stroke(0);
  strokeWeight(1);
}
