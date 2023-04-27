public class Anime_a extends Anime {
  float x=width/2;
  float y=height/2;
  float diameter=0;
  float speed=10;
  color cont_color;
  Anime_a() {//コンストラクタ
    cont_color= color(int(random(0, 255)), int(random(0, 255)), int(random(0, 255)));
  }
  @Override
    void draw() {
    noStroke();
    fill(cont_color);
    ellipse(x, y, diameter, diameter);
    diameter += this.speed;
  }
}
