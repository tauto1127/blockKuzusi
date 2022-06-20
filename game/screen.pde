private int screenType = 0;////


void showGame(){
    //background(192, 192, 255);
    background(0, 0, 0);
    screenType = 1;
    showUI();
    stageForward();
    showRacket();
    showBall();
}
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

    textFont(uiFont, 30);
    fill(0,255,0);
    text("ハイスコア",gameUI_x + 20, 600);
    text("まで...", gameUI_x + 20, 660);
    textFont(uiFont, 50);
    fill(175, 223, 228);
    if(score > highScore){
        textFont(uiFont, 30);
        text("ハイスコア更新中！", gameUI_x + 20, 720);
        textFont(uiFont, 50);
    }else{
        text(highScore - score + "（" + highScore + "）", gameUI_x + 20, 720);
    }
    //text(highScore, gameUI_x+);

    stroke(0,0,0);
}
void showGameOver(){
    background(192, 192, 255);
    screenType = 10;
    textFont(uiFont, 100);
    text("GAMEOVER", 350, 100);//800
    textFont(uiFont, 50);
    fill(255,0,0);
    text("スコアは"+str(score)+"です",400, 200);
    fill(255);
    text("再びプレイする", 100, 500);
    text("メニューに戻る", 100, 600);
}
void showGameSuceed(){
    background(192, 192, 255);
    screenType = 11;
    text("GAMESUCEED："+ str(score), 100, 100);
    text("再びプレイする", 100, 500);
    text("メニューに戻る", 100, 600);
}

void showMainMenu(){
    background(192, 192, 255);
    screenType = 0;
    text("プレイする", 100, 500);
}
void showDifficultySelectMenu(){
    background(192, 192, 255);
    screenType = 12;
    text("難易度", 550, 100);
    fill(255);
    text("普通", 570, 250);
    text("難しい", 550, 350);
    text("ほぼ不可能", 510, 450);
    fill(0);
}
