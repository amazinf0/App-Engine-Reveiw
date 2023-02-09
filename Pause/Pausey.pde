//Global Variables
float pauseX1, pauseY1, pauseW1, pauseH1;
float pauseX2, pauseY2;
//
void setup() {
  //
  size(700, 400);
  //Population
  float centerX = width * 1/2
  pauseX1 = centerX - width - width*1/2;
  pauseY1 = height;
  pauseW1 = width;
  pauseH1 = height;
  pauseX2 = centerX + width*1/2;
  pauseY2 = height;
}
//
void draw(){
  rect(pauseX1, pauseY1, pauseW1, pauseH1);
  rect(pauseX2, pauseY2, pauseW1, pauseH1);
}
//
void keyPressed() {
}
//
void mousePressed() {
}
//Done
