#!/bin/bash

for dia in 'lunes' 'martes' 'miércoles' 'jueves' 'viernes' 'sábado' 'domingo'; do
    plato="ensalada y pasta"
    if [ $dia = 'lunes' ] || [ $dia = 'viernes' ]; then
        plato="pizza"
    fi

    echo "El $dia hay $plato."
done

# si no introduzco 1er argumento desde terminal
if [ -z $1 ]; then 
    echo "Debe introducir un plato: pasta, pizza o ensalada."

# si mi 1er argumento es "pasta"
elif [ $1 = "pasta" ]; then
    echo "El plato de pasta cuesta 5€"

    # si no introduzco 2do argumento o es menor que 5
    if [ -z $2 ] || [ $2 -lt 5 ]; then
        echo "Desgraciadamente, no puedes comprarlo :("

    # si es mayor o igual a 5
    else
        echo "Puedes comprarlo :)"

    fi

# si mi 1er argumento es "ensalada"
elif [ $1 = "ensalada" ]; then
    echo "El plato de ensalada cuesta 3€"

    if [ -z $2 ] || [ $2 -lt 3 ]; then
        echo "Desgraciadamente, no puedes comprarlo :("

    else
        echo "Puedes comprarlo :)"

    fi

# si mi 1er argumento es "pizza"
elif [ $1 = "pizza" ]; then
    echo "El plato de pizza cuesta 12€"

    if [ -z $2 ] || [ $2 -lt 12 ]; then
        echo "Desgraciadamente, no puedes comprarlo :("

    else
        echo "Puedes comprarlo :)"

    fi

else
    echo "No disponemos de ese plato actualmente."

fi