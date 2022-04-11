//Global Variable
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
int appWidth, appHeight;
color yellow=#FFFF00, purple=#FF00FF, resetWhite, buttonColour;
//
void setup() {
  size (400, 300); //fullScren(), displayWidth, displayHeight
  //Landscape, not portrait nor square
  String landscape = "good to go";
  String portrait = "turn screen" ;
  String displayOrientation = (width >= height) ? landscape : portrait;
  if (width < height) println (displayOrientation);
  if (width >= height) appWidth = height;
  if (width >= height) appHeight = width;
  println (appWidth, appHeight); //will be NULL if portrait ... until landscape (fututr lesson)
  //
  int smallerDisplayDimension = appHeight ;
  int canvasCenter = smallerDisplayDimension*1/2;
  quitButtonX = (appWidth*1/2) - appWidth*1/4;
  quitButtonY = canvasCenter - appHeight*1/4;
  quitButtonWidth = appWidth*1/2;
  quitButtonHeight = appHeight*1/2;
}
//
void draw()
{
    if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    buttonColour = yellow;
  } else {
    buttonColour = purple;
  }
  fill(buttonColour);
  rect (quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(resetWhite);
}
//
void keyPressed() 
{
  //Quit KeyBoard Button
  if ( key=='Q' || key=='q' ) exit();
}
//
void mousePressed() {}
//
//End Main Program
