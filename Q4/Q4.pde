

float x = 10, y = 10, b_w = 3, b_h = 3, dx = 1, dy = 2;
int block[] = {2,2,2,2,2,2,2,2,2,2};
void setup() {
size(400,300);
}
void draw() {
if (x < 0 || x+b_w >=width) {dx = -dx;}
if (y < 0 || y+b_h >=height) {dy = -dy;}
x += dx; // dx は1フレームごとにx方向に動く距離(速度)
y += dy; // dy は1フレームごとにy方向に動く距離(速度)
// checkBlocks();
background(192, 192, 255);
rect(x, y, b_w, b_h); // ball
showBlocks(block);
}
