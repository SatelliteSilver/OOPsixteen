/* 
@@@@@@@@@@@@@@@@@@@@

Project: Bricks Breaker

MAIN source

Convention Rule
- use Camel case when you name variable
- 

@@@@@@@@@@@@@@@@@@@@
*/

/* @@@@@@@@@@@@@@@@@@@@
   Global Variable Init*/


/* @@@@@@@@@@@@@@@@@@@@*/


/* init Function */
void setup()
{
  // screen
  size(600,600);
  
}

/* real-time function (Draw) */
void draw() { 
 
  //render part
  renderBackground();
  renderBricks();
  renderBreaker();
  
  //update part 
  bulletMove();
}

/* real-time function (Key Press) */
void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      // theta -= 2;  render breaker 참고
      
    } else if (keyCode == RIGHT) {
      // theta += 2;  render breaker 참고
      
    } else if (keyCode == ' ') { //Space Bar
      // 공 10개 생성해서 발사
      /* for (int i = 0; i < 10; i++){
         circle(x,y,반지름)
        
        
      */
      // 공 x 배열은 모두 sin cos (theta ...) + a 만큼 속도가 증가해야함
      
    } else {

    }
  }
}

/* Custom Functions */
void renderBackground() {
  
  // 인수(parameter)는 필요 시 추가하시면 됩니다.
  // 맵은 가로 6칸 세로 9칸으로 배열과 Rect를 이용하여 만들어 주세요 
  
  
  
}

void renderBricks() {
  // 
}

void renderBreaker() {
  // bullet 10개씩 나가게 할 것이고 불릿 모양은 우리 캐릭터 모양 둘 중에 고를 수 있게 할 예정
  // 
  
  // 발사한 공이 다 회수되면 시작 가능 BOOL enable=true;
  // 공의 마지막 x좌표
  
  // 발사대 render
  // line ( 공이 떨어진 x, 출발선 y, 
  //        공이 떨어진 x + 반지름 * cos ( theta * 3.14 / 180 ) , y + 반지름 * sin ( theta * 3.14 / 180 )
  
  // 시작 가능한 상태일 때 if(enable) {
  // 방향키로 조종 후 스페이스바 누르면 발사됨 (void key pressed)
  // }
  
  // 공이 부딪히는 것 조사 else {
  // ( |공 중점 - 벽돌세로| <= d1 || |공 중점 - 벽돌가로| <= d2)
  // d1=공반지름+벽돌 세로의 절반 길이, d2=공반지름+벽돌 가로의 절반 길이
  // 벽돌 count - 1
  // 탄성 충돌 (Elastic collision)
  // = 브릭과 부딪힌 후 x또는 y의 속도 부호 변경
}

// 불릿의 움직임 제어
void bulletMove() {
  // 불릿의 x, y 기본 이동
  // bullet.x += speedX
  // bullet.y += speedY
  
}
