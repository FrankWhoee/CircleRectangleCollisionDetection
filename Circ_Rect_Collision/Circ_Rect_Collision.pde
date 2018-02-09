float rectX = 0;
float rectY = 300;
float rectWidth = 1200;
float rectHeight = 50;

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
   rect(rectX,rectY,rectWidth,rectHeight);
 }
 
 void renderLine(){
   float closestX = Math.max(rectX, Math.min(mouseX, rectX + rectWidth));
   float closestY = Math.max(rectY, Math.min(mouseY, rectY + rectHeight));
       
   float dx = mouseX - closestX;
   float dy = mouseY - closestY;
   if(((dx * dx) + (dy * dy)) < 64){
         stroke(255,0,0);
   }else{
         stroke(0,255,0);
   }
   
   line(mouseX,mouseY,closestX, closestY);
 }
 
 
 
 boolean collision(){
   float rectHeight = this.rectHeight - 16;
   float rectY = this.rectY + 16;
   
   
   float closestX = Math.max(rectX, Math.min(mouseX, rectX + rectWidth));
   float closestY = Math.max(rectY, Math.min(mouseY, rectY + rectHeight));
       
   float dx = mouseX - closestX;
   float dy = mouseY - closestY;
   if(((dx * dx) + (dy * dy)) < 64){
     return true;
   }else{
     return false;
   }
   
 }
 
 