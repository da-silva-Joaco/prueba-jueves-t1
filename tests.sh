#!/bin/bash

##### COLORES #####
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
##### CONTADOR ######
tests_passed=0
##### TESTS EJERCICIO 1 #####
echo
echo "Ejecutando tests del ejercicio 1..."
# test 1.1
expected="5.00"
output=$(./1_distancia 3 4)
if [[ "$output" == "$expected" ]]
then
  echo -e "[  ${GREEN}OK${NC}  ]: ./1_distancia 3 4 da 5.00 ${GREEN}✔️${NC}"
  tests_passed=$((tests_passed + 1))
else
  echo -e "[ ${RED}Fail${NC} ]: Se esperaba '$expected' pero se obtuvo '$output' ${RED}❌${NC}"
fi
# test 1.2
expected="1.41"
output=$(./1_distancia 1 1)
if [[ "$output" == "$expected" ]]
then
  echo -e "[  ${GREEN}OK${NC}  ]: ./1_distancia 1 1 da 1.41 ${GREEN}✔️${NC}"
  tests_passed=$((tests_passed + 1))
else
  echo -e "[ ${RED}Fail${NC} ]: Se esperaba '$expected' pero se obtuvo '$output' ${RED}❌${NC}"
fi
# test 1.3
expected="0.00"
output=$(./1_distancia 0 0)
if [[ "$output" == "$expected" ]]
then
  echo -e "[  ${GREEN}OK${NC}  ]: ./1_distancia 0 0 da 0.00 ${GREEN}✔️${NC}"
  tests_passed=$((tests_passed + 1))
else
  echo -e "[ ${RED}Fail${NC} ]: Se esperaba '$expected' pero se obtuvo '$output' ${RED}❌${NC}"
fi
# test 1.4
expected="10.00"
output=$(./1_distancia 6 8)
if [[ "$output" == "$expected" ]]
then
  echo -e "[  ${GREEN}OK${NC}  ]: ./1_distancia 6 8 da 10.00 ${GREEN}✔️${NC}"
  tests_passed=$((tests_passed + 1))
else
  echo -e "[ ${RED}Fail${NC} ]: Se esperaba '$expected' pero se obtuvo '$output' ${RED}❌${NC}"
fi
##### TESTS EJERCICIO 2 #####
echo
echo "Ejecutando tests del ejercicio 2..."
# test 2.1
expected="0"
output=$(./2_suma_impares 2 2 2 2 2)
if [[ "$output" == "$expected" ]]
then
  echo -e "[  ${GREEN}OK${NC}  ]: ./2_suma_impares 2 2 2 2 2 da 0 ${GREEN}✔️${NC}"
  tests_passed=$((tests_passed + 1))
else
  echo -e "[ ${RED}Fail${NC} ]: Se esperaba '$expected' pero se obtuvo '$output' ${RED}❌${NC}"
fi
# test 2.2
expected="5"
output=$(./2_suma_impares 1 1 1 1 1)
if [[ "$output" == "$expected" ]]
then
  echo -e "[  ${GREEN}OK${NC}  ]: ./2_suma_impares 1 1 1 1 1 da 5 ${GREEN}✔️${NC}"
  tests_passed=$((tests_passed + 1))
else
  echo -e "[ ${RED}Fail${NC} ]: Se esperaba '$expected' pero se obtuvo '$output' ${RED}❌${NC}"
fi
# test 2.3
expected="8"
output=$(./2_suma_impares 1 3 2 3 1)
if [[ "$output" == "$expected" ]]
then
  echo -e "[  ${GREEN}OK${NC}  ]: ./2_suma_impares 1 3 2 3 1 da 8 ${GREEN}✔️${NC}"
  tests_passed=$((tests_passed + 1))
else
  echo -e "[ ${RED}Fail${NC} ]: Se esperaba '$expected' pero se obtuvo '$output' ${RED}❌${NC}"
fi
##### TESTS EJERCICIO 3 #####
echo
echo "Ejecutando tests del ejercicio 3..."
# test 3.1
expected="8"
output=$(./3_maximo 1 2 3 4 5 6 7 8)
if [[ "$output" == "$expected" ]]
then
  echo -e "[  ${GREEN}OK${NC}  ]: ./3_maximo 1 2 3 4 5 6 7 8 da 8 ${GREEN}✔️${NC}"
  tests_passed=$((tests_passed + 1))
else
  echo -e "[ ${RED}Fail${NC} ]: Se esperaba '$expected' pero se obtuvo '$output' ${RED}❌${NC}"
fi
# test 3.2
expected="0"
output=$(./3_maximo 0)
if [[ "$output" == "$expected" ]]
then
  echo -e "[  ${GREEN}OK${NC}  ]: ./3_maximo 0 da 0 ${GREEN}✔️${NC}"
  tests_passed=$((tests_passed + 1))
else
  echo -e "[ ${RED}Fail${NC} ]: Se esperaba '$expected' pero se obtuvo '$output' ${RED}❌${NC}"
fi
# test 3.3
expected="9231"
output=$(./3_maximo 1 5124 312 4 9231 -9999 9230 4214)
if [[ "$output" == "$expected" ]]
then
  echo -e "[  ${GREEN}OK${NC}  ]: ./3_maximo 1 5124 312 4 9231 -9999 9230 4214 da 9231 ${GREEN}✔️${NC}"
  tests_passed=$((tests_passed + 1))
else
  echo -e "[ ${RED}Fail${NC} ]: Se esperaba '$expected' pero se obtuvo '$output' ${RED}❌${NC}"
fi
##### TESTS EJERCICIO 4 #####
echo
echo "Ejecutando tests del ejercicio 4..."
# test 4.1
expected="3 "
output=$(./4_divisible_por_3 3 3)
if [[ "$output" == "$expected" ]]
then
  echo -e "[  ${GREEN}OK${NC}  ]: ./4_divisible_por_3 3 3 da 3 ${GREEN}✔️${NC}"
  tests_passed=$((tests_passed + 1))
else
  echo -e "[ ${RED}Fail${NC} ]: Se esperaba '$expected' pero se obtuvo '$output' ${RED}❌${NC}"
fi
# test 4.2
expected="Error: a tiene que ser menor o igual a b"
output=$(./4_divisible_por_3 100 9)
if [[ "$output" == "$expected" ]]
then
  echo -e "[  ${GREEN}OK${NC}  ]: ./4_divisible_por_3 100 9 imprime 'Error: a tiene que ser menor o igual a b' ${GREEN}✔️${NC}"
  tests_passed=$((tests_passed + 1))
else
  echo -e "[ ${RED}Fail${NC} ]: Se esperaba '$expected' pero se obtuvo '$output' ${RED}❌${NC}"
fi
# test 4.3
expected="3 6 9 "
output=$(./4_divisible_por_3 1 10)
if [[ "$output" == "$expected" ]]
then
  echo -e "[  ${GREEN}OK${NC}  ]: ./4_divisible_por_3 1 10 da 3, 6 y 9 ${GREEN}✔️${NC}"
  tests_passed=$((tests_passed + 1))
else
  echo -e "[ ${RED}Fail${NC} ]: Se esperaba '$expected' pero se obtuvo '$output' ${RED}❌${NC}"
fi
# test 4.4
expected="87 90 93 96 99 "
output=$(./4_divisible_por_3 85 100)
if [[ "$output" == "$expected" ]]
then
  echo -e "[  ${GREEN}OK${NC}  ]: ./4_divisible_por_3 85 100 da 87, 90, 93, 96 y 99 ${GREEN}✔️${NC}"
  tests_passed=$((tests_passed + 1))
else
  echo -e "[ ${RED}Fail${NC} ]: Se esperaba '$expected' pero se obtuvo '$output' ${RED}❌${NC}"
fi
echo
##### RESULTADO FINAL #####
if [[ $tests_passed -eq 14 ]]
then
  echo -e "Todos los tests pasaron ${GREEN}✔️${NC}"
else
  echo "Resultado: $tests_passed/14 tests OK."
fi
echo
exit 0
