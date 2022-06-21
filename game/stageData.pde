
//int stageDataLength = 9;//ステージデータの一行の長さ

/*
Block[] stage1 = new Block[]{
    new Block()
}*/

static int default_blockX = 80;
static int default_blockY = 80;
static int default_blockWitdh = 80;
static int default_blockHeight = 80;
//block1

static int numOfRow = 16;

private int minLine = 0;
private int maxLine = 0;
private int distanceFromBottom = 0;

int stage_width = width - gameUI_x;
static int v_stage = 10;//ステージの進む速さ 
                    //60fps
                    //20 4フレームで一個進む　一秒で15ブロック　1分
                    //15 6フレーム　
                    //10 8フレーム              7.5　　　　　　　　
int time = 60;//0意外の適当な数字
static int timeLimit = 15;//時間制限
int frameTime = 0;

int randomNum;
public int[][] stage;

int score = 0;
int highScore = 0;
String difficulty = "common";

boolean test = false;


PImage maxBrokenImage;
PImage twoBrokenImage;
PImage threeBrokenImage;
void stageInit(){
    minLine = 0;maxLine = 0;distanceFromBottom = 0;time = 60;frameTime = 0;score=0;//変数初期化
    int[][] arr = stageData.getStage1();
    stage = new int[arr.length][numOfRow];
    //stage = stageData.getStage1();
    highScore = int(loadStrings("/highScoreData/stage1"+difficulty)[0]);
    for(int i = 0;i <arr.length ; i++){
        for(int j = 0;j < numOfRow; j++){
            stage[i][j] = arr[i][j];
        }
    }
    arraylist = new ArrayList<Ball>();
    //showArray(stage);
    
}
void loadImages(){
    maxBrokenImage = loadImage("/Images/max.png");
    twoBrokenImage = loadImage("/Images/two.png");
    threeBrokenImage = loadImage("/Images/three.png");
}
void stageForward(){ //<>//
    if(frameTime % 4 == 0){randomNum = int(random(0,200));}
    if(time == 0){//時間制限に達したとき
        if(score > highScore){
            String[] lines = new String[1];
            lines[0] = str(score);
            saveStrings("/highScoreData/stage1"+difficulty,lines);
        }
        showGameSuceed();
    }
    distanceFromBottom = distanceFromBottom + v_stage;
    minLine = distanceFromBottom / 80;//80はブロックの高さ
    maxLine = minLine + 10;//一応10にした
     //<>// //<>// //<>//
     for(int i = 0; i <= 10; i++){
        for(int j = 0; j < numOfRow;j++){
            
            switch(stage[i+minLine][j]){//スイッチ文でブロックの形や色などの見た目を定義
                case -1:
                    fill(110,110,110);
                    rectAndCheck(0,1, j * default_blockX,(8-i) * default_blockY, default_blockWitdh, default_blockHeight,i+minLine,j, false);
                    fill(255);
                case 0:
                    break;
                case 1:
                    //rect(j * default_blockX,(8 - i) * default_blockY, default_blockWitdh, default_blockHeight);
                    fill(169,169,169);
                    rectAndCheck(0,1, j * default_blockX,(8-i) * default_blockY, default_blockWitdh, default_blockHeight,i+minLine,j, false);
                    fill(255);
                    image(maxBrokenImage, j * default_blockX, (8-i) * default_blockY);
                    break;
                case 2:
                    //rect(j * default_blockX,(8 - i) * default_blockY, default_blockWitdh, default_blockHeight);
                    fill(169,169,169);
                    rectAndCheck(0,1, j * default_blockX,(8-i) * default_blockY, default_blockWitdh, default_blockHeight,i+minLine,j, false);
                    fill(255);
                    image(twoBrokenImage, j * default_blockX, (8-i) * default_blockY);
                    break;
                case 3:
                    //rect(j * default_blockX,(8 - i) * default_blockY, default_blockWitdh, default_blockHeight);
                    fill(169,169,169);
                    rectAndCheck(0,1, j * default_blockX,(8-i) * default_blockY, default_blockWitdh, default_blockHeight,i+minLine,j, false);
                    fill(255);
                    image(threeBrokenImage, j * default_blockX, (8-i) * default_blockY);
                    break;
                case 4:
                    //rect(j * default_blockX,(8 - i) * default_blockY, default_blockWitdh, default_blockHeight);
                    fill(169,169,169);
                    rectAndCheck(0,1, j * default_blockX,(8-i) * default_blockY, default_blockWitdh, default_blockHeight,i+minLine,j, false);
                    fill(255);
                    break;
                case 5:
                    fill(21, 255, 255);
                    //rect(j * default_blockX,(8 - i) * default_blockY, default_blockWitdh, default_blockHeight);
                    rectAndCheck(2,2, j * default_blockX,(8 - i) * default_blockY, default_blockWitdh, default_blockHeight,i+minLine,j, true);
                    fill(255);
                    break;
                case 6:
                    fill(255, 255, 0);
                    //rect(j * default_blockX,(8 - i) * default_blockY, default_blockWitdh, default_blockHeight);
                    rectAndCheck(4,2, j * default_blockX,(8 - i) * default_blockY, default_blockWitdh, default_blockHeight,i+minLine,j, true);
                    fill(255);
                    break;
                case 7:
                    fill(127, 0, 255);
                    //rect(j * default_blockX,(8 - i) * default_blockY, default_blockWitdh, default_blockHeight);
                    rectAndCheck(5,2, j * default_blockX,(8 - i) * default_blockY, default_blockWitdh, default_blockHeight,i+minLine,j, true);
                    fill(255);
                    break;
                case 8:
                    //println("ケース3");
                    
                    colorMode(HSB,360,100,100);
                    fill(randomNum,100,100);
                    println(randomNum);
                    rectAndCheck(7,2, j * default_blockX,(8 - i) * default_blockY, default_blockWitdh, default_blockHeight,i+minLine,j, true);
                    colorMode(RGB, 255, 255, 255);
                    //fill(255);
                case 9:
                    fill(255, 0, 0);
                    //rect(j * default_blockX,(8 - i) * default_blockY, default_blockWitdh, default_blockHeight);
                    rectAndCheck(5,2, j * default_blockX,(8 - i) * default_blockY, default_blockWitdh, default_blockHeight,i+minLine,j, true);
                    fill(255);
                    break;
                    // break;
                default:
            }
        }
        
    }
    frameTime = frameTime + 1;
    time = timeLimit - frameTime / 60;
}
void rectAndCheck(int blockScore, int blockNum, int x, int y, int width, int height, int arrayX, int arrayY, boolean isPoint){
    rect(x,y, width, height);
    checkHit(x, y, width, height, x_racket, y_racket, width_racket, height_racket, blockScore, arrayX, arrayY, isPoint);
}
//Block[] getStageData(int stageNumber){
  //  String regex = "";
    /*
    String fileName = "stage" + stageNumber;
    String[] stageDataString = loadStrings(fileName);
    Block[] blocks;
    char[] chars;
    int paramnum = 0;//最初はxを読み込むから
    
    //ステージデータを読み込む
    for(int i = 0;i < stageDataString.length; i++){
        
        chars = new char[stageDataLength];
        for(int j = 0;j < stageDataLength; j++){
            chars[j] = stageDataString[i].charAt(j + 1);
        }//一文字ずつ取り出す
        for(int j = 0;j < chars.length; j++){
            float x, y, width, height, score = 0;
            if(chars[j] == 32){//char c = ' ';println(byte(c));
                if(paramnum == 4){
                    paramnum = 1;
                }else {
                    paramnum = paramnum + 1;
                }
            }else{
                switch (pramnum) {
                    case 0 :
                        x = float(string(x) + chars[j]);
                        break;
                    case 1 :
                        y = float(string(y) + chars[j]);
                        break;
                    case 2 :
                        width = float(string(width) + chars[j]);
                        break;
                    case 3 :
                        height = float(string(height) + chars[j]);
                        break;
                    case 4 :
                        score = float(string(score) + chars[j]);
                        break;
                    break;	
                }
            }
            blocks[i] = new Block(x, y, width, height, score);
        }
        
    }
    println(fileName);
    return blocks;*/
//}


/*void saveStageData(Block[] blocks){
    for (int i = 0; i < blocks.length; ++i) {
        saveStrings()
    }
}*/
class Block{
    float x, y, width, height, score;
    Block(float x, float y, float width, float height, int score){
        this.x = x;
        this.y = y;
        this.width = width;
        this.height = height;
        this.score = score;
    }
}
void showArray(int[][] arra){
    for (int iy = 0; iy <= 30; iy++) {
    for (int ix = 0; ix <= 15; ix++) {
      // 要素の値をランダムに
      //println(arra[ix][iy]);
    }
  }

}