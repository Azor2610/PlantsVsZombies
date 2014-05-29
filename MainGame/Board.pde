class Board{
    private Cell[][] cellArray;
    private int rows,columns;
    private int cellWidth, cellHeight;
    private int initX,initY;
    
    public Board(int rows, int columns, int cellWidth, int cellHeight, int initX, int initY){
        this.rows = rows;
        this.columns = columns;
        this.cellWidth = cellWidth;
        this.cellHeight = cellHeight;
        this.initX = initX;
        this.initY = initY;
        initBoard(initX, initY);
    }
    
    
    /*Inicia el tablero*/
    private void initBoard(int initX, int initY){
        int x = initX;
        int y = initY;
        cellArray = new Cell[rows][columns];
        for(int r = 0; r < rows; r++ ){
            for(int c = 0; c < columns; c++){
                cellArray[r][c] = new Cell(cellWidth,cellHeight,x,y);
                x+=cellWidth;
            }
            x = initX;
            y+=cellHeight;
        }
    }
    
    public int getRows(){return rows;}
    
    public int getColumns(){return columns;}
    
    public int getInitX(){return initX;}
    
    public int getInitY(){return initY;}
    
    public int getCellWidth(){return cellWidth;}
    
    public int getCellHeight(){return cellHeight;}
    
    public Cell getCell(int r, int c){ return cellArray[r][c];}
    
    public Cell getCellXY(int x, int y){
        int c =x/cellWidth - initX/cellWidth; 
        int r =y/cellHeight - initY/cellHeight - 1; 
        if(r == -1)
          r = 0;
        if(c >= 0 && c < columns && r >= 0 && r < rows && y >= initY){
            return cellArray[r][c];
        }
        return null;
    }
}
