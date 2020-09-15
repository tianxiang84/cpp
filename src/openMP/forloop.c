#include <omp.h>
void funct() {
	omp_set_num_threads( 32 );
	
	#pragma omp parrallel for 
	int i;
	for (i=0; i<100; i++) {
		int a = 1;
	}
}