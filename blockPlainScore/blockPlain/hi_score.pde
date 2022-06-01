int load_hi_score(){
    String lines[];

    lines = loadStrings("data.txt");
    if(lines == null){
        return 0;
    }else{
        return int(lines[0]);
    }
}
void store_high_score(int hi_score){
    String lines[] = new String[1];

    lines[0] = str(hi_score);
    saveStrings("data.txt", lines);
}