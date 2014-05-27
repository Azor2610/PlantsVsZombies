ArrayList<Peashooter> peashooters;
ArrayList<Zombie> zombies;
Zombie zombie;
Board board;
int WIDTH = 1024, HEIGHT = 700;

void setup(){
    size(WIDTH,HEIGHT);
    peashooters = new ArrayList<Peashooter>();
    zombies = new ArrayList<Zombie>();
    //zombie = new Zombie(800,100,10);
    board = new Board(5,9,WIDTH/9,100);
}


void draw(){
    background(255);
    render();
    //paintPlants();
    //paintBoard();
}

void mouseClicked(){
    peashooters.add(new Peashooter(5,100,5,mouseX-25,mouseY-25));
    zombies.add(new Zombie(800,100,0.5));
}

void render(){
    paintBoard();
    for(int i = 0; i < zombies.size(); i++){
        zombies.get(i).drawSelf();
    }
}

void paintPlants(){
    for(int i=0; i < peashooters.size(); i++){
        Peashooter pea = peashooters.get(i);
        pea.drawSelf();
    }
}

void paintBoard(){
    for(int r = 0; r < board.getRows(); r++){
        for(int c = 0; c < board.getColumns(); c++){
            Cell cell = board.getCell(r,c);
            cell.drawSelf();
        }
    }
}
