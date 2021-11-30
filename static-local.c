int f(){
    static int x = 0;
    x = rand() * 10;
    if(x>5){
        static int y;
        y=y+1;
        return y;
    }else{
        static unsigned y;
        y=y+100;
        return y;
    }
}