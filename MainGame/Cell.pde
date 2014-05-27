class Cell{
    private int cellWidth,cellHeight;
    private int cellX, cellY;
    
    public Cell(int cellWidth, int cellHeight, int cellX, int cellY){
        this.cellWidth = cellWidth;
        this.cellHeight = cellHeight;
        this.cellX = cellX;
        this.cellY = cellY;
    }
    
    public void drawSelf(){
        fill(255,0,0);
        rect(cellX,cellY,cellWidth,cellHeight);
    }
}
