long my_switch(long x, long n){
    long val = x;
    switch (n)
    {
    case 10:
        val += 12;
        break;
    case 12:
        val *= 3;
    case 13:
        val += 1;
        break;
    case 14:
    case 15:
        val += 8;
        break;
    default:
        val = 100;
    }
    val = val + x * 20;
    return val;
}