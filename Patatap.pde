import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//minimライブラリのインポート
Minim minim;//minimオブジェクトの宣言
int soundNum=4;
AudioSample[] se = new AudioSample[soundNum];//音用の配列

ArrayList<Anime> animes=new ArrayList<Anime>();
int maxAnimeSize=32;
color bgColor;

void setup() {
  size(800, 600);
  minim = new Minim(this);//minimの実体化
  for (int i=0; i<4; i++) {//音データの読み込み処理
    String sename="se"+i+".wav";
    println(sename);
    se[i]=minim.loadSample(sename);
  }
  se[0].trigger();//配列の番号を変える
}

void draw() {
  background(0);
  if (animes.size()>0) {
    for (int i=0; i<animes.size(); i++) {
      Anime ani= animes.get(i);
      ani.draw();
    }
  }
  
  if(animes.size()>maxAnimeSize){
    animes.remove(0);
  }
}

void keyPressed() {
  if (key=='a') {
    se[0].trigger();
    animes.add(new Anime_a());
  }
  if (key=='s') {
    se[1].trigger();
    animes.add(new Anime_b());
  }
  if (key=='d') {
    se[2].trigger();
    animes.add(new Anime_c());
  }
  if (key=='f') {
    se[3].trigger();
    animes.add(new Anime_d());
  }
  if (key=='g') {
    se[2].trigger();
    animes.add(new Anime_e());
  }
  if (key=='h') {
    se[3].trigger();
    animes.add(new Anime_f());
  }

  bgColor=randomColor();
}

color randomColor() {
  int r=int(random(255));
  int g=int(random(255));
  int b=int(random(255));

  return color(r, g, b);
}
