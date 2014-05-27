ArrayList<Peashooter> peashooters;
ArrayList<Zombie> zombies;
Zombie zombie;
Board board;
int WIDTH = 1024, HEIGHT = 700;
int noScreen;


Screen currentScreen;

void setup(){
    frame.setResizable(true);
    setScreen(new MainMenuScreen(this,500,400,"images/mainMenuBG.jpg"));
    size(currentScreen.getWidth(),currentScreen.getHeight());
    noScreen = 0;
    
    /*size(WIDTH,HEIGHT);
    peashooters = new ArrayList<Peashooter>();
    zombies = new ArrayList<Zombie>();
    //zombie = new Zombie(800,100,10);
    board = new Board(5,9,WIDTH/9,100);*/
}


void draw(){
    currentScreen.render();
    /*background(255);
    render();
    //paintPlants();
    //paintBoard();*/
}

void setScreen(Screen screen){
    currentScreen = screen;
    frame.setSize(currentScreen.getWidth(),currentScreen.getHeight());
}



/*Input*/
void keyPressed(){
    switch(keyCode){
        case ENTER:
            if(noScreen == 0){
                setScreen(new StageSelectScreen(this,1024,700,"images/stageSelectBG.png"));
                noScreen = 1;  
            }else if(noScreen == 1){
                setScreen(new GameScreen(this,1024,700,"images/gameBG.png"));
                noScreen = 2;
            }
        break;
    }
}

void mouseClicked(){
    if(noScreen == 2){
        println(":D");
        //Board board = currentScreen.getBoard();
        //board.getCell(mouseX,mouseY);
    }
}







/*void mouseClicked(){
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
}*/
