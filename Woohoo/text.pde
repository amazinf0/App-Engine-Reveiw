//Global Variables
int NormalSize = 25, smallSize = 20, bigSize = 35;
PFont Font, Font1, Bold, Font2, Font3;
String BeginT = "Start/Restart";
float BeginTX, BeginTY, BeginTW, BeginTH;
String Option1 = "Walter";
float Option1X, Option1Y, Option1W, Option1H;
String Option2 = "Gustavo";
float Option2X, Option2Y, Option2W, Option2H;
String Teach = "You're A Highschool Chemistry Teacher";
float TeachX, TeachY, TeachW, TeachH;
String Delight = "Delightful!";
float DelightX, DelightY, DelightW, DelightH;
String Student = "Your Former Student Wants To Start A Business With You";
float StudentX, StudentY, StudentW, StudentH;
String AcceptT = "Accept";
float AcceptTX, AcceptTY, AcceptTW, AcceptTH;
String DeclineT = "Decline";
float DeclineTX, DeclineTY, DeclineTW, DeclineTH;
String CancerT = "You Died 2 Years Later To Lung Cancer";
float CancerTX, CancerTY, CancerTW, CancerTH;
String Money = "You Went On To Make Millions And Died 42 Years Later";
float MoneyTX, MoneyTY, MoneyTW, MoneyTH;
String Business = "You Started A Meth Business";
float BusinessX, BusinessY, BusinessW, BusinessH;
String Thinking = "Hmm";
float ThinkingX, ThinkingY, ThinkingW, ThinkingH;
String Chicken = "You Started A Chicken Business To Launder The Money";
float ChickenX, ChickenY, ChickenW, ChickenH;
String Yummeries = "Yum";
float YummyX, YummyY, YummyW, YummyH;
String Jail = "An Old Guy Blew You Up";
float JailX, JailY, JailW, JailH;
String quitText = "Exit (E)";
float QuitTX, QuitTY, QuitTW, QuitTH;
PFont QuitF;
String PlayText = "Saul";
String EndText = "Reset";
String ForwardText = "Forward";
String BackwardText = "Rewind";
String ShutText = "Mute";
String ReplayText = "Loop";
String MusicText = "Song 1";
String MusicText1 = "Song 2";
//
void Option1() {
  //Population
  Option1X = PathX;
  Option1Y = PathY;
  Option1W = PathW;
  Option1H = PathH;
  Font = createFont("TimesNewRomanPS-BoldItalicMT", 600);
  //
  textAlign(CENTER, CENTER);
  textFont(Font, NormalSize);
  text(Option1, Option1X, Option1Y, Option1W, Option1H);
}
//
void Option2() {
  //Population
  Option2X = PathX1;
  Option2Y = PathY1;
  Option2W = PathW1;
  Option2H = PathH1;
  //
  textAlign(CENTER, CENTER);
  textFont(Font, NormalSize);
  text(Option2, Option2X, Option2Y, Option2W, Option2H);
}
//
void Teach() {
  //Population
  TeachX = HomeX3;
  TeachY = HomeY3;
  TeachW = HomeW;
  TeachH = HomeH/3;
  Font1 = createFont("TimesNewRomanPSMT", 603);
  //
  fill(White);
  textAlign(CENTER, CENTER);
  textFont(Font1, NormalSize);
  text(Teach, TeachX, TeachY, TeachW, TeachH);
  fill(White);
}
//
void Delight() {
  //Population
  DelightX = OkX;
  DelightY = OkY;
  DelightW = OkW;
  DelightH = OkH;
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(Font, NormalSize);
  text(Delight, DelightX, DelightY, DelightW, DelightH);
  fill(White);
}
//
void Student() {
  //Population
  StudentX = HomeX;
  StudentY = HomeY;
  StudentW = HomeW;
  StudentH = HomeH*1/3;
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(Font1, NormalSize);
  text(Student, StudentX, StudentY, StudentW, StudentH);
  fill(White);
}
//
void Accept() {
  //Population
  AcceptTX = HomeX;
  AcceptTY = AcceptBY;
  AcceptTW = AcceptBW/2;
  AcceptTH = AcceptBH;
  Bold = createFont("TimesNewRomanPS-BoldMT", 601);
  //
  fill(White);
  textAlign(CENTER, CENTER);
  textFont(Font1, NormalSize); 
  text(AcceptT, AcceptTX, AcceptTY, AcceptTW, AcceptTH);
}
//
void DeclineT() {
  //Population
  DeclineTX = DeclineX;
  DeclineTY = DeclineY;
  DeclineTW = DeclineW;
  DeclineTH = DeclineH;
  //
  fill(White);
  textAlign(CENTER, CENTER);
  textFont(Font1, NormalSize); //CHANGE TO BOLD
  text(DeclineT, DeclineTX, DeclineTY, DeclineTW, DeclineTH);
}
//
void CancerT() {
  CancerTX = HomeX5;
  CancerTY = HomeY5/1.2;
  CancerTW = HomeW/2;
  CancerTH = HomeH*3/5;
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(Font1, smallSize);
  text(CancerT, CancerTX, CancerTY, CancerTW, CancerTH);
  fill(White);
}
//
  void Money() {
  MoneyTX = HomeX2;
  MoneyTY = HomeY2;
  MoneyTW = HomeW/2.6;
  MoneyTH = HomeH;
  //
  fill(blue);
  textAlign(CENTER, CENTER);
  textFont(Font1, NormalSize);
  text(Money, MoneyTX, MoneyTY, MoneyTW, MoneyTH);
  fill(White);
}//End Money()
//
void BeginT() {
  //Population
  BeginTX = StartX;
  BeginTY = StartY;
  BeginTW = StartW;
  BeginTH = StartH;
  //
  textAlign(CENTER, CENTER);
  textFont(Font, bigSize);
  text(BeginT, BeginTX, BeginTY, BeginTW, BeginTH);
}
//
void Business() {
  //Population
  BusinessX = HomeX6;
  BusinessY = HomeY6; 
  BusinessW = HomeW;
  BusinessH = HomeH;
  //
  textAlign(CENTER, TOP);
  textFont(Font, NormalSize);
  fill(red);
  text(Business, BusinessX, BusinessY, BusinessW, BusinessH);
  fill(White);
}
//
void Thinking() {
  //Population
  ThinkingX = ThinkerX;
  ThinkingY = ThinkerY;
  ThinkingW = ThinkerW;
  ThinkingH = ThinkerH;
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(Font, bigSize);
  text(Thinking, ThinkingX, ThinkingY, ThinkingW, ThinkingH);
  fill(White);
}
//
void Chicken() {
  //Population
  ChickenX = HomeX7;
  ChickenY = HomeY7/1.25; 
  ChickenW = HomeW;
  ChickenH = HomeH;
  Font3= createFont("Impact", 281);
  //
  textAlign(CENTER, CENTER);
  textFont(Font3, smallSize);
  fill(red);
  text(Chicken, ChickenX, ChickenY, ChickenW, ChickenH);
}
//
void Yummeries() {
  //Population
  YummyX = YummerX;
  YummyY = YummerY;
  YummyW = YummerW;
  YummyH = YummerH;
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(Font, bigSize);
  text(Yummeries, YummyX, YummyY, YummyW, YummyH);
  fill(White);
}
//
void Jail() {
  //Population
  JailX = HomeX8;
  JailY = HomeY8; 
  JailW = HomeW;
  JailH = HomeH;
  //
  textAlign(CENTER, TOP);
  textFont(Font, NormalSize);
  fill(red);
  text(Jail, JailX, JailY, JailW, JailH);
  fill(White);}
  //
 void quitText() {
  //Population
  QuitTX = StartX*1.5;
  QuitTY = StartY;
  QuitTW = StartW;
  QuitTH = StartH;
  //
  textAlign(CENTER, CENTER);
  textFont(Font, bigSize);
  text(quitText, QuitTX, QuitTY, QuitTW, QuitTH);
}
//
void PlayPause() {
  Font1 = createFont("TimesNewRomanPSMT", 603);
  fill(White);
  textAlign(CENTER, CENTER);
  textFont(Font1, smallSize);
  text(PlayText, PPX, PPY, PPW, PPH);
  fill(White);
}
  //
  void Ending() {
  fill(White);
  textAlign(CENTER, CENTER);
  textFont(Font1, smallSize);
  text(EndText, StopX, StopY, StopW, StopH);
  fill(White);
  }
  //
  void FastForward() {
  fill(White);
  textAlign(CENTER, CENTER);
  textFont(Font1, 18);
  text(ForwardText, FastFX, FastFY, FastFW, FastFH);
  fill(White);
  }
  //
  void FastRewind() {
  fill(White);
  textAlign(CENTER, CENTER);
  textFont(Font1, smallSize);
  text(BackwardText, FastRX, FastRY, FastRW, FastRH);
  fill(White);
  }
  //
  void Shut() {
  fill(White);
  textAlign(CENTER, CENTER);
  textFont(Font1, smallSize);
  text(ShutText, MuteX, MuteY, MuteW, MuteH);
  fill(White);
  }
  //
  void Loop() {
  fill(White);
  textAlign(CENTER, CENTER);
  textFont(Font1, smallSize);
  text(ReplayText, LoopX, LoopY, LoopW, LoopH);
  fill(White);
  }
  //
  void songy1() {
  Font1 = createFont("TimesNewRomanPSMT", 603);
  fill(White);
  textAlign(CENTER, CENTER);
  textFont(Font1, smallSize);
  text(MusicText, musicX, musicY, musicW, musicH);
  fill(White);
}
//
void songy2() {
  Font1 = createFont("TimesNewRomanPSMT", 603);
  fill(White);
  textAlign(CENTER, CENTER);
  textFont(Font1, smallSize);
  text(MusicText1, musicX1, musicY1, musicW1, musicH1);
  fill(White);
}
//

//End Text
