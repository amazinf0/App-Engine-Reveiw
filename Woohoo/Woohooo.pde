import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
String Path = new File("").getAbsolutePath(); //Exported
String directory = "/Users/Abdullah/Documents/GitHub/App-Engine-Reveiw/Woohoo"; //Not exported.  Change all / to \ otherwise it doesn't work (wow microsoft)
//Reminder: \n is a charater escape so pathway must have forward slashes
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[3];//creates playlist variable holding extensioms WAV, AIFF, AU, SND, and MP3
//
void setup() {
// 
int i = 0;//songs index
minim = new Minim (this); //load from datat directory, loadfile should also load from the project folder
  //I dont know any pf these nor am i excited :)
  File anyDirectory = new File(path); //Used when exported
  println ("Exported Directory", anyDirectory);
  File githubDirectory = new File(directory); //Used when prototyping
  File[] FileListAnyDirectory = anyDirectory.listFiles();
  printArray(FileListAnyDirectory);
  println("Items In FileList", FileListAnyDirectory.length);
  //Four Loop
  for (File file : FileListAnyDirectory){
    if (file.isFile() ) {
      if (file.toString().endsWith(".mp3") ) {
        println("Any directory is working");
        songs[i] = minim.loadFile( file.getName() );
        i = i + 1;
  //
      }
    }
  }
  //
  //When prototyping, songs is not loaded from anyDirectory
  File[] FileListGitHubDir = githubDirectory.listFiles();
  if ( songs[0] == null){
    printArray(FileListGitHubDir);
    for ( File file : FileListGitHubDir ) {
      if (file.isFile() ) {
        if ( file.toString().endsWith(".mp3") ) {
          println("File Name .mp3 only", file.getName() );
          songs[i] = minim.loadFile(file.getName() );
          i+=1;
        }
      }
    }
  } 
  //
  File dir = new File(Path);//NULL if not export
  File[] FileList;
  if ( dir == null ) {
    dir = new File(directory);
    FileList = dir.listFiles();
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
  songs[0].loop(0);//Change the index manually
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
