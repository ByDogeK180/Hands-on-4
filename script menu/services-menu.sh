#!/bin/bash

while true;
do

    echo "1.- Listar el contenido de un fichero (carpeta)."
    echo "2.- Crear un archivo de texto con una línea de texto."
    echo "3.- Comparar dos archivos de texto."
    echo "4.- Usar el comando awk."
    echo "5.- Usar el comando grep."

    echo "6. Salir."

    read -p "Seleccione una opcion: " opcion
    case $opcion in

        1)
            # Listar contenido
            read -p "Ingrese la ruta absoluta del fichero o carpeta: " ruta
            ls -l "$ruta"
            ;;
        2)
            # Crear un archivo de texto
            read -p "Ingrese la cadena de texto a almacenar en el archivo de texto: " texto
            echo "$texto" > archivo.txt
            echo "El archivo se ha creado exitosamente..."
            ;;
        3)
            # Comparar dos archivos de texto
            read -p "Ingrese el nombre del primer archivo: " archivo1
            read -p "Ingrese el nombre del segundo archivo: " archivo2

            cmp --silent "$archivo1" "$archivo2" && echo "Los archivos son iguales..." || echo "Los archivos son diferentes..."
            ;;
        4)
            # comando awk
            echo "Ejemplo de uso de awk:"

            echo "1  Said  azul" | awk '{print $2, $1}'
            echo "2  Cristian rojo"
            echo "3  Yoav naranaja"
            echo "1  Victor negro" | awk '{print $2, $1}'
            ;;
        5)
            # comando grep

            echo "Buscar la palabra 'mundo' en un archivo:"
            grep 'mundo' archivo.txt
            ;;
        6)
            # Salir del script
            echo "Saliendo del script..."
            exit 0
            ;;
        *)
            # error
            echo "Opcion invalida. Intentelo de nuevo..."
            ;;
    esac

done
