class Stage{
    private int x,y;
    private PImage sprite;
    private boolean available;
    
    public Stage(int x, int y, String spritePath){
        this.x = x;
        this.y = y;
        available = false;
    }
    
    public void drawSelf(){
        if(available)
            fill(0,255,0);
        else
            fill(255,0,0);
        ellipse(x,y,50,50);
    }
    
    public void setAvailable(boolean available){
        this.available = available;
    }
}
