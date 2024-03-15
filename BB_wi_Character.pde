void eye(float a, float b)
{
  stroke(0,0,0);
 for(int i = 0; i < 180; i++)
  {
    fill(0,0,0);
   circle(cos(i*3.14/180)*7+a,-1 * sin(i*3.14/180)*5+b,10); 
   // SIN, COS
  } 
}

void lip(float a, float b)
{
  stroke(0,0,0);
 for(int i = 0; i < 180; i++)
 {
   fill(0,0,0);
   circle(cos(i*3.14/180)*12+a,sin(i*3.14/180)*5+b,10); 
 }
}

void sunleaf_line(float a, float b, float length)
{
  int count = 36;
 for (int i = 0; i <count; i++)
 {
  stroke(255,128,0);
  line(
  a+cos(i*3.14/count*2)*length,
  b+sin(i*3.14/count*2)*length,
  a+cos((i-0.5)*3.14/count*2)*(length+10),
  b+sin((i-0.5)*3.14/count*2)*(length+10)
  );

  stroke(255,128,0);
  line(
  a+cos(i*3.14/count*2)*length,
  b+sin(i*3.14/count*2)*length,
  a+cos((i+0.5)*3.14/count*2)*(length+10),
  b+sin((i+0.5)*3.14/count*2)*(length+10)
  );
 }
}

void sunleaf_color(float a, float b, float length)
{
 int count = 36;
 for (int i = 0; i <count; i++)
 {
   for(int j = 0; j < 100; j++)
   {
     stroke(153,204,255);
  line(
  a+cos(i*3.14/count*2)*length,
  b+sin(i*3.14/count*2)*length,
  a+cos((i-0.5+(j*0.01))*3.14/count*2)*(length+10),
  b+sin((i-0.5+(j*0.01))*3.14/count*2)*(length+10)
  );
   }
 } 
}

void sunface(float x, float y, float d)
{
  // outer face
   fill(255,128,0);
  stroke(255,128,0);
  circle(x,y,2*d+10);
  
  // inner face
  fill(255,255,0);
  stroke(255,0,0);
  circle(x,y,2*d);
  
  eye(x-20,y-10);
  eye(x+20,y-10);
  lip(x,y+15);
  sunleaf_line(x,y,d);
  sunleaf_color(x,y,d);
}
