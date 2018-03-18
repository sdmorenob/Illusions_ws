int divisiones;
int divisiones2;
int contador = 50;

void setup(){
  
  size(1020, 700);
  noStroke();
  int divisiones = width/6;
  int divisiones2 = height/6;
  //print (divisiones);

}

void draw(){
  
  for (int i = 0; i<height; i++){
    if (i%2==0){
      fill(255);
    }else{
      fill(0);
    }
    rect(590, i*50, 3, 50);
    rect(596, i*50, 2,50);
    rect(940, i*50, 40, 50);
   
  }
  
   for (int i = 0; i<height; i++){
    if (i%2==0){
      fill(0);
    }else{
      fill(255);
    }
    rect(593, i*50, 3, 50);
    rect(598, i*50, 2,50);
    rect(900, i*50, 40, 50);
    rect(980, i*50, 40, 50);
   }
  
  for (int i = 0; i<150; i++){
    for (int j  = 0; j<height; j++){
      if(i%2==0&&j%2==1||i%2==1&&j%2==0){
        fill(0);
      }else if(i%2==0&&j%2==0||i%2==1&&j%2==1){
        fill(255);
      }
      
      if (i*50<150){
        rect(i*50, j*50, 50, 50);
      }else if (i*20>400&&i*20<540||i*20>680&&i*20<780){
        rect(i*20, j*50, 20, 50);
      }else if (i*10>520&&i*10<580){
        rect(i*10, j*50, 10, 50);
      }else if (i*5>570&&i*5<590){
        rect(i*5, j*50, 5, 50);
      }else if (i*5>595&&i*5<630){
        rect(i*5, j*50, 5, 50);
      }else if (i*40>880&&i*40<1000){
        rect(i*40, j*50, 40, 50);
    }
  }
}
  
   
  for (int i = 0; i<350; i++){
    for (int j  = 0; j<height; j++){
      if(i%2==0&&j%2==1||i%2==1&&j%2==0){
        fill(255);
      }else if(i%2==0&&j%2==0||i%2==1&&j%2==1){
        fill(0);
      }
      if (i*40<160){
        rect(150+i*40, j*50, 40, 50);
      }else if (i*30>260&&i*20<280||i*30>750&&i*30<880){
        rect(i*30, j*50, 30, 50);
      }else if(i*10>620&&i*10<700){
        rect(i*10, j*50, 10, 50);
      }
    }
   }
  
    

  
      
     // print("X", mouseX, "Y", mouseY);
     
  
  
}