class Board{
    private Cell[][] cellArray;
    private int rows,columns;
    private int cellWidth, cellHeight;
    
    public Board(int rows, int columns, int cellWidth, int cellHeight){
        this.rows = rows;
        this.columns = columns;
        this.cellWidth = cellWidth;
        this.cellHeight = cellHeight;
        initBoard();
    }
    
    
    /*Inicia el tablero*/
    private void initBoard(){
        int x = 0;
        int y = 0;
        cellArray = new Cell[rows][columns];
        for(int r = 0; r < rows; r++ ){
            for(int c = 0; c < columns; c++){
                cellArray[r][c] = new Cell(cellWidth,cellHeight,x,y);
                x+=cellWidth;
            }
            x = 0;
            y+=cellHeight;
        }
    }
    
    public int getRows(){return rows;}
    
    public int getColumns(){return columns;}
    
    public Cell getCell(int r, int c){ return cellArray[r][c];}
}
