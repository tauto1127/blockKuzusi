
//int stageDataLength = 9;//ステージデータの一行の長さ
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
/*
Block[] stage1 = new Block[]{
    new Block()
}*/

int default_blockX = 80;
int default_blockY = 80;
int default_blockWitdh = 80;
int default_blockHeight = 80;
//block1




int numOfRow = 16;
int minLine = 0;
int maxLine = 0;
int distanceFromBottom = 0;

int v_stage = 20;//ステージの進む速さ  4フレームで一個進む　一秒で15ブロック　1分
void stageInit(){

}
void stageForward(){ //<>//
    distanceFromBottom = distanceFromBottom + v_stage;
    minLine = distanceFromBottom / 80;
    maxLine = minLine + 10;//一応10にした
     //<>// //<>// //<>//
     for(int i = 0; i <= 10; i++){
        for(int j = 0; j < numOfRow;j++){
            switch(stage1[i+minLine][j]){//スイッチ文でブロックの形や色などの見た目を定義
                case 0:
                    break;
                case 1:
                    //rect(j * default_blockX,(8 - i) * default_blockY, default_blockWitdh, default_blockHeight);
                    rectAndCheck(1, j * default_blockX,(8-i) * default_blockY, default_blockWitdh, default_blockHeight);
                    break;
                case 2:
                    fill(300, 0, 0);
                    //rect(j * default_blockX,(8 - i) * default_blockY, default_blockWitdh, default_blockHeight);
                    rectAndCheck(2, j * default_blockX,(8 - i) * default_blockY, default_blockWitdh, default_blockHeight);

                    fill(255);
                default:
                    
            }
           
            
        }
        
    }
}
void rectAndCheck(int blockNum, int x, int y, int width, int height){
    rect(x,y, width, height);
    checkHit(x, y, width, height, x_racket, y_racket, width_racket, height_racket);
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
