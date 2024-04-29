//Shooter nave1;
Shooter nave2;

public void setup(){
  size(600,600);
  //nave1 = new Shooter();
  //nave1.posicion = new PVector(100,100);
  PVector posicionInicial = new PVector(width/2, height-98.2);
  nave2 = new Shooter(posicionInicial, 92,98.2);
}
public void draw(){
   background(0);
   //nave1.dibujar();
   nave2.dibujar();
}

public void dibujarEjes(){
   stroke(255,0,0);
   line(width/2,0,width/2,height);
   line(0,height/2,width,height/2);
}
