int lineWidth; // weight of line
int i = 0;     // 
int click;

void setup( ){

  size( 1200, 600 );
  lineWidth = 20;
  i = -(lineWidth/2);
  click = 0;

}

void draw( ){

  background( 255, 255, 255 );
    

  for( int j = 0, k = 0; k < width; j = (j + 5)%200, k++ ){
    stroke( 255, 0, 0 );
    strokeWeight( 1 );
    line( k, 0, k, j );
    stroke( 0, 0, 255 );
    strokeWeight( 1 );
    line( k, 600, k, 600-j );
  }

  if( i < 2 + (lineWidth/2) ) i++;
  else i = -(lineWidth/2);

  PVector horizontal = new PVector( i, i );
  PVector vertical   = new PVector( 0, height );

  for( ; horizontal.x < width + (lineWidth/2); horizontal.x = horizontal.y += (lineWidth + 2) ){
    stroke( 0, 0, 0 );
    strokeWeight( click );
    line( horizontal.x, vertical.x, horizontal.y, vertical.y );
  }
  delay(10);

}

void mouseClicked( ){

  if( click > lineWidth ){
    click = 0;
  }else{
    click += 3;
  }

}