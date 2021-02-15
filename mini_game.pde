int posX[],posY[];
float speedX[],speedY[];
int flag[], points;
PFont f; 
void setup() {
  points = 0 ; 
  f = createFont("Arial", 16, true) ; 
  noSmooth();
   flag = new int[10];
   posX = new int[10];
   posY = new int[10];
   speedX = new float[10];
   speedY = new float[10];
   size(800,800);
   for(int i=0;i<10;++i) {
     speedX[i] = 0 ; 
     while(speedX[i] == 0) speedX[i] = int(random(10));
     speedY[i] = 0 ; 
     while(speedY[i] == 0) speedY[i] = int(random(10));
     posX[i] = width/2;
     posY[i] = height/2;
     flag[i]=0;
   }     
}
void draw() {
  
   background(255);
   textFont(f, 36) ; 
   fill(0);
   text("Points :", 10, 40) ;
   text(points, 150, 40) ; 
   
   if(points == 100) {
       textFont(f, 36) ;
       text("CONGRATULATIONS!!!", 200, 400) ; 
   }
   
   if(mousePressed) {
       for(int i=0;i<10;++i) {
         if(flag[i] != 1 && mouseX<posX[i]+30 && mouseX>posX[i]-30 && mouseY>posY[i]-30 && mouseY<posY[i]+30) {  
             posX[i] = 850; posY[i] = 40; flag[i] = 1;
              points += 10 ; 
          }
       }
   }
   fill(0);
   for(int i=0;i<10;++i) {
     ellipse(posX[i],posY[i],30,30);
     
   if(flag[i]==0) {
     posX[i] += speedX[i];
     posY[i] += speedY[i];
     if(posX[i] < 0 || posX[i] >800) speedX[i] = -speedX[i];
     if(posY[i] < 0 || posY[i] >800) speedY[i] = -speedY[i];
     }
   }  
   
}
