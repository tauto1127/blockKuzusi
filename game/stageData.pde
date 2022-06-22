static int default_blockX = 80;
static int default_blockY = 80;
static int default_blockWitdh = 80;
static int default_blockHeight = 80;

static int rowLength = 16;

private int minLine = 0;
private int maxLine = 0;
private int distanceFromBottom = 0;

int stage_width = width - gameUI_x;
static int v_stage = 10;//ステージの進む速さ 
                    //60fps
                    //20 4フレームで一個進む　一秒で15ブロック　1分
                    //15 6フレーム　
                    //10 8フレーム              7.5
static int timeLimit = 15;//時間制限
int frameTime = 0;
int time = 60;//0意外の適当な数字

int randomNum;
int[][] stage;

int score = 0;
int highScore = 0;
String difficulty = "common";



void StageInit(){
    minLine = 0;maxLine = 0;distanceFromBottom = 0;time = 60;frameTime = 0;score=0;//変数初期化
    int[][] arr = stageData.getStage1();
    stage = new int[arr.length][rowLength];
    //stage = stageData.getStage1();
    highScore = int(loadStrings("/highScoreData/stage1"+difficulty)[0]);
    for(int i = 0;i <arr.length ; i++){
        for(int j = 0;j < rowLength; j++){
            stage[i][j] = arr[i][j];
        }
    }
    ballList = new ArrayList<Ball>();
}

void stageProceed(){ //<>//
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

     for(int i = 0; i <= 10; i++){
        for(int j = 0; j < rowLength;j++){
            switch(stage[i+minLine][j]){//スイッチ文でブロックの形や色などの見た目を定義
                case -1:
                    fill(110,110,110);
                    rectAndCheck(0,1, j * default_blockX,(8-i) * default_blockY, default_blockWitdh, default_blockHeight,i+minLine,j, false);
                    fill(255);
                case 0:
                    break;
                case 1:
                    fill(169,169,169);
                    rectAndCheck(0,1, j * default_blockX,(8-i) * default_blockY, default_blockWitdh, default_blockHeight,i+minLine,j, false);
                    fill(255);
                    image(maxBrokenImage, j * default_blockX, (8-i) * default_blockY);
                    break;
                case 2:
                    fill(169,169,169);
                    rectAndCheck(0,1, j * default_blockX,(8-i) * default_blockY, default_blockWitdh, default_blockHeight,i+minLine,j, false);
                    fill(255);
                    image(twoBrokenImage, j * default_blockX, (8-i) * default_blockY);
                    break;
                case 3:
                    fill(169,169,169);
                    rectAndCheck(0,1, j * default_blockX,(8-i) * default_blockY, default_blockWitdh, default_blockHeight,i+minLine,j, false);
                    fill(255);
                    image(threeBrokenImage, j * default_blockX, (8-i) * default_blockY);
                    break;
                case 4:
                    fill(169,169,169);
                    rectAndCheck(0,1, j * default_blockX,(8-i) * default_blockY, default_blockWitdh, default_blockHeight,i+minLine,j, false);
                    fill(255);
                    break;
                case 5:
                    fill(21, 255, 255);
                    rectAndCheck(2,2, j * default_blockX,(8 - i) * default_blockY, default_blockWitdh, default_blockHeight,i+minLine,j, true);
                    fill(255);
                    break;
                case 6:
                    fill(255, 255, 0);
                    rectAndCheck(4,2, j * default_blockX,(8 - i) * default_blockY, default_blockWitdh, default_blockHeight,i+minLine,j, true);
                    fill(255);
                    break;
                case 7:
                    fill(127, 0, 255);
                    rectAndCheck(5,2, j * default_blockX,(8 - i) * default_blockY, default_blockWitdh, default_blockHeight,i+minLine,j, true);
                    fill(255);
                    break;
                case 8:
                    colorMode(HSB,360,100,100);
                    fill(randomNum,100,100);
                    println(randomNum);
                    rectAndCheck(7,2, j * default_blockX,(8 - i) * default_blockY, default_blockWitdh, default_blockHeight,i+minLine,j, true);
                    colorMode(RGB, 255, 255, 255);
                case 9:
                    fill(255, 0, 0);
                    rectAndCheck(5,2, j * default_blockX,(8 - i) * default_blockY, default_blockWitdh, default_blockHeight,i+minLine,j, true);
                    fill(255);
                    break;
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