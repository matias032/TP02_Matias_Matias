class Shooter{
    PImage imagen;
    PVector posicion;
    float altoImagen;
    float anchoImagen;
    PVector velocidad;
    
    public Shooter(){
      cargarImagen();
    }
    public Shooter(PVector posicion, float anchoImagen, float altoImagen, PVector velocidad){
      cargarImagen();
      this.posicion = posicion;
      this.altoImagen = altoImagen;
      this.anchoImagen = anchoImagen;
      this.velocidad  = velocidad;
    }
    private void cargarImagen(){
      this.imagen = loadImage("shoo.png");
      this.altoImagen= 98.2;
      this.anchoImagen = 92;
    }
    
    public void dibujar(){
      image(imagen,this.posicion.x ,this.posicion.y,anchoImagen,altoImagen);
    }
    public void mover(int direccion){
      if(direccion == 0){
       this.posicion.x-=this.velocidad.x;
      }
      if(direccion == 1){
       this.posicion.x+=this.velocidad.x;
      }
    }
    
}
