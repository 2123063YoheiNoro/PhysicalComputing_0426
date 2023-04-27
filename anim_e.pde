//PG:2123063
//square spreading at random angles

public class Anime_e extends Anime {
  float speed=1;
  float widthRatio=0;
  float rectWidth=0;
  
  float maxAngle=PI;
  float minAngle=0;
  float angle=0;

  color col;


  Anime_e() {
    col=color(int(random(0, 255)), int(random(0, 255)), int(random(0, 255)));
    angle=random(minAngle, maxAngle);
  }

  @Override
    void draw() {
    pushMatrix();
    fill(col);
    noStroke();
    
    translate(width/2, height/2);
    rotate(angle);
    translate(-rectWidth/2, 0);
    
    rect(0, -height, rectWidth, height*2);
    
    popMatrix();
    
    widthRatio+=1.0/60/speed;
    float viewRatio=pow(widthRatio,5);
    rectWidth+=width*2*viewRatio;
  }
}
