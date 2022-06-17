/*
enum buttonEvent{
    reStartButtonClicked
};

class Button{
    private int buttonType;
    private int buttonX;
    private int buttonY;
    private int buttonWidth;
    private int buttonHeight;
    private String buttonText;
    private int textSize;
    private int buttonActionNum;
    Button(int x, int y, int width, int height, String text, int textSize, int bottonActionNum){
        this.buttonX = x;
        this.buttonY = y;
        this.buttonWidth = width;
        this.buttonHeight = height;
        this.buttonText = text;
        this.textSize = textSize;
        this.buttonType = 0;
        this.buttonActionNum = buttonActionNum;
    }
    public int isButtonClicked(){
        if(isOverlap(this.buttonX, this.buttonY, this.buttonWidth, this.buttonHeight, mouseX, mouseY, 1, 1)){
            return buttonActionNum;
        }else{
            return 0;
        }
    }
    public void showButton(){
        switch(this.buttonType){
            case 0:
                rect(this.buttonX, this.buttonY, this.buttonWidth, this.buttonHeight);
                int defaultTextSize = textSize;
                textSize(this.textSize);
                text(this.buttonText,this.buttonX, this.buttonY);
                textSize(defaultTextSize);
        }
    }
}
ArrayList<Button> gameScreenButtonList = new ArrayList<Button>();
ArrayList<Button> gameSuceedScreenButtonList = new ArrayList<Button>();

void showAndCheckButtons(){
    switch(screenType){
    case 1:
        for(Button button : gameScreenButtonList){
            button.showButton();
            switch(button.isButtonClicked()){
                default:break;
            }
        }
        break;
    case 10:
        for(Button button : gameSuceedScreenButtonList){
            button.showButton();
            switch(button.isButtonClicked()){
                default:break;
            }
        }
        break;
}
}*/