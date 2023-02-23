//Global Variables
Boolean ProblemFound = false, PortraitC = false;//C=CANVAS
String Option3 = "", Option4 = "";
void display() {
  
  //Checks if CANVAS fits in monitor
  println("The Program's Width And Height Is" , +width, "by " +height, "\t Your Display Width And Height Is" , +displayWidth, "by " +displayHeight);
  if (width > displayWidth || height > displayHeight) {ProblemFound = true; Option3 = "The CANVAS does not fit the monitor size \t";}
  
  //Checks if it's in portrait or landscape
  if (width < height) {ProblemFound = true; PortraitC = true; Option4 = "The CANVAS is in portrait mode";}
  if (PortraitC) {println("The Program Is In Portrait");} else {println("The Program Is Landscape Or Square");}
  
  //Checks and says Dimensions
  if (width > height) {println("The Bigger Size Is Width Which Is", +width, ". The Smaller Size Is Height Which Is", +height);}
  else {println("The Bigger Sise Is Height Which Is", +height, " The Smaller Size Is Width Which Is", +width);}
  
  //If a problem is found, program is closed
  if (ProblemFound) {
  println("Problem Found, The Issue Is The Following; \t", Option3 , Option4);
  exit ();
  } else {println("No Issues Found");}
}
