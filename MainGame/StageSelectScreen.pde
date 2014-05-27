class StageSelectScreen extends Screen{
  
    private Stage[] stages;
    private int noStages;
  
    public StageSelectScreen(MainGame game, int screenWidth, int screenHeight, String bgPath){
        super(game,screenWidth,screenHeight,bgPath);
        noStages = 5;
        stages = new Stage[noStages];
        initStages(300,400);
    }
    
    public void update(){
    
    }
   
    public void render(){
        background(0);
        image(bg,0,0);
        
       
        for(int i = 0; i < stages.length; i++){
            stages[i].drawSelf();
        }
    }
    
    private void initStages(int initX, int y){
        int x = initX;
        for(int i = 0; i < noStages; i++){
            stages[i] = new Stage(x,y,"imgPath");
            if(i == 0)
                  stages[i].setAvailable(true);
            x+=100;
        }
    }
}
