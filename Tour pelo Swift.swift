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
