class GameScreen extends Screen{
  
    private Board board;
    private PImage plantsBar;
    private PFont font;
    private ArrayList<PImage> imgPlantsCards;
    private ArrayList plantsCards;
    
    public GameScreen(MainGame game, int screenWidth, int screenHeight, String bgPath, Player player){
        super(game,screenWidth,screenHeight,bgPath);
        board = new Board(5,9,75,115,230,100);
        plantsBar = loadImage("images/interface/plantsBar.png");
        font = createFont("Arial Bold",16);
        initPlantsCards();
        
    }
    
    
     public void render(){
        background(0);
        image(bg,0,0);
        renderPlantsBar();
        //paintBoard();
    }
    
    private void paintBoard(){
        for(int r = 0; r < board.getRows(); r++){
            for(int c = 0; c < board.getColumns(); c++){
                Cell cell = board.getCell(r,c);
                cell.drawSelf();
            }
        }
    }
    
    public Board getBoard(){ return board;}
    
    private void initPlantsCards(){
        plantsCards = player.getEquipedPlants();
        imgPlantsCards = new ArrayList<PImage>();
        
        for(int i = 0; i < plantsCards.size(); i++){
            switch((Integer)plantsCards.get(i)){
                case Plant.PEASHOOTER:
                    imgPlantsCards.add(loadImage("images/interface/peashooterCard.png"));
                break;
            }
        }
    }
    
    private void renderPlantsBar(){
        image(plantsBar,0,0);
        fill(0);
        textFont(font);
        text(player.getSolarPoint()+"",20,75);
        
        int x = 75;
        int y = 20;
        for(int i = 0; i < imgPlantsCards.size(); i++){
            image(imgPlantsCards.get(i),x,y);
            if((Integer)plantsCards.get(i) == player.getCurrentPlant()){
                fill(0,255,0,70);
                stroke(0,255,0);
                rect(x,y,35,47);
            }
        }
    }
}
