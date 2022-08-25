#include <stdio.h>

extern char _binary_dat2embed_txt_start;
extern char _binary_dat2embed_txt_end;

int main(void)
{
	char* p = &_binary_dat2embed_txt_start;
	while( p != &_binary_dat2embed_txt_end){
		putchar( (int)(*p) );
		p++;
	}
	return 0;
}

