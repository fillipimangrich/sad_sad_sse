#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>

const int N = 4;

void fsad(int arr_1[][N], int arr_2[][N])
{
	int i, j;
    int sad = 0;

	for (i = 0; i < N; i++){
        for (j = 0; j < N; j++){
            sad += pow((arr_1[i][j] - arr_2[i][j]),2);
        }
    }

    printf("SAD: %d \n", sad);
}

int main()
{
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

    for(int k = 0; k < N; k++){
        for(int h = 0; h < N; h++){
            printf("%d ", arr_1[k][h]);
        }
        printf("\n");
    }

	fsad(arr_1, arr_2);

    end = clock();
    double duration = ((double)end - start )/CLOCKS_PER_SEC;
    printf("Tempo de execucao: %.10f", duration);
	return 0;
}
