long my_for(long n){
    long i = 10;
    long result = 1;
    for(i=2;i<=n;i++){
        result  *= i;
    }
    return result;
}