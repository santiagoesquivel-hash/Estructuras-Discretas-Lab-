# Preguntas

## 1.- ¿Cuáles son las principales diferencias entre Haskell y Rust?

Haskell es un lenguaje diseñado para expresar computación, al nivel más alto posible (con algunas excepciones). Es un lenguaje que dice "¿qué necesitamos hacer para tomar matemáticas abstractas y ejecutarlas en una computadora?". Por eso, el compilador y el sistema de tiempo de ejecución se esfuerzan mucho por "ocultar" la complejidad del silicio y el sistema operativo subyacentes al programador. Hay lugares donde puedes acceder a ellos, sí, pero para la mayoría del trabajo en Haskell, el programador confía en GHC y el RTS para traducir la naturaleza de alto nivel de Haskell a instrucciones de máquina de bajo nivel.

Rust, por el contrario, es un lenguaje diseñado para lidiar con los compromisos sucios de la programación imperativa. Te hace pensar en cada bit y byte, y en el núcleo, y en los mutexes, y en todas esas cositas que hacen de la programación imperativa una lata. El tiempo de ejecución es significativamente más ligero que el de Haskell (comparable al de C), y si bien el compilador también es complejo, necesita hacer menos para mapear la semántica del lenguaje a la semántica del hardware. Lo que esto significa es que los programadores de Rust controlan cómo se ejecuta su programa de una manera más directa, pero esto viene con una pérdida de abstracción.

## 2.- ¿Por qué Haskell no ha alcanzado una adopción significativa en la industria del software?

La curva de aprendizaje es una parte importante de esto, sin duda.

Considero que principalemte hay dos categorías de personas que se preocupan lo suficiente por programar mejor como para invertir  un esfuerzo significativo en aprender un lenguaje como Haskell:

- Personas que se preocupan por la programación intrínsecamente, más que como un medio para un fin.

- Personas que se preocupan por la programación como un medio para un fin, pero que han pasado suficiente tiempo golpeándose la cabeza contra las deficiencias de otros lenguajes para encontrarlos herramientas insatisfactorias para lograr sus objetivos.

Los cuales ambos tipos son minoritarios.

Un factor adicional es que para la mayoría de las tareas, las personas de la segunda categoría realmente no necesitan los beneficios que proporciona Haskell. En estos casos, la compensación de aprender el idioma puede no parecer valer la pena.

## 3.- Si tuvieras que explicarle a una persona que no es de CC la función que cumple Git frente a la de GitHub, ¿cómo se lo explicarías?

Podría decir que como tal git es una plataforma que te permite ver las veriones/actualizaciones de un código o proyecto como una línea el tiempo al igual que Github pero la diferencia es que Github es una nube en la cual varias personas pueden accesar para colaborar con un mismo trabajo/proyecto ofreciendo la misma característica que Git pero con más personas. 

# Referencias

* *Pregunta 1* .- SwingOutStateMachine. (2024). I think the issue is that the two languages are fundamentally incompatible [Comentario en Reddit]. Reddit. https://www.reddit.com/r/haskell/comments/1dsxf6v/haskell_vs_rust_elegant/

* *Pregunta 2* .- prrxddq. (2021, septiembre 30). Why did Haskell not "succeed"? [Publicación en Reddit]. Reddit. https://www.reddit.com/r/haskell/comments/py8u24/why_did_haskell_not_succeed/
