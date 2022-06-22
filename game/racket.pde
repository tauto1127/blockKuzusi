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
    fill(255);
    rect(x_racket, y_racket, width_racket, height_racket);
}