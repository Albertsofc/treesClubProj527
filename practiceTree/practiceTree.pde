String goGetIt;
clubScreen cl = new clubScreen();
PImage p;
PFont pf;
boolean introSlide=false;
boolean one=false;
boolean two=false;
ClubTree tree = new ClubTree();
String s;
TreeNode current;

void setup() {
  size(1200, 700);
  background (255);
  p = loadImage("irishC.jpg");
  pf = createFont("Lucida Sans Demibold", 32);
  sceneOne();
  current=tree.buildTree();
  
}
void draw(){
  
}
void changeScenes(){
  if(introSlide==true){
    introScene();
  }
  else if(one==true){
    sceneOne();
  }
  else if(two==true){
    sceneTwo();
  }else{
    introSlide=true;
  }
}

void mousePressed(){
  if(mouseX>=300&&mouseX<=475&&mouseY>=450&&mouseY<=580){
    //background(255);
    //sceneOne();
    //text("left",100,100);
    s=(String)current.getValue();
    if(s.equals("You should join Student Council!")||s.equals("You should join the National Spanish Honors Society")||s.equals("You should join National French Honors Society!")
    ||s.equals("You should try out German! Join National German Honors Society.")||s.equals("You should join Marching Band!")||s.equals("You should join Theater Arts/ Music Productions!")
    ||s.equals("You should join Color Guard!")||s.equals("You should join the Yearbook Committee!")||s.equals("You should join National Art Honors Society!")||
    s.equals("You should join Math Team!")){
      one=true;
      introSlide=false;
    }
    
    sceneOne();
      

  }
  if(mouseX>=675&&mouseX<=850&&mouseY>=450&&mouseY<=580){
    background(255);
    introScene();
    text("right",100,100);
    cl.ynKeys();

  }
}
void introScene(){
  cl.words();
  cl.ynKeys();
  cl.borders();
  p.resize(200,200);
  image(p,900,72);
  
}
void sceneOne(){
  background(200);
  p.resize(200,200);
  image(p,900,72);
  text(s,100,150);
  
}

void sceneTwo(){
  background(255);
  cl.ynKeys();
  cl.borders();
  p.resize(200,200);
  image(p,900,72);
  text(s,100,150);
  
}

public interface Treeable {
  public Object getValue();
  public Treeable getLeft();
  public Treeable getRight();
  public void setValue(Comparable value);
  public void setLeft(Treeable left);
  public void setRight(Treeable right);
}
