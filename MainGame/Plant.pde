abstract class Plant{
    
    protected int hp;
    protected int cost;
    protected int cooldown;
    protected float x,y;
    
    public static final int PEASHOOTER = 1;
    
    
    public Plant(float x, float y){
        this.x = x;
        this.y = y;
    }
    
    public void drawSelf(){
    }
    
    public int getHp(){ return hp;}
    
    public int getCost(){ return cost;}
    
    public int getCooldown(){ return cooldown;}
}
