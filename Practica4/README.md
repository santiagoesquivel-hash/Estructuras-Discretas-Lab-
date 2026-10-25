# Práctica 4 Números Naturales y recursión

## Objetivo de la práctica

De acuerdo con la clase de laboratorio en la que recordamos como era la definición de números naturales y enteros se construyeron operaciones ocupando esos conjuntos, considero que el objetivo fue la práctica y análisis de la construcción de funciones recursivas para lograr el funcionamiento de operaciones sin errores. 

* Tiempo empleado: para está práctica invertí masomenos dos horas gracias a que previamente en la anterior práctica empecé a definir funciones recursivamente y ya estaba familiarizado con la estructura de estas, me quito algo de tiempo algunos errores (otra vez) con ghci y que sin querer corrí una función infinita :v. 

## Video Chivita Recursiva 

De acuerdo al video musical adjuntado en la práctica 3 y lo visto en clase tengo entendido que la recursión es definir una función con un caso base (donde este es el límite/lo más pequeño a lo que puede llegar la función) porque sin este no tiene un límite, y el caso recursivo donde la misma función se llama a ella misma para poder llegar a un caso base y poder arrojar algo, eso o entiendo donde existen casos donde le puedes dar un dato que funje también como límite y desde el caso base parte para poder contestar el caso límite que tu le pusiste. 

## ¿Cuál es la diferencia de las operaciones implementadas en ambos archivos? ¿Cómo se manejan todos los casos en cada implementación?

Las diferencias entre los archivos es que en uno implementaron en el archivo la funcion mayorEnt, además de que los casos base en el GitHub son más generales y por lo tanto pueden ser menos, también que los casos recursivos en el archivo son como más "específicos" en el sentido que contempla más posibilidades muy concretas y en el GitHub casos más generales y por lo mismo son más "sencillos" de entender. 

## ¿Por qué se tiene implementada la operación mayorEnt en el archivo enteros.hs? 

Se implemento en el caso de la resta para que al restar dos números que no sean iguales saber cuál es el mayor y dependiendo si es el primero o el segundo ponerle el signo negativo o no, aparte que solo lo usan una vez en los casos recursivos de la resta. 

## Si pudieras quedarte con una implementación. ¿Cuál sería? 

Me quedaría con la del GitHub por conocer el porqué de la estructura, ya que dependiendo como este definida una función si se usará como auxiliar para otrá se tendrá que saber exactamente donde poner (yo lo veo así), pero no es mi favorito porque las dos definiciones tanto del archivo como del GitHub en las mismas funciones ocupan funciones auxiliares para terminarse y se me hace complicado de leer en la situación cuando falla mucho la función en las que las quiero usar y tengo que estar analizando una a una debido a que todas están como "unidas". Trataría de definirlas independientemente, ya que me son más faciles de entender aún estando cansado, fastidiado, (enfermo (Caso en el que me encuentro)).

Pero considero que es como situacional, en el caso de saber como funcionan y aprenderme las definiciones si necesitaría las 3 funciones creo podría usar lo que esta en el archivo pero si no necesito todas, es más eficiente saberlas definir independientemente y más sencillo.

Una posible analogía es como tratar de desenredar y separar varios estambres de diferente color a la vez,que solo desenredar uno de un color :v. 

## NOTA:

En mi archivo solo me fue necesarío definir la suma de Enteros SIN la función resta, porque no era necesaria y me ahorró tiempo para concluir está práctica.  