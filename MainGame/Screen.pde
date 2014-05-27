class Screen{
    
    protected MainGame game;
    protected int screenWidth, screenHeight;
    protected PImage bg;
    
    public Screen(MainGame game, int screenWidth, int screenHeight, String bgPath){
        this.game = game;
        this.screenWidth = screenWidth;
        this.screenHeight = screenHeight;
        bg = loadImage(bgPath);
    }
    
    public void render(){}
    
    public int getWidth(){return screenWidth;}
    
    public int getHeight(){return screenHeight;}
    
}
