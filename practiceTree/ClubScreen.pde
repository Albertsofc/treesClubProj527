class clubScreen
{
  public void words(){
    textFont(pf);
    fill(17,38,97);
    text("Hi!\nWelcome to Rosemount! \nWould you like to see what club you best fit in?", 100,200);
}

public void ynKeys(){
  //yes
  noStroke();
  fill(255,242,48);
  rect(300,450,175,130);
  fill(0);
  text("YES", 365, 520);
  //no
  fill(255,242,48);
  rect(675,450,175,130);
  fill(0);
  text("NO",745,520);
}
public void borders(){
  noStroke();
    fill(17,38,97);
    rect(0,0,70,700);
    rect(0,630,1200,70);
    rect(1130,0,70,700);
    rect(0,0,1200,70);
}

public void results(){
  textFont(pf);
  text("\t\tCongrats!You have finished the quiz.\n The Club that best fits your personality is  ",400,350); 
}
  
  
  
}
