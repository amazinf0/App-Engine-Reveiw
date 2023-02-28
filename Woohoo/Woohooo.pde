//Global Variables
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer song1, song2, HectorBoom, Saul;
color green=#00FF00,buttonFill, White=#FFFFFF, blue= #00FFFF, backgroundColor, black=#000000, red=#FF0000, yellow=#FFFF00, brown=#643200;
Boolean StartBON=false, StartBON1=false, OkBON=false, AcceptBON=false, DeclineBON=false, OkBON1=false, OkBON2=false, OkBON3=false, OS_on=false;
Boolean PPON=false, StopON=false, FastFON=false, FastRON=false, MuteON=false, LoopON=false,song=true, App=false, musical=false, musical1=false;
float quitX, quitY, QuitButtonW, QuitButtonH;
PImage Cursor;
//
void setup() {
  size(1200, 700);
  minim = new Minim(this);
  song1 = minim.loadFile("../");
  song2 = minim.loadFile("../");
  
  display();              
  populationVariables();
  nightMode();
  background(backgroundColor);
}//End setup
//
void draw() {
  Cursors();
  //Hover-over start button 1
  if ( mouseX> PathX && mouseX< PathX+PathW && mouseY> PathY && mouseY< PathY+PathH ) {
    buttonFill = black;
  } else {
    buttonFill = red;
  }//End Hover-over
  fill(buttonFill); //2-colors to start , remember nightMode adds choice
  rect(PathX, PathY, PathW, PathH);
  //Hover-over start button 2
  if ( mouseX> PathX1 && mouseX< PathX1+PathW1 && mouseY> PathY1 && mouseY< PathY1+PathH1 ) {
    buttonFill = black;
  } else {
    buttonFill = red;
  }//End Hover-over
  fill(buttonFill); 
  rect(PathX1, PathY1, PathW1, PathH1);
  //
  fill(White);
  //
  
  tint(255, 255);
  nightMode();
  //
  if ( mouseX> quitX && mouseX< quitX+QuitButtonW && mouseY> quitY && mouseY< quitY+QuitButtonH ) {
    buttonFill = green;
  } else {
    buttonFill = red;
  }//End Hover-over
  fill(buttonFill);
  rect(quitX, quitY, QuitButtonW, QuitButtonH);
  fill(White);
  
  //First Start Choice
  //
  if ( StartBON==true ) {
    fill(backgroundColor);
    rect( PathX1, PathY1, PathW1, PathH1 );
    fill(White);
    //Hover-over OK BUTTON
    if ( mouseX> OkX && mouseX< OkX+OkW && mouseY> OkY && mouseY< OkY+OkH ) {
      buttonFill = green;
    } else {
      buttonFill = yellow;
    }//End Hover-over OK BUTTON
    fill(buttonFill); 
    rect(OkX, OkY, OkW, OkH);
    
    tint(255, 255);
    nightMode();
    
  }//End START Button 1
  //
  if ( OkBON==true ) {
    fill(backgroundColor);
    rect( PathX1, PathY1, PathW1, PathH1 );
    fill(White);
    fill(green);
    rect(AcceptBX, AcceptBY, AcceptBW, AcceptBH);    
    fill(red);
    rect(DeclineX, DeclineY, DeclineW, DeclineH);
    
  }//End Button 4th Rect
  //
  if ( DeclineBON==true ) {
    fill(backgroundColor);
    rect( PathX1, PathY1, PathW1, PathH1 );
    fill(White);
   
    }
  //
  if ( AcceptBON==true ) {
    fill(backgroundColor);
    rect( PathX1, PathY1, PathW1, PathH1 );
    fill(White);
    nightMode();
  }
  //Second Start Choice
  if ( StartBON1==true ) {
    fill(backgroundColor);
    rect( PathX, PathY, PathW, PathH );
    fill(White);
    nightMode();
    if ( mouseX> ThinkerX && mouseX< ThinkerX+ThinkerW && mouseY> ThinkerY && mouseY< ThinkerY+ThinkerH ) {
      buttonFill = green;
    } else {
      buttonFill = yellow;
    }
    fill(buttonFill);
    rect(ThinkerX, ThinkerY, ThinkerW, ThinkerH);
    fill(White);
  }//End Start Button 2
  //
  if ( OkBON1==true ) {
    fill(backgroundColor);
    rect( PathX, PathY, PathW, PathH );
    fill(White);
    nightMode();
    if ( mouseX> YummerX && mouseX< YummerX+YummerW && mouseY> YummerY && mouseY< YummerY+YummerH ) {
      buttonFill = green;
    } else {
      buttonFill = yellow;
    }
    fill(buttonFill);
    rect(YummerX, YummerY, YummerW, YummerH);
    fill(White);
  }//End okButton7
  //
  if ( OkBON2==true ) {
    fill(backgroundColor);
    rect( PathX, PathY, PathW, PathH );
    fill(White);
    tint(255, 255);
    nightMode();
    HectorBoom.play();
  }
  //
  //Music Player
  //
  //
  if ( mouseX> PPX && mouseX< PPX+PPW && mouseY> PPY && mouseY< PPY+PPH ) {
      buttonFill = blue;
    } else {
      buttonFill = red;
    }
    fill(buttonFill);
  rect(PPX, PPY, PPW, PPH);
  //
  if ( PPON==true ) {
     Saul.play();
    }
  //
  if ( mouseX> StopX && mouseX< StopX+StopW && mouseY> StopY && mouseY< StopY+StopH ) {
      buttonFill = blue;
    } else {
      buttonFill = red;
    }
    fill(buttonFill);
  rect(StopX, StopY, StopW, StopH);
  //
  if ( StopON==true ) {
    if (song1.isPlaying()) {
      song1.pause();
      song1.rewind();
      song1.play();
      StopON=false;
    } else if (song2.isPlaying()==false) {
      song1.rewind();
      song1.play();
      StopON=false;
    }
    if (song2.isPlaying()) {
      song2.pause();
      song2.rewind();
      song2.play();
      StopON=false;
    } else if (song1.isPlaying()==false) {
      song2.rewind();
      song2.play();
      StopON=false;
    }
  }
  
  if ( mouseX> FastFX && mouseX< FastFX+FastFW && mouseY> FastFY && mouseY< FastFY+FastFH ) {
      buttonFill = blue;
    } else {
      buttonFill = red;
    }
    fill(buttonFill);
  rect(FastFX, FastFY, FastFW, FastFH);
  //
  if ( FastFON==true ) {
    if (song1.isPlaying()) {
      song1.skip(5000);
      FastFON=false;
    }
    if (song2.isPlaying()) {
      song2.skip(5000);
      FastFON=false;
    }
  }
  //
  if ( mouseX> FastRX && mouseX< FastRX+FastRW && mouseY> FastRY && mouseY< FastRY+FastRH ) {
      buttonFill = blue;
    } else {
      buttonFill = red;
    }
    fill(buttonFill);
  rect(FastRX, FastRY, FastRW, FastRH);
  //
  if ( FastRON==true ) {
    if (song1.isPlaying()) {
      song1.skip(-5000);
      FastRON=false;
    }
    if (song2.isPlaying()) {
      song2.skip(-5000);
      FastRON=false;
      
    }
  }
  //
  if ( mouseX> MuteX && mouseX< MuteX+MuteW && mouseY> MuteY && mouseY< MuteY+MuteH ) {
      buttonFill = blue;
    } else {
      buttonFill = red;
    }
    fill(buttonFill);
  rect(MuteX, MuteY, MuteW, MuteH);
  //
  if ( MuteON==true ) {
    if (song1.isPlaying()) {
      if (song1.isMuted()) {
        song1.unmute();
        MuteON=false;
      } else {
        song1.mute();
        MuteON=false;
      }
    }
    if (song2.isPlaying()) {
      if (song2.isMuted()) {
        song2.unmute();
        MuteON=false;
      } else {
        song2.mute();
        MuteON=false;
      }
    }
  }
  //
  if ( mouseX> LoopX && mouseX< LoopX+LoopW && mouseY> LoopY && mouseY< LoopY+LoopH ) {
      buttonFill = blue;
    } else {
      buttonFill = red;
    }
    fill(buttonFill);
  rect(LoopX, LoopY, LoopW, LoopH);
  //
   if ( LoopON==true ) {
  if (song1.isPlaying()) {
      song1.loop(-1);
      LoopON=false;
    }
    if (song2.isPlaying()) {
      song2.loop(-1);
    LoopON=false;
   }
   }
   //
   if ( mouseX> musicX && mouseX< musicX+musicW && mouseY> musicY && mouseY< musicY+musicH ) {
      buttonFill = blue;
    } else {
      buttonFill = red;
    }
    fill(buttonFill);
  rect(musicX, musicY, musicW, musicH);
  //
  if (musical==true){
    
    song2.pause();
    song2.rewind();
    if (song) {
      if (song1.isPlaying()) {
        song1.pause();
        musical=false;
      } else if (song1.position()>= song1.length()*4/5) {
        song1.rewind();
        song1.play();
        musical=false;
      } else {
        song1.play();
        musical=false;
      }
    }
  }
  //
  if ( mouseX> musicX1 && mouseX< musicX1+musicW1 && mouseY> musicY1 && mouseY< musicY1+musicH1 ) {
      buttonFill = blue;
    } else {
      buttonFill = red;
    }
    fill(buttonFill);
  rect(musicX1, musicY1, musicW1, musicH1);
  //
  if (musical1==true){
    
    song1.pause();
    song1.rewind();
    if (song) {
      if (song2.isPlaying()) {
        song2.pause();
        musical1=false;
      } else if (song2.position()>= song2.length()*4.5/5) {
        song2.rewind();
        song2.play();
        musical1=false;
      } else {
        song2.play();
        musical1=false;
      }
    }
  }
}
  //
//End draw
//
void keyPressed() {
  if (OS_on && key==' ') {
    App=true;
    OS_on=false;
  }
  if (key=='e' || key=='E') exit();
}//End keyPressed
//
void mousePressed() {
  if (OS_on==false && App==false) OS_on=true;
  StartBON=false;
  StartBON1=false;
  OkBON=false;
  AcceptBON=false;
  DeclineBON=false;
  OkBON1=false;
  OkBON2=false;
  //
  PPON=false;
  StopON=false;
  FastFON=false;
  FastRON=false;
  MuteON=false;
  LoopON=false;
     Functions();
}//End mousePressed
//
//End MAIN Program
