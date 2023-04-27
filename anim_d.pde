public class Anime_d extends Anime {
  float speed=-2;
  color bgColor=255;
  Anime_d() {//コンストラクタ
  }
  @Override
    void draw() {
    noStroke();
    fill(bgColor);
    rect(0, 0, width, height);
    bgColor+=speed;
  }
}
