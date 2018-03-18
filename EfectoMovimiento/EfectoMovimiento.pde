PVector a1; // superior izquierda
PVector a2; // Inferior izquierda
PVector a3; // Inferior derecha
PVector a4; // Superior derecha
PVector sum;

void setup( ){

  size( 1000, 600 );
  a1  = new PVector( 700, 300 );
  a2  = new PVector( 700, 400 );
  a3  = new PVector( 900, 400 );
  a4  = new PVector( 900, 300 );
  sum = new PVector( 1, 1 );

}

void draw( ){

  background( 69 );
  
  // Pared de al fondo
  fill( 0 );
  strokeWeight( 4 );
  beginShape( );
  vertex( a1.x, a1.y ); vertex( a2.x, a2.y ); vertex( a3.x, a3.y  ); vertex( a4.x, a4.y ); vertex( a1.x, a1.y );
  endShape( );
  
  // Techo
  fill( 134, 89, 0 );
  strokeWeight( 4 );
  beginShape( );
  vertex( 0, 20 ); vertex( 1000, 20 ); vertex( a4.x, a4.y ); vertex( a1.x, a1.y ); vertex( 0, 20 );
  endShape( );

  // Pared izquierda  
  fill( 212, 164, 0 );
  strokeWeight( 4 );
  beginShape( );
  vertex( 0, 20 ); vertex( a1.x, a1.y ); vertex( a2.x, a2.y ); vertex( 0, 580 ); vertex( 0, 20 );
  endShape( );

  // Pared derecha
  fill( 255, 255, 0 );
  strokeWeight( 4 );
  beginShape( );
  vertex( a3.x, a3.y  ); vertex( a4.x, a4.y ); vertex( 1000, 20 ); vertex( 1000, 580 ); vertex( a3.x, a3.y );
  endShape( );

  // Piso del cuarto
  fill( 134, 89, 0 );
  strokeWeight( 4 );
  beginShape( );
  vertex( 1000, 580 ); vertex( a3.x, a3.y ); vertex( a2.x, a2.y  ); vertex( 0, 580 ); vertex( 1000, 580 );
  endShape( );

  if( a3.x > width && sum.x > 0 ) sum.x = -1;
  else if( a1.x < 1 && sum.x < 0 ) sum.x = 1;
  
  /*if( a3.y > height - 20 && sum.y > 0 ) sum.y = -1;
  else if( a1.y < 21 && sum.y < 0 ) sum.y = 1;*/
  


  a1.x = a1.x + sum.x;
  a1.y = a1.y + (sum.x/10);
  a2.x = a2.x + sum.x;
  a2.y = a2.y - (sum.x/10);
  a3.x = a3.x + (sum.x/3);
  a3.y = a3.y - (sum.x/10);
  a4.x = a4.x + (sum.x/3);
  a4.y = a4.y + (sum.x/10);
  

  delay( 5 );

}