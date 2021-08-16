1_distancia: 1_distancia.c
	@gcc -lm -o 1_distancia 1_distancia.c

2_suma_impares: 2_suma_impares.c
	@gcc -o 2_suma_impares 2_suma_impares.c

3_maximo: 3_maximo.c
	@gcc -o 3_maximo 3_maximo.c

4_divisible_por_3: 4_divisible_por_3.c
	@gcc -o 4_divisible_por_3 4_divisible_por_3.c

clean:
	rm 1_distancia 2_suma_impares 3_maximo 4_divisible_por_3

test: 1_distancia 2_suma_impares 3_maximo 4_divisible_por_3
	@bash tests.sh
