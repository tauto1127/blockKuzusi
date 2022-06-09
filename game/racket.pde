int height_racket = 40;
int width_racket  = 40;
int x_racket = 500;
int y_racket = 650;
void showRacket(){
    x_racket = mouseX;
    rect(x_racket, y_racket, width_racket, height_racket);
}

void keyPressed() {
    switch(keyCode){
        case UP:
            width_racket = width_racket + 1; //<>//
            break;
        case DOWN:
            width_racket = width_racket - 1;
            break;
        default:
            break;
    }
}
