import UIKit

//Задание1
typealias  Text = String
let f: Text = "123"
let s: Text = "15124"
let th: Text = "214af1a"

if(Int(f) != nil){print(f)}
if(Int(s) != nil){print(s)}
if(Int(th) != nil){print(th)}

typealias TupleType = (numberOne: Text?, numberTwo: Text?)?
let f1: TupleType = ("190", "67")
let s1: TupleType = ("180", nil)
let th1: TupleType = ("-65","70")

if let(a, b) = f1{
    if a != nil && b != nil{
        print(f1!.0!, f1!.1!)
    }
}
if let (a, b) = s1{
    if a != nil && b != nil{
        print(s1!.0!, s1!.1!)
    }
}
if let(a, b) = th1{
    if a != nil && b != nil{
        print(th1!.0!, th1!.1!)
    }
}
//
//
print("********************************************************\n")
//
//
//Задание2
typealias Operation = (operandOne: Double, operandTwo: Double, operation: Character)
let tupleOfOper: Operation = (17.2, 11.7, "/")
switch tupleOfOper{
case (let one, let two, "*"):
    let a = one * two
    print(a)
    break;
case (let one, let two, "+"):
    let a = one + two
    print(a)
    break;
case (let one, let two, "-"):
    let a = one - two
    print(a)
    break;
case (let one, let two, "/"):
    let a = one / two
    print(a)
    break;
default:
    break;
}
//
//
print("********************************************************\n")
//
//
//Задание3
typealias Cheman = [String: (alpha: Character, num: Int)?]
let chemans : Cheman = ["Белый король": ("C",6),"Черный слон": nil,"Черный ферзь": ("E",2)]

if let coordinat = chemans["Белый король"]! {
    print("Координаты белого короля\(coordinat)")
}
else{
    print("Белый король мертв")
}

if let coordinat = chemans["Черный слон"] {
    print("Координаты черного слона\(String(describing: coordinat))")
}
else{
    print("Черный слон мертв")
}

if let coordinat = chemans["Черный ферзь"]! {
    print("Координаты черного ферзя\(coordinat)")
}
else{
    print("Черный ферзь мертв")
}

//Задание4.1
for (name, coordinates) in chemans {
    if coordinates != nil {
        print("координаты \(name) is \(String(describing: coordinates))")
    }else{
        print("\(name) умер")
    }
}
//
//
print("********************************************************\n");
//
//
//Задание4
import Foundation
let journal: [String:[String:UInt]] = ["Alex":["10-12-2018":10,"13-12-2018":7],
                                       "Jake":["13-12-2018":7,"21-12-2018":8],
                                       "Neel":["1-11-2018":10,"05-12-2018":8]]

var gpaOfStudents:[String:Double] = [:]
var countOfAllMarks = 0
var sumOFAllMarks = 0

for mark in journal {
    var sumOfMarksOfStudent = 0
    for lesson in mark.1 {
        sumOfMarksOfStudent += Int(lesson.1)
    }
    let gpaOfOneStudent = Double(sumOfMarksOfStudent) / Double(mark.1.count)
    gpaOfStudents[mark.0] = gpaOfOneStudent
    print("Средний бал \(mark.0) - \(gpaOfOneStudent)")
    sumOFAllMarks += sumOfMarksOfStudent
    countOfAllMarks += mark.1.count
}

var gpaGroup = Double(sumOFAllMarks) / Double(countOfAllMarks)
var gpaGroupRound = round(100*gpaGroup)/100
print("Средний бал группы - \(gpaGroupRound)")
//
//
print("********************************************************\n");
//
//
//Задание5
let day:String =  "пятница"
switch day{
case "понедельник":
    print("1")
    break;
case "вторник":
    print("2")
   break;
case "среда":
    print("3")
     break;
case "четверг":
    print("4")
     break;
case "пятница":
    print("5")
     break;
case "суббота":
    print("6")
     break;
case "воскресенье":
    print("7")
     break;
default :
    print("404")
     break;
}
//
//
print("********************************************************\n");
//
//
//Задание6
let a = "sdfcwefwefwg"
print(a)

var i = a.makeIterator()
while let c = i.next() {
    var j = i
    while let d = j.next() {
        if c == d {
            Swift.print("Duplication: \(c)")
        }
    }
}
//
//
print("********************************************************\n");
//
//
//Задание7
let mas1 = [12, 15, 1, 2, 3]
let mas2 = [19, 11, 4, 6, 7]
let mas3 = [62, 45, 111, 22, 17]
let sum:Int = mas1.max()! + mas2.max()! + mas3.max()!
print(sum)
//
//
print("********************************************************\n");
//
//
//Задание8
let array1 = [12, 15, 1, 2, 3]
let array2 = [19, 11, 4, 6, 7]
var array3:[Int] = []
array3.append(array1.min()!)
array3.append(array2.min()!)
print(array3)
//
//
print("********************************************************\n");
//
//
//Задание9
let testString = "В четверг будет ветрено"
let result = testString.split(separator: " ")
print(result)
