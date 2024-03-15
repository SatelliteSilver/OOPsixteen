/* real-time function (Key Press) */
void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT && !shoot) {
      theta -= 4; // render breaker 참고 
    } else if (keyCode == RIGHT && !shoot) {
      theta += 4; // render breaker 참고
    }
  }
  else if (key == ' ' && !shoot) { //Space Bar
      speedXSign=1;
      speedYSign=1;
      shoot = true;
  }
  else if (key == 'q') {
       bulletCharacter = 0;
  } else if (key == 'w') {
       bulletCharacter = 1;
  }
}

// 불릿의 움직임 제어
void bulletMove() {
  if (shoot){
      speedX = speedXSign * speed * cos ( theta * 3.141592 / 180 );
      speedY = speedYSign * speed * sin ( theta * 3.141592 / 180 );
  }
  // 불릿의 x, y 기본 이동
  for(int i = 0; i<bulletNum; i++)
  {
     bulletX[i] += speedX; 
     bulletY[i] += speedY;
  }
  
  // 불릿 벽에 닿으면 팅기기
  for (int i = 0; i < bulletNum; i++)
  {
    // 좌우 벽 닿을 때
    if(bulletX[i] <= 1 || bulletX[i] >= 599)
    {
      speedXSign = (-1 * speedXSign);
    }
    
    // 위에 벽 닿을 때
    if(bulletY[i] <= 101)
    {
      speedYSign = (-1 * speedYSign);
    }
    
    // 벽돌과 닿을 때
    for (int k=0; k<8; k++) {
      for (int j=0; j<1; j++) {
        if(((bulletX[i] >= xx[k] && bulletX[i] <= xx[k]+bric_x) && ((bulletY[i] >= yy[j]) && (bulletY[i] <= yy[j]+bric_y))) && brickLife[k])
        {
          brickLife[k]=false;
           speedYSign = (-1 * speedYSign);
           xx[k] = 1000;
        }
    }
    }
    
    if(bulletY[i] >= fallY){
    shoot = false;
    speedX=0; speedY=0;
    
    fallX=bulletX[i];
    }
  }
}
