void intro() {////
  background(255, 0, 0);
  fill(255);
  //........................
  image(gif.get(n), 0, 0, 800, 800);

  if (frameCount % 2 == 0) {
    n = n + 1;
  }
  if (n > 89) {
    n = 0;
  }
  //..............................
  textFont(Inversionz);
  textSize (100);
  text ("color game", 400, 400);

  textSize (30);
  text ( " Highest Score:", 150, 100);   

  textSize (30);
  //textFont (numbers);
  text (highestscore, 320, 100);
}////////////////


void introclicks() {//..............

  mode = game;
}//.................................
