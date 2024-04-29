class Shooter{
    PImage imagen;
    PVector posicion;
    float altoImagen;
    float anchoImagen;
    
    public Shooter(){
      cargarImagen();
    }
    public Shooter(PVector posicion, float anchoImagen, float altoImagen){
      cargarImagen();
      this.posicion = posicion;
      this.altoImagen = altoImagen;
      this.anchoImagen = anchoImagen;
    }
    private void cargarImagen(){
      this.imagen = loadImage("shoo.png");
      this.altoImagen= 98.2;
      this.anchoImagen = 92;
    }
    
    public void dibujar(){
      image(imagen,this.posicion.x ,this.posicion.y,anchoImagen,altoImagen);
      //image(imagen,this.posicion.x - anchoImagen/2,this.posicion.y - altoImagen/2,anchoImagen,98.2);
    }
    
}
