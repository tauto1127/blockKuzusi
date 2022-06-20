/*
 ふたつの長方形が重なるかどうかをしらべて、
 重なったとき:true, 重ならないとき:false を返す
*/
boolean isOverlap(int x1, int y1, int w1, int h1, 
  int x2, int y2, int w2, int h2) {
  return x1 < x2+w2 && x2 < x1+w1 && y1 < y2+h2 && y2 < y1+h1;
}

/*
 ブロックの位置と大きさ、
 ボールの位置と大きさ、ボールの移動速度の情報を与えて
 跳ね返る方向（x軸、y軸の別）を返す
 跳ね返らない時: 0
 x軸のみの時: 1
 y軸のみの時: 2
 x軸, y軸両方の時: 3
*/
/*
int blockHitCheck(float x, float y, float w, float h,
 float bx, float by, float bw, float bh, float dx, float dy) {
  int xflag = 0, yflag = 0;
  
  if (!isOverlap(x,y,w,h,bx+dx,by+dy,bw,bh)) {
    return 0; // ぶつからなかったら 0を返す
  }
  
  if (isOverlap(x,y,w,h,bx+dx,by,bw,bh)) xflag = 1;
  if (isOverlap(x,y,w,h,bx,by+dy,bw,bh)) yflag = 2;
  if (xflag + yflag > 0) { return xflag + yflag;}
  return 3;
}*/
void checkHit(int x1, int y1, int w1, int h1, 
  int x2, int y2, int w2, int h2, int blockScore, int arrayX, int arrayY, boolean isPoint){
              println(x1);
    if(isOverlap(x1, y1, w1, h1, x2, y2, w2, h2) && screenType == 1){

        if(isPoint){
          score = score + blockScore;
          stage[arrayX][arrayY] = 0;

        }
        else{getHit();};
    }else{
    }
    for(Ball ball : arraylist){//ボールの評価
      if(isOverlap(x1, y1, w1, h1, ball.x, ball.y, width_ball, height_ball) && screenType == 1){
        println("yes");
        if(isPoint){
          score = score + blockScore;
          ball.dy = ball.dy * -1;
          stage[arrayX][arrayY] = 0;
        }else{
          println(x1 +" "+ y1 +" "+ w1 +" "+ h1 +" "+ ball.x +" "+ ball.y +" "+ width_ball +" "+ height_ball);
          ball.y = height_ball + y1 + h1 + 5;
          ball.dy = ball.dy * -1;
          stage[arrayX][arrayY] = stage[arrayX][arrayY] -1;
        }
      }else{

      }
    }
}

void checkHitRacketAndBall(int x1, int y1){
  if(isOverlap(x1, y1, width_ball, height_ball, x_racket, y_racket, width_racket, height_racket)){
    getHit();
  }
}

void getHit(){
    println(stageBackUp);
    rect(100, 100, 100, 100); //<>//
    println("HIT");
    showGameOver();
}
