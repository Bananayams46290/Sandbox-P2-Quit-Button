//Global Variable
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
//appWidth, appHeight
//
void setup() {
  size (400, 300); //fullScren(), displayWidth, displayHeight
  //Landscape, not portrait nor square
  String landscape = "good to go";
  String portrait = "turn screen" ;
  String displayOrientation = (width >= height) ? landscape : portratit;
  if (width < height) println (displayOrientation);
  if (width >= height) appWidth = height;
  if (width >= height) appHeight = width;
  println (appWidth, appHeight); //will be NULL if portrait ... until landscape (fututr lesson)
}
//
void draw()
{
  rect (quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight)
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
