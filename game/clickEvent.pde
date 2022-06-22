void mousePressed(){
    switch(screenType){
        case 0://メインメニュー
            if(isOverlap(100, 450, 7 * 50, 50, mouseX,mouseY,10,10)){//xはそのまま yはy-文字の大きさ, 文字数*大きさ、大きさ
            showDifficultySelectMenu();
            }
            break;
        case 12://難易度設定
            if(isOverlap(570, 200, 2 * 50, 50, mouseX,mouseY,10,10)){//xはそのまま yはy-文字の大きさ, 文字数*大きさ、大きさ
                width_racket = 40;
                height_racket = 40;
                difficulty = "common";
                StageInit();
                showGame();
            }else if (isOverlap(510, 400, 5 * 50, 50, mouseX,mouseY,10,10)) {//とても難しい
                width_racket = 80;
                height_racket = 80;
                difficulty = "veryDifficult";
                StageInit();
                showGame();
            }
            else if (isOverlap(550, 300, 3 * 50, 50, mouseX,mouseY,10,10)) {//難しい
                width_racket = 60;
                height_racket = 60;
                difficulty = "difficult";
                StageInit();
                showGame();
            }
            break;
        case 1://ゲーム画面
            if(time % 2 == 0){
                ballList.add(new Ball(mouseX, y_racket - height_racket, 0,-12));
            }else{
                ballList.add(new Ball(mouseX, y_racket - height_racket, 0,-12));
            }
            break;
        case 10://ゲーム終了
            if(isOverlap(100, 450, 7 * 50, 50, mouseX,mouseY,10,10)){//xはそのまま yはy-文字の大きさ, 文字数*大きさ、大きさ
            StageInit();
            showGame();
            }else if (isOverlap(100, 550, 7 * 50, 50, mouseX,mouseY,10,10)) {
                showMainMenu();
            }
            break;
        case 11://ゲームオーバー
            if(isOverlap(100, 450, 7 * 50, 50, mouseX,mouseY,10,10)){//xはそのまま yはy-文字の大きさ, 文字数*大きさ、大きさ
            StageInit();
            showGame();
            }else if (isOverlap(100, 550, 7 * 50, 50, mouseX,mouseY,10,10)) {
                showMainMenu();
            }
            break;
    }
}
