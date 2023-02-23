void Functions() {
if (mouseX> quitX && mouseX< quitX+QuitButtonW && mouseY> quitY && mouseY< quitY+QuitButtonH) exit();
  if ( mouseX>=PathX && mouseX<=PathX+PathW && mouseY>=PathY && mouseY<=PathY+PathH ) StartBON=true;
  if ( mouseX>=PathX1 && mouseX<=PathX1+PathW1 && mouseY>=PathY1 && mouseY<=PathY+PathH1 ) StartBON1=true;
  if ( mouseX>=OkX && mouseX<=OkX+OkW && mouseY>=OkY && mouseY<=OkY+OkH ) OkBON=true;
  if ( mouseX>=AcceptBX && mouseX<=AcceptBX+AcceptBW && mouseY>=AcceptBY && mouseY<=AcceptBY+AcceptBH ) {    
    AcceptBON=true;
    DeclineBON=false;
  }
  if ( mouseX>=DeclineX && mouseX<=DeclineX+DeclineW && mouseY>=DeclineY && mouseY<=DeclineY+DeclineH ) {
    DeclineBON=true;
    AcceptBON=false;
  }
  if ( mouseX> ThinkerX && mouseX< ThinkerX+ThinkerW && mouseY> ThinkerY && mouseY< ThinkerY+ThinkerH ) OkBON1=true;
  if ( mouseX> YummerX && mouseX< YummerX+YummerW && mouseY> YummerY && mouseY< YummerY+YummerH ) OkBON2=true;
  if ( mouseX> StartX && mouseX< StartX+StartW && mouseY> StartY && mouseY< StartY+StartH ) {
    fill(backgroundColor);
    fill(White);
  }
if ( mouseX>=PPX && mouseX<=PPX+PPW && mouseY>=PPY && mouseY<=PPY+PPH ) PPON=true;
if ( mouseX>=StopX && mouseX<=StopX+StopW && mouseY>=StopY && mouseY<=StopY+StopH ) StopON=true;
if ( mouseX>=FastFX && mouseX<=FastFX+FastFW && mouseY>=FastFY && mouseY<=FastFY+FastFH ) FastFON=true;
if ( mouseX>=FastRX && mouseX<=FastRX+FastRW && mouseY>=FastRY && mouseY<=FastRY+FastRH ) FastRON=true;
if ( mouseX>=MuteX && mouseX<=MuteX+MuteW && mouseY>=MuteY && mouseY<=MuteY+MuteH ) MuteON=true;
if ( mouseX>=LoopX && mouseX<=LoopX+LoopW && mouseY>=LoopY && mouseY<=LoopY+LoopH ) LoopON=true;
if ( mouseX>=musicX && mouseX<=musicX+musicW && mouseY>=musicY && mouseY<=musicY+musicH ) musical=true;
if ( mouseX>=musicX1 && mouseX<=musicX1+musicW1 && mouseY>=musicY1 && mouseY<=musicY1+musicH1 ) musical1=true;
}
