int blockHitCheck(float x, float y, float w, float h,
float bx, float by, float bw, float bh, float dx, float dy) {
int xflag = 0, yflag = 0;
if (!isOverlap(x,y,w,h,bx+dx,by+dy,bw,bh)) {
return 0; // ぶつからなかったら 0を返す
}
if (isOverlap(x,y,w,h,bx+dx,by,bw,bh)) xflag = 1;
if (isOverlap(x,y,w,h,bx,by+dy,bw,bh)) yflag = 2;
return xflag + yflag;
}
