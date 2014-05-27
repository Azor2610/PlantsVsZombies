abstract class Plant{
    
    protected int hp;
    protected int cost;
    protected int cooldown;
    protected float x,y;
    
    public Plant(int hp, int cost, int cooldown, float x, float y){
        this.hp = hp;
        this.cost = cost;
        this.cooldown = cooldown;
        this.x = x;
        this.y = y;
    }
}
