target:
	mpicc src/openmpi_pram_jhouma.c -o bitonic_sort -lm

run:
	mpirun -np 4 ./bitonic_sort 400000
