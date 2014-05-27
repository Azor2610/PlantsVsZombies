class Peashooter extends Plant{
    
    PImage img;
  
    public Peashooter(int hp, int cost, int cooldown,float x, float y){
        super(hp,cost,cooldown,x,y);
        img = loadImage("images/plants/peashooter.png");
    }
    
    public void drawSelf(){
        image(img,x,y);
    }
}
