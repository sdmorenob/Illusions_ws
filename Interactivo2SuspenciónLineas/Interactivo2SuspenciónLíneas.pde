int divisiones;

void setup(){
  
  size(700, 700);
  noStroke();
  divisiones = height/15;

}

void draw(){
  for (int i=0; i<height; i++){
    //colorMode(RGB, (i+1) * divisiones * 10);

    fill(i * 10);
    rect(0, (i)*divisiones, width, divisiones);
  }
  
  if (mousePressed){
    for (int i=0; i<height; i++){
      strokeWeight(1.5);
      stroke(i*10);
      line(0,(i)*divisiones,width,(i)*divisiones);
      strokeWeight(1.5);
      stroke(i*10);
      line((i)*divisiones,0,(i)*divisiones,height);
   
      //fill(i * 20);
      //rect(0, (i)*divisiones, width, divisiones);
    
    }
  }
       
  
}