float x=0; // coordenadas
float y=0; 

float vy = 1; // velocidad eje X
float vx = 2; // velocidad eje y

int divisiones = width/6;

void setup(){
  size(1000,700);
  
}

void draw(){
  background(255);
  fill(0);
  ellipse(width/2,height/2,140,140);
  if (keyPressed){
    rect(0, height/2-85, (width), 10);
    rect(0, height/2+75, (width), 10);
  }
  
   
   for (int i = 0; i<width; i=i+25){
      stroke(0);
      line(i, height, ((width/2)), (height/2));
      line(i, 0, (width/2), (height/2));
   }
   
    for (int i = 0; i<height+20; i=i+25){
       line(0, i, (width/2), (height/2));
       line(width, i, (width/2), (height/2));
    }
  
}