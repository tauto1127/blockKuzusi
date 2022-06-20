int[] ballData = new int[2];
int width_ball = 10;
int height_ball = 10;
class Ball{
    int x;
    int y;
    int dy;
    Ball(int x, int y, int dy){
        this.x = x;
        this.y = y;
        this.dy = dy;
    }
}
public ArrayList<Ball> arraylist = new ArrayList<Ball>();
void showBall(){
    for(Ball ball: arraylist){
        rect(ball.x, ball.y, width_ball, height_ball);
        ball.y = ball.y + ball.dy;
        //checkHit(ball.x, ball.y, width_ball, height_ball, x_racket, y_racket, width_racket, height_racket, 0,0, 0, false);
        checkHitRacketAndBall(ball.x, ball.y);
    }
}
