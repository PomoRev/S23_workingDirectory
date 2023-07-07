#include <stdio.h>


int main(int argc, char const *argv[])
{
    /* code */
    int i , error = 0;

    if ( argc > 1 ) {

        for ( i = 1; i < argc; i++ ){

            printf( "\nhey there %s\n", argv[i]);
        
        }
    } else {

        /* error code for no people listed */ 

        error = 1;

    }


    printf("hello world!\n");

    return error;
}
