boolean isOverlap(int x1, int y1, int w1, int h1, 
  int x2, int y2, int w2, int h2) {
  return x1 < x2+w2 && x2 < x1+w1 && y1 < y2+h2 && y2 < y1+h1;
}

void checkHit(int x1, int y1, int w1, int h1, 
  int x2, int y2, int w2, int h2, int blockScore, int arrayX, int arrayY, boolean isPoint){
    if(isOverlap(x1, y1, w1, h1, x2, y2, w2, h2) && screenType == 1){
        if(isPoint){
          score = score + blockScore;
          stage[arrayX][arrayY] = 0;
        }
        else{getHit();};
    }else{
    }

    for(Ball ball : ballList){//ボールの評価
    
      if(isOverlap(x1, y1, w1, h1, ball.x, ball.y, width_ball, height_ball) && screenType == 1){
        if(isPoint){
          score = score + blockScore;
          if(ball.dy == -12){
            ball.dy = 18;
          }else{
            ball.dy = -12;
          }
          stage[arrayX][arrayY] = 0;
        }else{
          ball.y = height_ball + y1 + h1 + 5;
          if(ball.dy == -12){
            ball.dy = 18;
          }else{
            ball.dy = -12;
          }
          if(stage[arrayX][arrayY] != -1){stage[arrayX][arrayY] --;}
        }
      }
    }
}
void checkHitRacketAndBall(int x1, int y1){
  if(isOverlap(x1, y1, width_ball, height_ball, x_racket, y_racket, width_racket, height_racket)){
    getHit();
  }
}

void getHit(){
    rect(100, 100, 100, 100); //<>//
    //println("HIT");
    showGameOver();
}
int blockHitCheck(int x, int y, int w, int h,
 int bx, int by, int bw, int bh, int dx, int dy) {
  int xflag = 0, yflag = 0;
  
  if (!isOverlap(x,y,w,h,bx+dx,by+dy,bw,bh)) {
    return 0; // ぶつからなかったら 0を返す
  }
  
  if (isOverlap(x,y,w,h,bx+dx,by,bw,bh)) xflag = 1;
  if (isOverlap(x,y,w,h,bx,by+dy,bw,bh)) yflag = 2;
  if (xflag + yflag > 0) { return xflag + yflag;}
  return 3;
}