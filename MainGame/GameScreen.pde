class GameScreen extends Screen{
  
    private Board board;
    
    public GameScreen(MainGame game, int screenWidth, int screenHeight, String bgPath){
        super(game,screenWidth,screenHeight,bgPath);
        board = new Board(5,9,75,115,230,100);
    }
    
    
     public void render(){
        background(0);
        image(bg,0,0);
        paintBoard();
    }
    
    private void paintBoard(){
        for(int r = 0; r < board.getRows(); r++){
            for(int c = 0; c < board.getColumns(); c++){
                Cell cell = board.getCell(r,c);
                cell.drawSelf();
            }
        }
    }
    
    public Board getBoard(){
        return board;
    }
}
