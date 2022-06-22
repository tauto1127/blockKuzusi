int[] ballData = new int[2];
int width_ball = 10;
int height_ball = 10;
int ballUpDy = -12;
int ballDownDy = 18;
class Ball{
    int x;
    int y;
    int dx;
    int dy;
    Ball(int x, int y, int dx, int dy){
        this.x = x;
        this.y = y;
        this.dx = dx;
        this.dy = dy;
    }
}
public ArrayList<Ball> ballList = new ArrayList<Ball>();
void showBall(){
    for(Ball ball: ballList){
        rect(ball.x, ball.y, width_ball, height_ball);
        ball.y = ball.y + ball.dy;
        ball.x = ball.x + ball.dx;
        checkHitRacketAndBall(ball.x, ball.y);
    }
}
