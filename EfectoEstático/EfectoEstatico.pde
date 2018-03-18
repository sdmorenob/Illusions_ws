int lineWidth; // weight of line


void setup( ){

  size( 1200, 700 );
  lineWidth = 1;
  noLoop( );

}

void draw( ){

  background( 0, 255, 0 );
  
  PVector horizontal = new PVector( 0, 0 );
  PVector vertical   = new PVector( 0, height );
  for( ; horizontal.x < width; horizontal.x = horizontal.y += (lineWidth*2) ){
    stroke( 255, 0, 0 );
    strokeWeight( lineWidth );
    line( horizontal.x, vertical.x, horizontal.y, vertical.y );
  }

}