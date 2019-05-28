import static java.lang.System.*;
import java.util.LinkedList;
import java.util.Queue;
public class ClubTree {
  TreeNode root;
  TreeNode current;
  
  public ClubTree(){
    root=null;
  }
  TreeNode buildTree(){
    //lvl 1
    root=new TreeNode("Do you want to do community service?");
    //lvl 2
    root.setLeft(new TreeNode("Do you like to plan things?"));
    root.setRight(new TreeNode("Are you artsy?"));
    //lvl 3
    root.getLeft().setLeft(new TreeNode("Do you want to represent the student body?"));
    root.getLeft().setRight(new TreeNode("Do you like learning languages?"));
    root.getRight().setLeft(new TreeNode("Do you like performing?"));
    root.getRight().setRight(new TreeNode("Do you like STEM?"));
    //lvl 4
    root.getLeft().getLeft().setLeft(new TreeNode("You should join Student Council!"));// STUDENT COUNCIL 31
    root.getLeft().getLeft().setRight(new TreeNode("You should join Prom Committee!"));//PROM COMMITTEE 27
    root.getLeft().getRight().setLeft(new TreeNode("Do you want to learn how to speak Spanish?"));
    root.getLeft().getRight().setRight(new TreeNode("Do you like the performing arts?"));
    
    root.getRight().getLeft().setLeft(new TreeNode("Do you like to make music?"));
    root.getRight().getLeft().setRight(new TreeNode("Do you like writing?"));
    root.getRight().getRight().setLeft(new TreeNode("Do you enjoy doing math?"));
    root.getRight().getRight().setRight(new TreeNode("Do you like public speaking?"));
    
    //lvl 5

    root.getLeft().getRight().getLeft().setLeft(new TreeNode("You should join the National Spanish Honors Society"));//NAT SPAN 25
    root.getLeft().getRight().getLeft().setRight(new TreeNode("Do you want learn how to speak French?"));
    root.getLeft().getRight().getRight().setLeft(new TreeNode("You should join the Tri-M Honors Society!"));//TRI-M 7
    root.getLeft().getRight().getRight().setRight(new TreeNode("You should join National Honors Society!"));//NHS 24
    
    root.getRight().getLeft().getLeft().setLeft(new TreeNode("Do you play an instrument?"));
    root.getRight().getLeft().getLeft().setRight(new TreeNode("Do you like theater?"));
    root.getRight().getLeft().getRight().setLeft(new TreeNode("Do you like to write to inform?"));
    root.getRight().getLeft().getRight().setRight(new TreeNode("Do you like to draw?"));
    root.getRight().getRight().getLeft().setLeft(new TreeNode("You should join Math Team!"));//MATH TEAM 18
    root.getRight().getRight().getLeft().setRight(new TreeNode("Do you like engineering?"));
    root.getRight().getRight().getRight().setLeft(new TreeNode("Do you like to argue?"));
    root.getRight().getRight().getRight().setRight(new TreeNode("Do you know lots of fun facts?"));
    
    //lvl 6
    
    root.getLeft().getRight().getLeft().getRight().setLeft(new TreeNode("You should join National French Honors Society!"));//NAT FREN 22
    root.getLeft().getRight().getLeft().getRight().setRight(new TreeNode("Do you want to learn how to speak Chinese?"));
    
    root.getRight().getLeft().getLeft().getLeft().setLeft(new TreeNode("Do you have lots of free time in the summer?"));
    root.getRight().getLeft().getLeft().getLeft().setRight(new TreeNode("You should join an extracurricular choir!"));//CHOIR 2
    root.getRight().getLeft().getLeft().getRight().setLeft(new TreeNode("You should join Theater Arts/ Music Productions!"));//THEATER 10
    root.getRight().getLeft().getLeft().getRight().setRight(new TreeNode("Would you be down to dance with a flag?"));
    root.getRight().getLeft().getRight().getLeft().setLeft(new TreeNode("Would you like to write about large-scale events?"));
    root.getRight().getLeft().getRight().getLeft().setRight(new TreeNode("You should join Shadows- Literary Arts Magazine"));//SHADOWS 8
    root.getRight().getLeft().getRight().getRight().setLeft(new TreeNode("You should join National Art Honors Society!"));//NAHS 6
    root.getRight().getLeft().getRight().getRight().setRight(new TreeNode("You should join Video Production!"));//VIDEO 11
    root.getRight().getRight().getLeft().getRight().setLeft(new TreeNode("Do you like to code?"));
    root.getRight().getRight().getLeft().getRight().setRight(new TreeNode("Do you like nature?"));
    root.getRight().getRight().getRight().getLeft().setLeft(new TreeNode("Do you like the courtroom setting?"));
    root.getRight().getRight().getRight().getLeft().setRight(new TreeNode("Are you interested in business?"));
    root.getRight().getRight().getRight().getRight().setLeft(new TreeNode("You should join Quiz Bowl!"));//QUIZBOWL 12
    root.getRight().getRight().getRight().getRight().setRight(new TreeNode("Do you love diversity?"));
    
    //lvl 7
    root.getLeft().getRight().getLeft().getRight().getRight().setRight(new TreeNode("You should try out German! Join National German Honors Society."));//NAT GERM 23
    root.getLeft().getRight().getLeft().getRight().getRight().setLeft(new TreeNode("You should join National Chinese Honors Society!"));//NAT CHN 21
    
    root.getRight().getLeft().getLeft().getLeft().getLeft().setLeft(new TreeNode("You should join Marching Band!"));//MRCHBND 35
    root.getRight().getLeft().getLeft().getLeft().getLeft().setRight(new TreeNode("You should join a co-curricular band!"));//BAND 1
    root.getRight().getLeft().getLeft().getRight().getRight().setLeft(new TreeNode("You should join Color Guard!"));//COLOR GUARD 3
    root.getRight().getLeft().getLeft().getRight().getRight().setRight(new TreeNode("You should join the Dance Show!"));//DANCE
    root.getRight().getLeft().getRight().getLeft().getLeft().setLeft(new TreeNode("You should join Newspaper!"));//NEWS 26
    root.getRight().getLeft().getRight().getLeft().getLeft().setRight(new TreeNode("You should join the Yearbook Committee!"));//YEARBOOK 32
    root.getRight().getRight().getLeft().getRight().getLeft().setLeft(new TreeNode("Do you like robots?"));
    root.getRight().getRight().getLeft().getRight().getLeft().setRight(new TreeNode("You should join Rocket Club!"));//ROCKET CLUB 29
    root.getRight().getRight().getLeft().getRight().getRight().setLeft(new TreeNode("Do you like plants?"));
    root.getRight().getRight().getLeft().getRight().getRight().setRight(new TreeNode("You should join Science Olympiad!"));//SCI OLYM 30
    root.getRight().getRight().getRight().getLeft().getLeft().setLeft(new TreeNode("You should join Mock Trial!"));//MOCK TRIAL 19
    root.getRight().getRight().getRight().getLeft().getLeft().setRight(new TreeNode("You should join Debate!"));//DEBATE
    root.getRight().getRight().getRight().getLeft().getRight().setLeft(new TreeNode("You should join DECA!"));//DECA 14
    root.getRight().getRight().getRight().getLeft().getRight().setRight(new TreeNode("You should join Speech Team!"));//SPEECH 19
    root.getRight().getRight().getRight().getRight().getRight().setLeft(new TreeNode("Are you LGBTQI+?"));
    root.getRight().getRight().getRight().getRight().getRight().setRight(new TreeNode("Are you Christian?"));
    
    //lvl 8
    root.getRight().getRight().getLeft().getRight().getLeft().getLeft().setLeft(new TreeNode("Join Robotics!")); //ROBOTICS
    root.getRight().getRight().getLeft().getRight().getLeft().getLeft().setRight(new TreeNode("Hey you're cool! Join Hack Club.")); //HACK CLUB
    root.getRight().getRight().getLeft().getRight().getRight().getLeft().setLeft(new TreeNode("Join Ecology Club!"));//ECOLOGY
    root.getRight().getRight().getLeft().getRight().getRight().getLeft().setRight(new TreeNode("Join Bees Please!")); //BEES
    root.getRight().getRight().getRight().getRight().getRight().getLeft().setLeft(new TreeNode("Join GLBTQ Club!")); //GLBTQ
    root.getRight().getRight().getRight().getRight().getRight().getLeft().setRight(new TreeNode("Join Mosaic!")); //MOSAIC
    root.getRight().getRight().getRight().getRight().getRight().getRight().setLeft(new TreeNode("Join FCA!")); //FCA
    root.getRight().getRight().getRight().getRight().getRight().getRight().setRight(new TreeNode("Join Chess Club!")); //CHESS
    
    
    
    return root;
  }
  
}
