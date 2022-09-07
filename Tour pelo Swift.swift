import UIKit

// Simple values
var myVariable = 42
myVariable = 50
let myConstant = 42

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70 //Declara expressamente que o valor é double
let explicitFloat: Float = 4

let label = "The width is "
let width = 94
let widthLabel = label + String(width) //demonstra para o compilador que o width agora é uma string

let apples = 3
let oranges = 5
let applesSummary = "I have \(apples) apples" //mesma coisa que o String, mas mais elegante
let fruitSummary = "I have \(apples + oranges) fruits"


/* Quebra a linha do código para ficar legível */ let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) fruits"
"""

var shoppingList = ["catfish", "water", "tulips"] //cria listas, como vetores no Portugol
shoppingList[1] = "bottle of water" //Acessamos o índice 1 da lista anterior e mudamos o elemento

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic"
]
occupations["Jayne"] = "Public Relations" //Cria a lista como um dicionário e conseguimos incluir dados assim

let emptyArray: [String] = [] //inicia o vetor vazio e inclui os dados posteriorment
let emptyDictionary: [String: Float] = [:]
//End Simple Values

//Begin Control Flow

let individualScore = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScore {
    if score > 50{
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

var optionalString: String? = "Hello" //Pode iniciar a variável, ou não
print(optionalString == nil) //mesmo ela sendo uma String opcional, atribuímos um valor, então ela não é nula (nil)

var optionalName: String? = "John Appleseed" //se não tiver um valor, ela é ignorada
var greeting = "Hello!"
if let name = optionalName{
    greeting = "Hello, \(name)"
}
print(greeting)

let nickname: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)" //Os ?? determinam que se um valor por nulo ou não tiver valor, a outra variável/constante entrará no lugar

let vegetable = "red pepper"
switch vegetable { //É um tipo avançado de if, onde eu posso colocar várias alternativas
case "celery":
    print ("Add some raisings")
case "cucumber", "watercress":
    print("That would make a great sandwich")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in a soup")
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 11, 13],
    "Fibtonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25]
]
var largest = 0
var key = ""
for (_key, numbers) in interestingNumbers { //O _ não nomina o número inicialmente, sendo assim, vai analisar todos os números apresentados na lista, assim como os nomes da lista, representados por key
    for number in numbers {
        if number > largest {
            largest = number
            key = _key
        }
    }
}
print (largest)
print(key)

var n = 2
while n < 100 { //enquanto
    n *= 2
}
print(n)

var m = 2
repeat { // faça enquanto
    m *= 2
}while m < 100
print(m)

var total = 0
for i in 0..<4 { //fará uma iteração de 0 até 3, se fosse ... , contaria de 0 até 4
    total += i
}
print(total)

var newTotal = 0
for i in 0...4 {
    newTotal += i
}
print(newTotal)
