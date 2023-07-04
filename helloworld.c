#include <stdio.h>

int main( int argc, char const *argv[] )
{
    int i;
    /* code  */

    if ( argc > 1 ){

        for( i = 1; i < argc; i++ ) {

            printf("\nhello %s\n", argv[i]);

        }

    } else {

        printf("\n I have no idea who you are???\n");

        return 13;

    }

    /* printf("hello world"); */ 
    
    return 0;

}
