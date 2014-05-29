class Peashooter extends Plant{
    
    PImage img;
  
    public Peashooter(float x, float y){
        super(x,y);
        hp = 100;
        cost = 50;
        cooldown = 5;
        img = loadImage("images/plants/peashooter.png");
    }
    
    public void drawSelf(){
        image(img,x,y);
    }
}
