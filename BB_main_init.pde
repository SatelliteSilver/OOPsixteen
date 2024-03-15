/*@@@@@@@@@@@@@@@@@@@@
Project: Bricks Breaker

MAIN source

Convention Rule
- use Camel case
@@@@@@@@@@@@@@@@@@@@*/

/* @@@@@@@@@@@@@@@@@@@@
   Global Variable Init*/
  // brick
  int [] xx, yy;
  boolean [] brickLife;
  int gap = 5;
  int bric_x = 69, bric_y = 35;

  // Normal
  int time = 0;
  
  // breaker 
  boolean shoot = false;
  int caliberLength = 80; //포신
  // bullet
  int bulletCharacter = 0;
  int bulletRadius = 30;
  int bulletNum = 1;
  int theta = 270;
  int [] bulletX = new int [bulletNum];
  int [] bulletY = new int [bulletNum];
  int [] bulletSpeed = new int [bulletNum];
  int fallX=300; //처음 떨어진 공 x,y
  int fallY=500;

  int speed=5;
  int speedXSign=1;
  int speedYSign=1;
  float speedX=0;
  float speedY=0;
  
/* @@@@@@@@@@@@@@@@@@@@*/


/* init Function */
void setup()
{
  // screen
  size(600,600);
  
  // brick
  brickLife = new boolean[8];
  xx = new int[8]; yy = new int[1];
  
  for (int i=0; i<=7; i++) {
    xx[i] = gap+i*(bric_x+gap);
    brickLife[i] = true;
  }
  for (int j=0; j<=0; j++) {
    yy[j]=j*(bric_y+gap)+(100+gap);
  }
  
  // bullet
  for (int i = 0; i < bulletNum; i++){
    bulletX[i]=fallX;
    bulletY[i]=fallY;
  } 
}
