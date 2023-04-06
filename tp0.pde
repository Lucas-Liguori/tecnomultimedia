PImage imagen;

void setup(){
  background(255,255,255);
 size(800,400);
 imagen = loadImage("sierra.jpg");
  image(imagen,0,0,400,400);
}

void draw(){
  stroke(#000000);
  strokeWeight(0);
fill(#FF4405);
  rect(400,240,350,20);
  stroke(#000000);
  strokeWeight(0);
  fill(#D1C9C6);
 rect(630,245,50,10);
  fill(#F7C27D);
  ellipse(715,250,125,40);
  
   stroke(#000000);
  strokeWeight(0);
  fill(#D1C9C6);
 rect(370,245,55,10);
 
 curveTightness(2);
 strokeWeight(10);
 stroke(#D1C9C6);
  curveTightness(1);
  curve(300,380,385,230,400,247,350,380);
  curve(300,380,385,270,400,247,350,380);
 
  stroke(#FF6E3E);
  strokeWeight(15);
  curveTightness(1);
  curve(150,350,410,150,400,250,100,350);
  curveTightness(1);
  curve(300,350,640,150,650,250,350,350);
  curveTightness(1);
  curve(300,350,410,150,640,150,350,350);
  
  stroke(#000000);
  strokeWeight(0);
  fill(#000000);
 rect(650,235,20,30);
 

 
}
