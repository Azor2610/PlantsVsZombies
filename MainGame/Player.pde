class Player{
    
    private int stageCleared;
    private int solarPoint;
    private int plantsQuantity;
    private ArrayList plantsEquiped;
    private boolean havePeashooter;
    private int currentPlant;

    public Player(){
        stageCleared = 0;
        solarPoint = 1000;
        havePeashooter = true;
        currentPlant = Plant.PEASHOOTER;
        plantsQuantity = 4;
        plantsEquiped = new ArrayList();
        addPlant(Plant.PEASHOOTER);
    }
    
    public int getSolarPoint(){ return solarPoint;}
    
    public void plantCost(int cost){
        solarPoint-=cost;
    }
    
    public int getCurrentPlant(){return currentPlant;}
    
    public void addPlant(int plant){
        plantsEquiped.add(plant);
    }
    
    public void removePlant(int plant){
        plantsEquiped.remove(plant);
    }
    
    public ArrayList getEquipedPlants(){ return plantsEquiped;}
}
