#!/bin/bash
#calculadora
op=1
while [ $op -ne 5 ]
do
  echo ""
  echo "Calculadora"
  echo ""
  echo "1. Multiplicación"
  echo "2. Suma"
  echo "3. Resta"
  echo "4. AND"
  echo "5. Salir"
  echo "Elija una Opción: "
  read op

case $op in
1)  echo ""
    echo "MULTIPLICACION"
    echo "  "
    echo "Ingrese el 1er Digito:"
    read num1
    echo  "Ingrese el 2do Digito:"
    read num2
    res=`echo "$num1 * $num2" | bc`
    echo "Respuesta: "$res
    echo "";; 
2)  echo ""
    echo "SUMA"
    echo " "
    echo "Ingrese el 1er Digito:"
    read num1
    echo  "Ingrese el 2do Digito: "
    read num2
    res=`echo "$num1 + $num2" | bc`
    echo "Respuesta: "$res
    echo "";; 
3)  echo ""
    echo "RESTA"
    echo " "
    echo "Ingrese el 1er Digito:"
    read num1
    echo  "Ingrese el 2do Digito: "
    read num2
    res=`echo "$num1 - $num2" | bc`
    echo "Respuesta: "$res
    echo "";; 
4)  echo ""
    echo "AND"
    echo " "
    echo "Ingrese el 1er Digito:"
    read num1
    echo  "Ingrese el 2do Digito: "
    read num2
    if [ $num1 && $num2 ]
    then
      echo "Verdadero"
    else
      echo "Falso"
    fi
    echo
    echo "";;
5)  echo "Adios";;
*)  echo "Opción no valida!!!!!";;
esac
done
