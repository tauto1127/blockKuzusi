int score = 0;
int gameUI_x = 1040;


void showUI(){
    stroke(255, 255, 255);
    line(gameUI_x - 10, 0, gameUI_x + 10, 720);
    //rect(gameUI_x - 2, 0, 3,720);
    
    fill(0,255,0);
    //残り時間表示
    text("残り時間", gameUI_x, 50);
    fill(175, 223, 228);
    text(time, gameUI_x, 120);
    //スコア表示
    fill(0,255,0);
    text("スコア", gameUI_x, 220);
    fill(175, 223, 228);
    text(score, gameUI_x, 280);
    line(gameUI_x - 5, 160, 1280, 160);
    fill(0);

    stroke(0,0,0);
}