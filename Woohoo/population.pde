//Global Variables
float HomeW, HomeH;
float HomeX, HomeY, HomeX1, HomeY1, HomeX2, HomeY2, HomeX3, HomeY3, HomeX4, HomeY4, HomeX5, HomeY5, HomeX6, HomeY6, HomeX7, HomeY7, HomeX8, HomeY8;
float PathX, PathY, PathW, PathH;
float PathX1, PathY1, PathW1, PathH1;
float OkX, OkY, OkW, OkH;
float AcceptBX, AcceptBY, AcceptBW, AcceptBH;
float DeclineX, DeclineY, DeclineW, DeclineH;
float StartX, StartY, StartW, StartH;
float ThinkerX, ThinkerY, ThinkerW, ThinkerH;
float YummerX, YummerY, YummerW, YummerH;
float PPX, PPY, PPW, PPH;
float StopX, StopY, StopW, StopH;
float FastFX, FastFY, FastFW, FastFH;
float FastRX, FastRY, FastRW, FastRH;
float MuteX, MuteY, MuteW, MuteH;
float LoopX, LoopY, LoopW, LoopH;
float musicX, musicY, musicW, musicH;
float musicX1, musicY1, musicW1, musicH1;
//
void populationVariables() {
  HomeW = width*1/3;
  HomeH = height*1/3;
  HomeX = width*0;
  HomeY = height*0;
  //
  HomeX1 = HomeW;
  HomeY1 = HomeY;
  //
  HomeX2 = HomeW*2;
  HomeY2 = HomeY;
  //
  HomeX3 = HomeX;
  HomeY3 = HomeH;
  //
  HomeX4 = HomeX1;
  HomeY4 = HomeH;
  //
  HomeX5 = HomeX2;
  HomeY5 = HomeH;
  //
  HomeX6 = HomeX;
  HomeY6 = HomeH*2;
  //
  HomeX7 = HomeX1;
  HomeY7 = HomeY6;
  //
  HomeX8 = HomeX2;
  HomeY8 = HomeY6;
  //
  PathX = HomeX4;
  PathY = HomeY4*0.67;
  PathW = width*0.67/6;
  PathH = height*0.98/9; //height*0.98/9;
  //
  PathX1 = HomeX4*1.665; //width*1/6;
  PathY1 = HomeY4*0.67;
  PathW1 = width*0.67/6;
  PathH1 = height*0.98/9;
  //
  OkX = HomeX3;
  OkY = HomeY3+HomeH*5/6;
  OkW = HomeW;
  OkH = HomeH*1/6;
  //
  AcceptBX = HomeX;
  AcceptBY = HomeY+HomeH*5/6;
  AcceptBW = HomeW;
  AcceptBH = HomeH*1/6;
  //
  DeclineX = HomeX+HomeW*1/2;
  DeclineY = HomeY+HomeH*5/6;
  DeclineW = HomeW/2;
  DeclineH = HomeH*1/6;
  //
  StartX = HomeX1;
  StartY = HomeY1;
  StartW = HomeW/2;
  StartH = HomeH*0.334;
  //
  quitX = HomeX1*1.5;
  quitY = HomeY1;
  QuitButtonW = HomeW/2;
  QuitButtonH = HomeH*0.334;
  //
  PPX = HomeX+HomeW;
  PPY = HomeY+HomeH/3;
  PPW = HomeW*1/5.805;
  PPH = HomeH*0.337;
  //
  StopX = HomeX+HomeW*1.17;
  StopY = HomeY+HomeH/3;
  StopW = HomeW*1/6;
  StopH = HomeH*0.337;
  //
  FastFX = HomeX+HomeW*1.335;
  FastFY = HomeY+HomeH/3;
  FastFW = HomeW*1/6;
  FastFH = HomeH*0.337;
  //
  musicX = HomeX+HomeW*1.335;
  musicY = HomeY4*0.67;
  musicW = HomeW*1/6;
  musicH = height*0.98/9;
  //
  FastRX = HomeX+HomeW*1.5;
  FastRY = HomeY+HomeH/3;
  FastRW = HomeW*1/6;
  FastRH = HomeH*0.337;
  //
  musicX1 = HomeX+HomeW*1.5;
  musicY1 = HomeY4*0.67;
  musicW1 = HomeW*1/6;
  musicH1 = height*0.98/9; 
  //
  MuteX = HomeX+HomeW*1.666;
  MuteY = HomeY+HomeH/3;
  MuteW = HomeW*1/6;
  MuteH = HomeH*0.337;
  //
  LoopX = HomeX+HomeW*1.833;
  LoopY = HomeY+HomeH/3;
  LoopW = HomeW*1/5.93;
  LoopH = HomeH*0.337;
  //
  ThinkerX = HomeX6;
  ThinkerY = HomeY6+HomeH*2/3;
  ThinkerW = HomeW*1/4;
  ThinkerH = HomeH*1/3;
  //
  YummerX = HomeX7;
  YummerY = HomeY7+HomeH*2/3;
  YummerW = HomeW*1/4;
  YummerH = HomeH*1/3;
  //
}
//End Population
