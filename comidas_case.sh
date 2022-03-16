#!/bin/bash

# PARTE 2

for dia in 'lunes' 'martes' 'miércoles' 'jueves' 'viernes' 'sábado' 'domingo'; do
    plato="ensalada y pasta"
    if [ $dia = 'lunes' ] || [ $dia = 'viernes' ]; then
        plato="pizza"
    fi

    echo "El $dia hay $plato."
done

# PARTE 1

# por defecto, no dispondremos de lo que se introduzca 
# (a no ser que entre en una de las condiciones de debajo)
cuantoCuesta="No disponemos de ese plato actualmente."

case $1 in
    -z)
        cuantoCuesta="Debe introducir un plato: pasta, pizza o ensalada."
        ;;

    "pasta")
        cuantoCuesta="El plato de pasta cuesta 5€"

        puedesComprar="Puedes comprarlo :)"
        # si no introduzco 2do argumento o es menor que 5
        if [ -z $2 ] || [ $2 -lt 5 ]; then
            puedesComprar="Desgraciadamente, no puedes comprarlo :("
        fi
        ;;

    "ensalada")
        cuantoCuesta="El plato de ensalada cuesta 3€"

        puedesComprar="Puedes comprarlo :)"
        if [ -z $2 ] || [ $2 -lt 3 ]; then
            puedesComprar="Desgraciadamente, no puedes comprarlo :("
        fi
        ;;

    "pizza")
        cuantoCuesta="El plato de pizza cuesta 12€"

        puedesComprar="Puedes comprarlo :)"
        if [ -z $2 ] || [ $2 -lt 12 ]; then
            puedesComprar="Desgraciadamente, no puedes comprarlo :("
        fi
        ;;

    *)
        cuantoCuesta="Lo siento, pero no nos queda $1."
        ;;

esac 

echo $cuantoCuesta

if [ ! -z $puedesComprar ]; then
    echo $puedesComprar
fi