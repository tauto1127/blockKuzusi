void mousePressed(){
    switch(screenType){
        case 0://メインメニュー
            if(isOverlap(100, 450, 7 * 50, 50, mouseX,mouseY,10,10)){//xはそのまま yはy-文字の大きさ, 文字数*大きさ、大きさ
            //stageInit();
            //showGame();
            showDifficultySelectMenu();
            }
            break;
        case 12://難易度設定
            if(isOverlap(570, 200, 2 * 50, 50, mouseX,mouseY,10,10)){//xはそのまま yはy-文字の大きさ, 文字数*大きさ、大きさ
                width_racket = 40;
                height_racket = 40;
                difficulty = "common";
                stageInit();
                showGame();
            }else if (isOverlap(510, 400, 5 * 50, 50, mouseX,mouseY,10,10)) {//とても難しい
                width_racket = 80;
                height_racket = 80;
                difficulty = "veryDifficult";
                stageInit();
                showGame();
            }
            else if (isOverlap(550, 300, 3 * 50, 50, mouseX,mouseY,10,10)) {//難しい
                width_racket = 10;
                height_racket = 60;
                difficulty = "difficult";
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
