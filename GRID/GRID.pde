int x = 40;
int y = 40;
int x1 = 20;
int y1 = 20;
int grid_num = 0;
int rotate = 0;
int timer = 0;
boolean reset = false;
void setup() 
{
  size(800, 800);
  background(180,220,220);
}
void mousePressed()
{
  grid_num += 1;
  reset = true;
  if (grid_num > 2)
  {
    grid_num = 0;
    timer = 5; 
  }
}
void draw() 
{
  if (grid_num == 0) Grid_0();
  if (grid_num == 1) Grid_1();
  if (grid_num == 2) Grid_2();
  if (reset)
  {
    clear();
    timer -= 1;
    background(180,220,220);
    if (timer <= 0) reset = false;
  }
}    
void Grid_0 ()
{
  for (int i = 0; i < 10; i++)
  {
    y = 40;
    rectMode(CENTER);
    fill(random(183,248),random(232,255),random(183,225));
    rect(x,y,40,40);
    ellipse(x,y,40,40);
    for (i = 0; i < 10; i++)
    {
      y += 80;
      fill(random(183,248),random(232,255),random(183,225));
      rect(x,y,40,40);
      ellipse(x,y,40,40);
    }
    x += 80;
    if (x > 800 && y > 800)
    {
      x = 40;
      y = 40;
    }
  }
}
void Grid_1 ()
{
  for (int i = 0; i < 30; i+=1)
  {
    y1 = 0;
    rectMode(CENTER);
    fill(random(183,248),random(232,255),random(183,225));
    rect(x1,y1,40,40);
    for (int j = 0; j < 30; j+=1)
    {
      y1 += random(30,40);
      fill(random(183,248),random(232,255),random(183,225));
      rect(x1,y1,40,40);
    }
    x1 += random(30,40);
    if (x1 > 800 && y1 > 800)
    {
      x1 = 0;
      y1 = 0;
    }
  }
}
void Grid_2 ()
{
  for (int i = 0; i < 10; i+=2)
  {
    y = 80;
    rectMode(CENTER);
    fill(random(183,248),random(232,255),random(183,225));
    line(x,y,40,40);
    for (int j = 0; j < 10; j+=1)
    {
      y += 80;
      fill(random(183,248),random(232,255),random(183,225));
      line(x,y,40,40);
    }
    x += 80;
    if (x > 800 && y > 800)
    {
      x = 40;
      y = 40;
    }
  }
}
