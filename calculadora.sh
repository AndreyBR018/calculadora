#!/bin/bash

echo "Bem-vindo à Calculadora no Linux!"

while true; do
    echo "Digite o primeiro número:"
    read num1

    echo "Digite o segundo número:"
    read num2

    echo -e "\nEscolha a operação que deseja realizar:"
    echo "1. Soma (total de dois números)"
    echo "2. Subtração (diferença entre dois números)"
    echo "3. Multiplicação (produto de dois números)"
    echo "4. Divisão (quociente de dois números)"
    echo "5. Sair"
    read escolha

    case $escolha in
        1)
            resultado=$(echo "$num1 + $num2" | bc)
            echo "Resultado da soma: $resultado"
            ;;
        2)
            resultado=$(echo "$num1 - $num2" | bc)
            echo "Resultado da subtração: $resultado"
            ;;
        3)
            resultado=$(echo "$num1 * $num2" | bc)
            echo "Resultado da multiplicação: $resultado"
            ;;
        4)
            if [ "$num2" != "0" ]; then
                resultado=$(echo "scale=2; $num1 / $num2" | bc)
                echo "Resultado da divisão: $resultado"
            else
                echo "Erro: Divisão por zero não é permitida."
            fi
            ;;
        5)
            echo "Encerrando o programa. Obrigado!"
            break
            ;;
        *)
            echo "Opção inválida. Tente novamente."
            ;;
    esac

    echo -e "\n-----------------------------\n"
done

