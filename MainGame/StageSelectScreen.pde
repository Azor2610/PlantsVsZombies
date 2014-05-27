class StageSelectScreen extends Screen{
  
  
    public StageSelectScreen(MainGame game, int screenWidth, int screenHeight, String bgPath){
        super(game,screenWidth,screenHeight,bgPath);
    }
    
    public void update(){
    
    }
   
    public void render(){
        background(0);
        image(bg,0,0);
    }
}
