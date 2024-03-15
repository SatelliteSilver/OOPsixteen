/* real-time function (Draw) */
void draw() { 

  //update part 
  bulletMove();
  
  //render part
  renderPlayground();
  for (int i=0; i<=7; i++) {
    for (int j=0; j<=0; j++) {
      renderBricks(xx[i], yy[j]);
    }
  }
  renderBreaker();
  renderBullet();
  renderBackground();
  
  fill(100);
  text(theta,10,10);
}
