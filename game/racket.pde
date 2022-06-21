int height_racket = 0;
int width_racket  = 0;
int x_racket = 500;
int y_racket = 650;
int dy_racket = 1;

void showRacket(){
    if(mouseX + width_racket> gameUI_x){
        x_racket = gameUI_x - width_racket;
    }else{

        x_racket = mouseX;
    }
    //println("ラケット表示");
    fill(255);
    rect(x_racket, y_racket, width_racket, height_racket);
}

void keyPressed() {
    switch(keyCode){
        case UP:
            //width_racket = width_racket + 1; //<>//

            break;
        case DOWN:
            width_racket = width_racket - 1;
            break;
        default:
            break;
    }
}
void shotBall(){
    
}