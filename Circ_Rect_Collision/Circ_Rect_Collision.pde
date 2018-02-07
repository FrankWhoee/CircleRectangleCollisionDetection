void setup(){
  
  size(1000,600);
  
}

 void draw(){
   background(0);
   renderCircle();
   renderRect();
   renderLine();
 }
 
 void renderCircle(){
   noFill();
   if(collision()){
     stroke(255,0,0);
   }else{
     stroke(0,255,0);
   }
   
   
   ellipse(mouseX, mouseY, 16, 16);
 }
 
 void renderRect(){
   noFill();
   if(collision()){
     stroke(255,0,0);
   }else{
     stroke(0,255,0);
   }
   rect(500,300,50,50);
 }
 
 void renderLine(){
   //float centerRoadX = road.getXPos() + road.getWidth()/2;
   //float centerRoadY = road.getYPos() - road.getHeight()/2;
   float closestX = Math.max(500, Math.min(mouseX, 500 + 50));
   float closestY = Math.max(300, Math.min(mouseY, 300 + 50));
       
   float dx = mouseX - closestX;
   float dy = mouseY - closestY;
   if(((dx * dx) + (dy * dy)) < 0){
         stroke(255,0,0);
   }else{
         stroke(0,255,0);
   }
   
   line(mouseX,mouseY,closestX, closestY);
 }
 
 boolean collision(){
   float closestX = Math.max(500, Math.min(mouseX, 500 + 50));
   float closestY = Math.max(300, Math.min(mouseY, 300 + 50));
       
   float dx = mouseX - closestX;
   float dy = mouseY - closestY;
   if(((dx * dx) + (dy * dy)) < 0.01){
     return true;
   }else{
     return false;
   }
   
 }
 
 