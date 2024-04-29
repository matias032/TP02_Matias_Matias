class Dado{
    private int valor; 
    private int lado;
    private PVector posicion;
    
    public Dado(){
    }
    
    public void dibujar(){
         rectMode(CENTER);
         strokeWeight(1);
         square(this.posicion.x,this.posicion.y,this.lado); 
         switch(this.valor){
             case 1: {
              strokeWeight(10);
              point (this.posicion.x, this.posicion.y);
              println("1");
              break;
             }
             case 2: {
              strokeWeight(15);
              point (this.posicion.x - (this.lado/2) + 20, this.posicion.y - (this.lado/2) + 20);
              point (this.posicion.x + (this.lado/2) - 20, this.posicion.y + (this.lado/2) - 20);
              println("2");
              break;
              
             }
             case 3: {
              strokeWeight(10);
              point (this.posicion.x, this.posicion.y);
              strokeWeight(15);
              point (this.posicion.x - (this.lado/2) + 20, this.posicion.y - (this.lado/2) + 20);
              point (this.posicion.x + (this.lado/2) - 20, this.posicion.y + (this.lado/2) - 20);          
              println("3");
              break;
             }
             case 4: {
              strokeWeight(15);
              point (this.posicion.x - (this.lado/2) + 20, this.posicion.y - (this.lado/2) + 20);
              point (this.posicion.x + (this.lado/2) - 20, this.posicion.y - (this.lado/2) + 20);
              point (this.posicion.x - (this.lado/2) + 20, this.posicion.y + (this.lado/2) - 20);
              point (this.posicion.x + (this.lado/2) - 20, this.posicion.y + (this.lado/2) - 20);
              println("4");
              break;
             }
             case 5: {
              strokeWeight(10);
              point (this.posicion.x, this.posicion.y);
              strokeWeight(15);
              point (this.posicion.x - (this.lado/2) + 20, this.posicion.y - (this.lado/2) + 20);
              point (this.posicion.x + (this.lado/2) - 20, this.posicion.y - (this.lado/2) + 20);
              point (this.posicion.x - (this.lado/2) + 20, this.posicion.y + (this.lado/2) - 20);
              point (this.posicion.x + (this.lado/2) - 20, this.posicion.y + (this.lado/2) - 20);
              println("5");
              break;
             }
             case 6: {
              strokeWeight(15);
              point (this.posicion.x - (this.lado/2) + 20, this.posicion.y - (this.lado/2) + 20);
              point (this.posicion.x + (this.lado/2) - 20, this.posicion.y - (this.lado/2) + 20);
              point (this.posicion.x - (this.lado/2) + 20, this.posicion.y + (this.lado/2) - 20);
              point (this.posicion.x + (this.lado/2) - 20, this.posicion.y + (this.lado/2) - 20);
              point (this.posicion.x - (this.lado/2) + 20, this.posicion.y);
              point (this.posicion.x + (this.lado/2) - 20, this.posicion.y);
              println("6");
              break;
             }
         }
    }
    public void tirarDado(){
         this.valor = int(random(1,7));
         
    }
    public void setPosicion(PVector posicion){
         this.posicion = posicion;
    }
    
    public void setLado(int lado){
      this.lado = lado;
    }
}
