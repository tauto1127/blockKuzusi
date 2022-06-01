float x = 10, y = 10, b_w = 3, b_h = 3, dx = 1, dy = 2;
float blx = 100, bly = 100, blw = 200, blh = 100;
void setup() {
size(400,300);
}
void draw() {
int chk = blockHitCheck(blx, bly, blw, blh, x, y, b_w, b_h, dx, dy);
if (chk == 1) { // x方向でぶつかった
  dx = dx * -1;
} else if (chk == 2) { // y方向でぶつかった
  dy = dy * -1;// dy の向きを変える
} else if (chk == 3) { // x, y方向でぶつかった
  dx = dx * -1;
  dy = dy * -1;// dx, dy の向きをともに変える
}//checkHitBlock
if (x < 0 || x+b_w >=width) {dx = dx * -1;}
if (y < 0 || y+b_h >=height) {dy = dy * -1;}
x += dx; // dx は1フレームごとにx方向に動く距離(速度)
y += dy; // dy は1フレームごとにy方向に動く距離(速度)
//checkHitBlock(); // この関数を作成し、呼び出す
background(192, 192, 255);
rect(blx, bly, blw, blh); // block
rect(x, y, b_w, b_h); // ball
}
