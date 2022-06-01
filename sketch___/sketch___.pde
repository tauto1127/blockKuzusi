float x = 50, y = 50, b_w = 3, b_h = 3, dx = 1, dy = 2;//x:10, y:10
int block[] = {2,2,2,2,2,2,2,2,2,2};
float r_w = 50.0;

void checkBlocks(){
  for (int i = 0; i < 10 ; i++) {
if (block[i] > 0) {
int ret = blockHitCheck(i * 40, 40, 40, 40, x, y, b_w, b_h, dx, dy);
if (ret > 0) {
if (ret == 1) { /* x軸方向に反射 */
dx = -dx;
block[i]--;
} else if (ret == 2) { /* y軸方向に反射 */
dy = -dy;
block[i]--;
} else if (ret == 3) { /* x軸 、y軸方向に反射 */
dx = -dx;
dy = -dy;
block[i]--;
}
}
}
}
}
void setup() {
size(400,300);
}
void draw() {
if (x < 0 || x+b_w >=width) {dx = -dx;}
if (y < 0 || y+b_h >=height) {dy = -dy;}
x += dx; // dx は1フレームごとにx方向に動く距離(速度)
y += dy; // dy は1フレームごとにy方向に動く距離(速度)
checkBlocks();
background(192, 192, 255);
rect(x, y, b_w, b_h); // ball
showBlocks(block);
if(y + b_h >= height){
  x = 10;y = 90;
  for(int i = 0; i < block.length; i++){
    block[i] = 2;
  }
}
if (y + b_h >= 250 && y < 250 + b_h &&
x + b_w >= mouseX && x <= mouseX + r_w) {
dy = -2;
}
rect(mouseX, 250, r_w, 3); // racket
}
