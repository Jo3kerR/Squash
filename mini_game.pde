int posX[],posY[];
float speedX[],speedY[];
int flag[];
void setup() {
  noSmooth();
   flag = new int[10];
   posX = new int[10];
   posY = new int[10];
   speedX = new float[10];
   speedY = new float[10];
   size(800,800);
   for(int i=0;i<10;++i) {
     speedX[i] = int(random(10));
     speedY[i] = int(random(10));
     posX[i] = width/2;
     posY[i] = height/2;
     flag[i]=0;
   }     
}
void draw() {
   background(255);
   fill(255);
   rect(695,5,100,100);
   //fill(255);
   
   if(mousePressed) {
       for(int i=0;i<10;++i) {
       if(mouseX<posX[i]+30 && mouseX>posX[i]-30 && mouseY>posY[i]-30 && mouseY<posY[i]+30) 
       {  
         posX[i] = 730; posY[i] = 40; flag[i] = 1;}
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
