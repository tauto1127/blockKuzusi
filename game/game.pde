void setup(){
    String lines[] = loadStrings("numbers.txt");
    float nums[] = new float[lines.length];
    float avg = 0;

    for (int i = 0; i < lines.length; ++i) {
        nums[i] = float(lines[i]);
        avg += nums[i];
    }
    avg = avg / lines.length;
    println(nums);
    println(avg);
}
void draw(){

}