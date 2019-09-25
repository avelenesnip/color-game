String [] words = { "red", "orange", "yellow", "green", "blue", "purple"};
color [] colors = { red, orange, yellow, green, blue, purple};

int balancer = int (random(1, 3));

int choicewo = int (random(0, 6));
int choiceco = int (random(0, 6));

boolean match;
int points = 0;



void game() {////////////////



  if ( balancer == 2 && choicewo == choiceco) {
    
    choicewo = int (random(0, 5));
    choiceco = int (random(0, 5));
  } 

  if ( balancer == 1) { 
    choicewo = choiceco;
  }


  //////////////////////////////////////
  background (0, 255, 0);

  fill(0);

  textSize (100);

  rect ( 00, 00, 400, 800);

  fill (255);

  rect (400, 00, 400, 800);

  text ("TRUE", 200, 100);

  fill(0);

  text ("FALSE", 600, 100);



  text (points, 700, 700);

  fill( 0, 255, 0);
  /////////////////////////////////////////

  time = time - 1;
  rect ( 0, 760, time, 30);
  if (time < 0) {
    mode = gameover;
  }

  ///////////////////////////////////////   
  words [0] = "red";
  words [1] = "orange";
  words [2] = "yellow";
  words [3] = "green";
  words [4] = "blue";      
  words [5] = "purple";

  colors [0] = red;
  colors [1] = orange;
  colors [2] = yellow;
  colors [3] = green;
  colors [4] = blue;      
  colors [5] = purple;
  ///////////////////////////////////////

  fill(colors[choiceco]);
  text (words[choicewo], width/2, height/2);

  ///////////////////////////////////////


  if (choiceco == choicewo) {
    match = true;
  } else {
    match = false;
  }


  if (points == highestscore || points > highestscore) {

    highestscore = points;
  }
}///////////////////////////
//////////////////////////////

void gameclicks () {//..........

 balancer = int (random(1, 3));


  if (mouseX < 400 && match == true) {
    points = points + 1; 
    mode = game;
    time = 300;
  }
  if (mouseX > 400 && match == true) {
    mode = gameover;
    points = 0;
  }

  if (mouseX > 400 && match == false) {
    points = points + 1;
    mode = game;
    time = 300;
  }

  if (mouseX < 400 && match == false) {

    mode = gameover; 
    points = 0;
  }




  choicewo = int (random(0, 5));
  choiceco = int (random(0, 5));
}//.............................
