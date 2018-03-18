int divisiones;
int divisiones2;
int contador = 50;
int posX = 700;
float k = width;
void setup(){
  
  size(800, 550);
  noStroke();
  int divisiones = width/6;
  int divisiones2 = height/6;
  //print (divisiones);

}

void draw(){
  background(255);
  
   if (k<200&&k>100||k<600&&k>550){
  
     if(k>0){
    k= k-1;
    //for(int k = 700; k>0; k--){
    noStroke();
    fill(52, 56, 102 );
    rect(k,height/2-50,60,30); //se dibuja un círculo donde su posición X igual a la variable
    noStroke();
    fill(255, 255,0);
    rect(k,height/2+50,60,30); //se dibuja un círculo donde su posición X igual a la variable  
    stroke(0,0,255);
    line(k, height/2-50, k,height/2+50);
  }else{
    k=width;
  }
     
  }else{
  
    for (int i = 0; i < 100; i++){
      fill(0);
      noStroke();
      rect(i*20,0, 10, height);
    }
  
  
  if(k>0){
    k= k-1;
    //for(int k = 700; k>0; k--){
    noStroke();
    fill(52, 56, 102 );
    rect(k,height/2-50,60,30); //se dibuja un círculo donde su posición X igual a la variable
    noStroke();
    fill(255, 255,0);
    rect(k,height/2+50,60,30); //se dibuja un círculo donde su posición X igual a la variable  
  }else{
    k=width;
  }
  
  
  }
  
  
  
  

 
  
  
  
 
  
}