//Shooter nave1;
Shooter nave2;

public void setup(){
  size(600,600);
  //nave1 = new Shooter();
  //nave1.posicion = new PVector(100,100);
  PVector posicionInicial = new PVector(width/2, height-98.2);
  PVector velocidad = new PVector(20,0);
  nave2 = new Shooter(posicionInicial, 92,98.2,velocidad);
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

public void keyPressed(){
   if(keyCode==RIGHT ){
     if(nave2.velocidad.x<0){
       nave2.velocidad.x*=(-1);
     }
      nave2.mover();
   }
   if(keyCode==LEFT ){
     if(nave2.velocidad.x>0){
       nave2.velocidad.x*=(-1);
     }
      nave2.mover();
   }
   
}
