import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
String Path = new File("").getAbsolutePath(); //Exported
String directory = "/Users/Abdullah/Documents/GitHub/App-Engine-Reveiw"; //Not exported
//
void setup()
{
  File dir = new File(Path);//NULL if not export
  File[] Filelist;
  if ( dir == null ) {
    dir = new File(directory);
    Filelist = dir.listFiles();
    for (File file : FileList) {
      if ( file.isFile() ) {
        if ( file.toString().endsWith(".mp3") ) {
          songs = minim.loadFile( file.getName() );
        }
      }
    }
  } else {
    FileList = dir.listFiles(); //Exported Folder
    for (File file : FileList) {
      if ( file.isFile() ) {
        if ( file.toString().endsWith(".mp3") ) {
          songs = minim.loadFile( file.getName() );
        }
      }
    }
  }//Catch when NULL, not exported
}//End setup
//
void draw() {
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//ENd mousePressed
//
//End MAIN Program (Driver)
