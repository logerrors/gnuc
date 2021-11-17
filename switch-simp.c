long my_switch(long x, long n){
    long val = x;
    switch (n)
    {
    case 10:
        val += 12;
        break;
    case 19:
        val *= 3;
        break;
    default:
        val = 100;
    }
    val = val + x * 20;
    return val;
}