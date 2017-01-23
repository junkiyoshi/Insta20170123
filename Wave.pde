class Wave
{
  float radius;
  int point;
  int angle;
  color lineColor;
  
  Wave(float r, int p,int a)
  {
    radius = r;
    point = p;
    angle = a;
    lineColor = color(frameCount % 255, 255, 255);
  }
  
  void write(PVector center)
  {
    radius -= 1;
    angle += 1;
    
    PVector[] points = new PVector[point];
    
    for(int i = 0; i < point; i++)
    {
      float x = radius * cos(radians(i * (360 / point) + angle));
      float y = radius * sin(radians(i * (360 / point) + angle));
      
      points[i] = new PVector(x, y);
    }
    
    stroke(lineColor);
    strokeWeight(2);
    noFill();
    
    pushMatrix();
    translate(center.x, center.y);
        
    beginShape();
    for(int i = 0; i < point; i++)
    {
      vertex(points[i].x, points[i].y);
    }
    endShape(CLOSE);
    
    popMatrix();
  }
}