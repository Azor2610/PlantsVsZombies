class Zombie extends Thread{
    private float x,y;
    private float speed;
    private boolean gameOver;
    private PImage sprite;
    
    public Zombie(float x, float y, float speed){
        this.x = x;
        this.y = y;
        this.speed = speed;
        gameOver = false;
        sprite = loadImage("images/ZombieX.png");
        this.start();
    }
    
    private void move(){
        x-=speed;
    }
    
    private void drawSelf(){
        image(sprite,x,y);
    }
    
    public void start(){
        super.start();
    }
    
    public void run(){
        while(!gameOver){
            move();
            //drawSelf();
            /*Pausa entre iteraciones del ciclo*/
            try {
                sleep((long)(16));
            }catch(Exception e){}
        }
        
    }
    
    

}
