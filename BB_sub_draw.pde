/* Custom Functions */
void renderPlayground() {
    strokeWeight(2);
  fill(255);
  rect(0, 100, 599, 400);
  strokeWeight(1);
}
void renderBackground() {
  strokeWeight(2);
  fill(128);
  rect(0, fallY, 599, 600);
  rect(0, 0, 599, 100);
  strokeWeight(1);
}

void renderBricks(float xx, float yy) {
  float randomcolor1,randomcolor2,randomcolor3;
  randomcolor1 = random(0,256);
  randomcolor2 = random(0,256);
  randomcolor3 = random(0,256);
  fill(randomcolor1,randomcolor2,randomcolor3);
  stroke(randomcolor1,randomcolor2,randomcolor3);
  rect(xx, yy, bric_x, bric_y);
  stroke(0);
}

void renderBreaker() {
  // 발사대 render
  line ( fallX, fallY, 
         fallX + caliberLength * cos ( theta * 3.14 / 180 ) , fallY + caliberLength * sin ( theta * 3.14 / 180 )
        );
}

void renderBullet() {
  // bullets
  for (int i = 0; i<bulletNum; i++)
  {
     circle(bulletX[i],bulletY[i],bulletRadius); 
     if(bulletCharacter==0)
     {
       sunface(bulletX[i],bulletY[i],bulletRadius);
     }
     else if(bulletCharacter==1)
     {
       amongus(bulletX[i],bulletY[i]-20,bulletRadius/15);
     }
  }
}
