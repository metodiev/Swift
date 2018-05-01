//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//7, 8 = 0
//9 = 14
//10 = 10
//A = 11
//Q = 3
//K=4
//J = 20

let cardsTeam1 = ["A", "7", "8", "10", "Q", "K", "J", "J"]
let cardsTeam2 = ["A", "7", "8", "10", "Q", "K", "A", "A"]

func countPoints(for teamCards: [String]) -> Int{
    var points = 0
    
    for card in teamCards {
        switch card {
        case "7", "8":
            points += 0
            case "9":
            points += 14
            case "10":
            points += 10
            case "A":
            points += 11
            case "Q":
            points += 3
            case "K":
            points += 4
            case "J":
            points += 20
        default:
            print("Incorrect input")
            points += 0
            
        }
    }
    return points
}




print("Team 1 -  \(countPoints(for: cardsTeam1)), Team2 - \(countPoints(for: cardsTeam2))")

//Advanced switch-case
let exactTimes = 4

func approximateCount(_ absoluteCount: Int) -> String{
    switch exactTimes {
    case 0:
       return "No"
    case 1..<5:
       return "a gew"
    case 5..<12:
        return "several"
    case 12:
        return "dozen"
    case 12..<100:
        return "sozens"
    case 100..<1000:
       return "hundreds"
        
    default:
       return "many"
    }
    
}

print("there were \(approximateCount(19)) people there")
//switch case tuple - n values to be separate in one value


let somePoints = (2,0)

switch somePoints {
case (0,0):
    print("center")
case (_, 0):
    print("on x axis")
case (0, _):
    print("on y axis")
    
case (-2...2, -2...2):
    print("close to center")
default:
    print("somewhere")
}


print(somePoints)
print(somePoints.0)
print(somePoints.1)

enum Planet{
    case Mercury
    case Venus
    case Earth
    case Mars
    case Jupiter
    case Saturn
    case Uranus
    case Neptune
}

let planet = Planet.Mars


func printDistanceTosun(planet: Planet){

switch planet {
case .Mercury:
    print("0.4 AU")
case .Venus:
    print("0.7 AU")
case .Earth:
    print("1.0 AU")
case .Mars:
    print("1.5 AU")
case .Jupiter:
    print("5.2 AU")
case .Saturn:
    print("9.5 AU")
case .Uranus:
    print("19.2 AU")
default:
    print("Incorrect planet")
}
}

print(printDistanceTosun(planet: Planet.Earth))

enum CompassDirection:String{
    case North = "North"
    case South = "South"
    case East = "East"
    case West = "West"
}


func printDirection(_ direction: CompassDirection){
    print("Direction: \(direction.rawValue)")
}

printDirection(.South)

enum Grade: Int{
    case g1 = 1
    case g2 = 2
    case g3 = 3
    case g4 = 4
    case g5, g6,g7,g8, g9,g10, g11,g12
}


let myGrade: Grade = .g3
print(myGrade.rawValue)


let myLet: Any = "string"
var myLetVar: Any = "string"
myLetVar = 7

switch myLetVar {
case is String:
    print("This is a string")
case is Int:
    print("this is an int")
default:
    print("It is other type")
}

func parseToInt(_ value: Any) -> Int{
    switch value {
    case is String:
        return Int(value as! String) ?? 0
    case is Int:
        return value as! Int
    default:
        return 0
    }
}

print(parseToInt("18"))


//var test: Int = 0
//enum myEnum:RawRepresentable {
//    case case1 = "string"
//    case case2 = 6
//    case case3 = 1.1
//}

let thisDirection = CompassDirection.init(rawValue: "North")!
//let thisDirection = CompassDirection.init(rawValue: "North")!
//let Myint = Int.init()
print(thisDirection)


//Control Flow


//fallthrough go to the next case also
let number = 13
switch number {
case 11,13,15,17,19:
    print("More than 10")
    fallthrough
case 1,3,5,7,9:
    print("Odd number")
    fallthrough
default:
    //we can also type break and break- which meand the deault will not do anything
    print("Even number larger than 19")
}