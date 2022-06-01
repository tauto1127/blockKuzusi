int block[] = new int[10];
float x, y, b_w = 20, b_h = 10, dx, dy;
float r_w = 50.0, r_h = 3.0;
int score = 0; //keep score value
int h_score = 0;

void setup() {
  size(400,300);
  initBall();
  initBlocks();
  h_score = load_hi_score();
}

void draw() {  
  x += dx; // dx は1フレームごとにx方向に動く距離(速度)
  y += dy; // dy は1フレームごとにy方向に動く距離(速度)
  
  background(192, 192, 255);
  rect(x, y, b_w, b_h); // ball


  checkBlocks();
  showBlocks();
  
  if(checkAndShowRacket(height-50)){
    score ++;
    if(score > h_score){
      h_score = score;
      store_high_score(score);//課題6-1
      }
  }
  fill(0);
  text(score, 30, height - 50);
  fill(255);

  fill(0, 0, 255);
  text(h_score, 30, height - 20);
  fill(255);
  
  // 壁との衝突
  if (y + b_h >= height) {
    initBall();
    initBlocks();
  }
  if (x < 0 || x+b_w >=width) {dx = -dx;}
  if (y < 0) {dy = -dy;}
}
