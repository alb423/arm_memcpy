#include <stdlib.h>
#include <string.h>
main()
{
	char *pTmp = malloc(10);
	char pSrc[]="abcd";
	memcpy(pTmp, pSrc, strlen(pSrc));
        free(pTmp);
}
