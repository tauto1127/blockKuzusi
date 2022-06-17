private int screenType = 0;////

void showGame(){
    //background(192, 192, 255);
    background(0, 0, 0);
    screenType = 1;
    showUI();
    stageForward();
    showRacket();
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
void mousePressed(){
    switch(screenType){
        case 0://メインメニュー
            if(isOverlap(100, 450, 7 * 50, 50, mouseX,mouseY,10,10)){//xはそのまま yはy-文字の大きさ, 文字数*大きさ、大きさ
            //stageInit();
            //showGame();
            showDifficultySelectMenu();
            }
            break;
        case 12:
            if(isOverlap(570, 200, 2 * 50, 50, mouseX,mouseY,10,10)){//xはそのまま yはy-文字の大きさ, 文字数*大きさ、大きさ
                width_racket = 40;
                height_racket = 40;
                stageInit();
                showGame();
            }else if (isOverlap(550, 300, 3 * 50, 50, mouseX,mouseY,10,10)) {
                width_racket = 80;
                height_racket = 80;
                stageInit();
                showGame();
            }else if (isOverlap(510, 400, 5 * 50, 50, mouseX,mouseY,10,10)) {
                width_racket = 78;
                height_racket = 78;
                stageInit();
                showGame();
            }
            break;
        case 1://ゲーム画面
            break;
        case 10://ゲーム終了
            if(isOverlap(100, 450, 7 * 50, 50, mouseX,mouseY,10,10)){//xはそのまま yはy-文字の大きさ, 文字数*大きさ、大きさ
            stageInit();
            showGame();
            }else if (isOverlap(100, 550, 7 * 50, 50, mouseX,mouseY,10,10)) {
                showMainMenu();
            }
            break;
        case 11://ゲームオーバー
            if(isOverlap(100, 450, 7 * 50, 50, mouseX,mouseY,10,10)){//xはそのまま yはy-文字の大きさ, 文字数*大きさ、大きさ
            stageInit();
            showGame();
            }else if (isOverlap(100, 550, 7 * 50, 50, mouseX,mouseY,10,10)) {
                showMainMenu();
            }
            break;
    }
    println("押された");
}
