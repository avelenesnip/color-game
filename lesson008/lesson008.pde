ArrayList<PImage> gif; //declaration // String zero;//if (i<10) { zero = "0"; } else { zero = "";
int i = 0;
int n = 0;
String zero;
/////////////////////////////////////////////////////////////

PFont loud;
PFont Inversionz;
PFont numbers;




int mode;


int time = 300;


final int intro    = 0;
final int game     = 1;
final int gameover = 2;

//int color;

color red    = #FF0000;  
color orange = #FF7F50;
color yellow = #FFFF00; 
color green  = #7CFC00;
color blue   = #00BFFF;  
color purple = #8A2BE2;  

int highestscore;


void setup () {/////////

  size (800, 800);

  //..................

  gif = new ArrayList<PImage>(90); // construction of the list

  while ( i <= 89) {

    if ( i < 10) {
      zero = "0";
    } else {
      zero = "";
    }
    
    PImage temp = loadImage ("frame_"+ zero + i +"_delay-0.04s.gif");//declare point
  gif.add(temp);// add point to list
  i = i + 1;
    
  }

  

  //..................
  
  loud = createFont ("loud.ttf", 100);
  Inversionz = createFont ("Inversionz.otf", 100);
  numbers = createFont ("numbers.ttf", 100);


  textAlign(CENTER, CENTER);
}///////////////////////


void draw () {//////////

  if (mode == intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == gameover) {
    gameover();
  } else {
    println("MODE ERROR" + mode);
  }
}///////////////////////

void mouseReleased() {//...

  if (mode == intro) {
    introclicks();
  } else if (mode == game) {
    gameclicks();
  } else if (mode == gameover) {
    gameoverclicks();
  } else {
    println("MODE ERROR" + mode);
  }
}//........................
