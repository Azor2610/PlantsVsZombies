class Cell{
    private int cellWidth,cellHeight;
    private int cellX, cellY;
    private boolean available;
    
    public Cell(int cellWidth, int cellHeight, int cellX, int cellY){
        this.cellWidth = cellWidth;
        this.cellHeight = cellHeight;
        this.cellX = cellX;
        this.cellY = cellY;
        available = true;
    }
    
    public void drawSelf(){
        fill(255,0,0,0.3);
        rect(cellX,cellY,cellWidth,cellHeight);
    }
    
    public int[] getCenter(){
        int[] xy = new int[2];
        xy[0] = cellX+5;
        xy[1] = cellY+cellHeight/4;
        return xy;
    }
    
    public void setAvailable(boolean available){
        this.available = available;
    }
    
    public boolean isAvailable(){ return available;}
}
