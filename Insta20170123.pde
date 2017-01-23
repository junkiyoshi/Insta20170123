ArrayList<Wave> waves;
PVector center;
int point;

void setup()
{
  size(512, 512);
  frameRate(30);
  background(0);
  colorMode(HSB);
  
  waves = new ArrayList<Wave>();
  center = new PVector(width / 2, height / 2);
  point = 5;
}

void draw()
{
  background(0);
  
  if(frameCount % 4 == 0)
  {
    waves.add(new Wave(width, point, 0));
  }
  
  for(Wave w : waves)
  {
    w.write(center);
  }
  
  println(frameCount);
  /*
  saveFrame("screen-#####.png");
  if(frameCount > 1800)
  {
     exit();
  }
  */
}

void mouseMoved()
{
  //center = new PVector(mouseX, mouseY);
}

void mouseClicked()
{
  point += 1;
}