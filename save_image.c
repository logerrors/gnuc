#include <stdio.h>
#include <errno.h>
#include <stdlib.h>
#include <string.h>

extern char _binary_image_jpg_start;
extern char _binary_image_jpg_end;
extern char _binary_image_jpg_size;

int main(int argc, char const *argv[])
{
    size_t image_size = &_binary_image_jpg_end - &_binary_image_jpg_start;
    printf("%p %lu\n", &_binary_image_jpg_start, image_size);
    FILE* fp = fopen(argv[1], "wb+");
    size_t m = fwrite(&_binary_image_jpg_start, image_size, 1, fp);
    fclose(fp);
    return 0;
}
