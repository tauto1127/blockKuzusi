
int screenType = 1;////
int recentScore = 0;

void setup() {
    //byte[] bytes = loadBytes("data//stage1");
    //println(bytes);
    size(1280, 720);
    frameRate(30);
    line(1040, 0, 1040, 720);
    //println(string);
    /*char[string.length] chars;
    for(int i = 0; i < string.length;i++){
        char[i] = string.charAt(i+1);
    }
    println(cars);*/
    
}
/*
    画面構成
    0：メインメニュー
    
    1：ゲーム画面
    11：ゲームオーバー
*/
void draw() {  //1280/80 = 20  720/80 = 9
    switch(screenType){
        case 1:
            background(192, 192, 255);
            stageForward();
            showRacket();
            break;
        case 11:
            background(192, 192, 255);
            showGameOver(recentScore);
            break;
        default:
            break;
    }
    
     //<>//
    
    
     //<>//
}


void createRect(int x, int y, int width, int height){
  rect(x,y,width,height);
}
