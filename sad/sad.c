
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>

const int N = 64;

void fsad(int arr_1[][N], int arr_2[][N])
{
	int i, j;
    int sad = 0;
    int x;
	for (i = 0; i < N; i++){
        for (j = 0; j < N; j++){
            sad += fabs(arr_1[i][j] - arr_2[i][j]);
        }
    }

    // printf("\nSAD: %d \n", sad);
}

int main()
{
    for(int i=0; i<50; i++){
        clock_t start, end;
        start = clock();

        int arr_1[N][N];
        int arr_2[N][N];

        for(int k = 0; k < N; k++){
            for(int h = 0; h < N; h++){
                arr_1[k][h] = rand() % 256;
                arr_2[k][h] = rand() % 256;
            }
        }


        fsad(arr_1, arr_2);

        end = clock();
        double duration = ((double)end - start )/CLOCKS_PER_SEC;
        printf("Tempo de execucao: %.10f\n", duration);
    }
	return 0;
}
