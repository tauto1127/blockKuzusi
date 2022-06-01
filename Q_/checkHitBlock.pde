void checkHitBlock() {//漬かってない
int chk = blockHitCheck(blx, bly, blw, blh, x, y, b_w, b_h, dx, dy);
if (chk == 1) { // x方向でぶつかった
    dx = dx * -1;
} else if (chk == 2) { // y方向でぶつかった
    dy = dy * -1;
} else if (chk == 3) { // x, y方向でぶつかった
    dx = dx * -1;
    dy = dy * -1;
}
}
