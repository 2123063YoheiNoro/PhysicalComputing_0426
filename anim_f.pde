//PG:2123063
//bullets spreading in a circle

public class Anime_f extends Anime{
  int quantity=24;
  float moveSpeed=5;
  float angle=0;
  float initialX;
  float initialY;
  
  float[][] coordinates;
  
  color col=color(255,255,255);
  float diameter=10;
  
  Anime_f(){
    angle=random(0,PI/2);
    initialX=random(0,width);
    initialY=random(0,height);
    
    coordinates=new float[quantity][2];
    for(int i=0;i<quantity;i++){
      coordinates[i][0]=initialX;
      coordinates[i][1]=initialY;
    }
  }
  
  @Override
  void draw(){
    pushMatrix();
    fill(col);
    noStroke();
    
    for(int i=0;i<quantity;i++){
      coordinates[i][0]+=moveSpeed*cos(angle+2*i*PI/quantity);
      coordinates[i][1]+=moveSpeed*sin(angle+2*i*PI/quantity);
      
      ellipse(coordinates[i][0],coordinates[i][1],diameter,diameter);
    }
    popMatrix();
  }
}
