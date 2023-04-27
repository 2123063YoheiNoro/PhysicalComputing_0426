public class Anime_b extends Anime {
  float x=0;
  float speed=80;//利用するグローバル変数
  color cont_color;
  Anime_b() {//コンストラクタ
    cont_color= color(int(random(0, 255)), int(random(0, 255)), int(random(0, 255)));
  }
  @Override
    void draw() {
    noStroke();
    rectMode(CORNER);
    fill(cont_color);
    rect(0, 0, x, height);
    x += this.speed;
  }
}
