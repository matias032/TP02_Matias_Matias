class Asteroide{
  PImage imagen;
  PVector posicion;
  float altoImagen;
  float anchoImagen;
  PVector velocidad;
  
  public Asteroide(PVector posicion, float anchoImagen, float altoImagen, PVector velocidad){
      cargarImagen();
      this.posicion = posicion;
      this.altoImagen = altoImagen;
      this.anchoImagen = anchoImagen;
      this.velocidad  = velocidad;
    }
    private void cargarImagen(){
      this.imagen = loadImage("aste.png");
      this.altoImagen= 98.2;
      this.anchoImagen = 92;
    }
    
  public void dibujar(){
      image(imagen,this.posicion.x ,this.posicion.y,anchoImagen,altoImagen);
      //image(imagen,this.posicion.x - anchoImagen/2,this.posicion.y - altoImagen/2,anchoImagen,98.2);
    }
    
 
   public void mover(){
     if(this.posicion.y>height){
       this.posicion.y=0;
     }
     
     if(this.posicion.x>width){
       this.posicion.x=0;
     }
     if(this.posicion.x<0){
       this.posicion.x=width;
     }
     if(this.posicion.y<0){
       this.posicion.y=height;
     }
     
     this.posicion.y+=this.velocidad.y;
     this.posicion.y+=this.velocidad.x;
   }
}
