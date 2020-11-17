import UIKit

//Map Function

// La función map (_ :) recorre cada elemento de una colección y aplica una operación a cada elemento de la colección. Devuelve una colección de elementos resultantes a los que se aplicó la operación.

let celsius = [-5.0, 10.0, 21.0, 33.0, 50.0]
var farenheit:[Double] = []

// Transformación usando un loop
for value in celsius {
    farenheit += [value * 9/5 + 32]
}
print(farenheit)
// la salida es [23.0, 50.0, 69.8, 91.4, 122.0]


// vamos con la versión .map
let farenheithMap = celsius.map { $0 * 9/5 + 32}
print(farenheithMap)
// la salida es [23.0, 50.0, 69.8, 91.4, 122.0]

// también es posible hacerlo en la misma linea
[-5.0, 10.0, 21.0, 33.0, 50.0].map { $0 * (9/5) + 32 }

//Cómo funciona?
//La función map (_ :) transforma un array en otro, aplicando una función a cada elemento del array. El "closure": $0 * (9/5) + 32 toma el valor de entrada en Celsius y devuelve un valor en FahrenheitMap. El array resultante de map (_ :) se construye a partir de esos valores convertidos.


//Reduce Function
//La función reduce (_: _ :) recorre todos los elementos de una colección y los reduce a un único valor.
// En el procesamiento de datos, puede haber muchos escenarios en los que operaciones simples como estas son útiles. Como antes, se pueden resolver cualquiera de estos problemas con un bucle for, pero reduce (_: _ :) es simplemente más claro y rápido.

//vamos con unos ejemplos simples

let values = [10, 20, 30]
let suma = values.reduce(0,+)
print(suma)

//que hicimos? La función reduce (_: _ :) toma dos parametros, un valor inicial y un closure. En el código anterior proporcionamos el operador +, que también es una función con dos parámetros.


// Vamos con un ejemploque calcula el promedio de los números de tipo Double de un array. Primero sumamos todos los números y luego lo dividimos por la cantidad de números.
let newValues = [30.0, 4.0, 7.56, 34, 2.0]
let promedio = newValues.reduce(0.0) { ($0 + $1)} / Double(newValues.count)
print(promedio)

//Repasemos. La función reduce (_: _ :) tiene dos parámetros (sin nombre), el valor inicial y el closure
//El closure que se proporciona para la función reduce (_: _ :) también tiene dos parámetros. El resultado actual de la reducción y el nuevo valor que está a punto de reducirse



//Filter function
//La función de filter recorre cada elemento de una colección y devuelve una colección que contiene solo elementos que cumplen una condición.
//Es como aplicar una sentencia if a una colección y solo mantener los valores que pasan la condición.

let intValues = [3, 6, 8, 7, 2, 14, 17, 21, 22]
let divisiblesPorDos = intValues.filter { ($0.isMultiple(of:2))}
print(divisiblesPorDos)


// En el ejemplo anterior, filtramos números de valores pares. La función isMultiple (of :) devuelve verdadero cuando $0 se puede dividir entre 2 y falso, en caso contrario.

//A diferencia de map (_ :) y reduce (_: _ :), el closure filter (_ :) necesita devolver un boolean, verdadero o falso. Cuando el closure devuelve verdadero, el valor se mantiene y cuando se devuelve falso, el valor se descarta.




// vamos a combinar todos!!!
let now = 2020
let years = [1989, 1992, 2003, 1970, 2014, 2001, 2015, 1990, 2000, 1999]
let sum = years.filter({ $0 >= 2000 }).map({ now - $0 }).reduce(0, +)



//Para comprender bien el proceso, lo podemos ir escalando!
let resultado1 = years.filter({ $0 >= 2000 })
print(resultado1)

let  resultado2 = years.filter({ $0 >= 2000 }).map({ now - $0 })
print(resultado2)

let resultado3 = years.filter({ $0 >= 2000 }).map({ now - $0 }).reduce(0, +)
print(resultado3)
