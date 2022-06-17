static int fps = 60;

int[][] stageBackUp;
int recentScore = 0;
PFont uiFont;
public StageData stageData;
void setup() {
    stageData = new StageData();
    stageBackUp = stageData.getStage1();
    uiFont = createFont("Meiryo", 300);
    textFont(uiFont, 50);
    size(1280, 720);
    frameRate(60);
    //byte[] bytes = loadBytes("data//stage1");
    //println(bytes);
    

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
    10：ゲームオーバーせずに終わったとき
    11：ゲームオーバー
*/
void draw() {  //1280/80 = 20  720/80 = 9
    switch(screenType){
        case 0:
            showMainMenu();
            break;
        case 12://難易度セレクト
            showDifficultySelectMenu();
            break;
        case 1:
            showGame();
            break;
        case 10:
            showGameOver();
            break;
        case 11:
            showGameSuceed();
            break;
        default:
            break;
    } //<>//
    
     //<>//
     //<>//
    
     //<>//
}
