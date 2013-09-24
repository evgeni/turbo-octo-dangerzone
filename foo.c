#include <openssl/md5.h>

void foo(void) {
	MD5_CTX md5;
	unsigned char md5result[16];
	MD5_Init(&md5);
	MD5_Final(md5result, &md5);
}
