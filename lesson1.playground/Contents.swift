import UIKit

//Задание 1
var m: Int = 5
let w = 10
let f = m
m = w
print("f", f)
print("m", m)
//
//
print("*****************************************************************\n")
//
//
//Задание 2
let k: Int = 18
let l: Float = 16.4
let j: Double = 5.7
let sum = Float(k) + l + Float(j)
let pro = Int(Double(k) * Double(l) * j)
let ost = Double(l).truncatingRemainder(dividingBy:j)
print("Сумма равно = \(sum)\n" + "Произведение равно = \(pro)\n" + "Остаток от деления равен = \(ost)")
//
//
print("*****************************************************************\n")
//
//
//Задание3
let a = 2
let b = 3
let urav = Int(Double((a+(4*b))*(a-(3*b))) + pow(Double(a),2))
print(urav)
//
//
print("*****************************************************************\n")
//
//
//Задание4
let c = 1.75
let d = 3.25
let uravn = 2*(pow(Double(c+1),2)) + 3*(d+1)
print(uravn)
//
//
print("*****************************************************************\n")
//
//
//Задание5
let lenght = 23
let squareArea = Int(pow(Double(lenght),2))
let circumference = 3.14 * 2 * Double(lenght)
print("Площадь квадрата = \(squareArea)  см \n" + "Длина окружности = \(circumference) см")
//
//
print("*****************************************************************\n")
//
//
//Задание6
let z: String = "wea"
let x: Character = "a"
let v: Int = 18
let n: Int = 16
let s = z + " " + String(x) + " "  + String(m) + " " +  String(k) + " " + String(l)
print(s)
//
//
print("*****************************************************************\n")
//
//
//Задание7
print("*" + " " +  " " +  " " + "*" + " " +  " " + " " + "*\n" + " " + "*" + " " + "*" + " " + "*" + " " + "*\n" + " " + " " + "*" + " " +  " " + " " + "*")
//
//
print("*****************************************************************\n")
//
//
//Задание8
let day = 09
let month = "December"
let year  = 2018
let date = Date()
print(year,month, day)
print(date)

//
//
print("*****************************************************************\n")
//
//
//Задание9
let r = true
let t = false
let logI = r&&t
let logIli = r||t
print(logI,logIli)
//
//
print("*****************************************************************\n")
//
//
//Задание10
let myName = "Alexsandr"
let myWeight:Double = 80
let myHeight:Int = 187

let myIMT = (myWeight/pow((Double(myHeight)),2))*10000
print(myName,myIMT)
//
//
print("*****************************************************************\n")
//
//
//
//
//Задание11
var kordej:(myFilm:String,myNumber:Int,myFood:String) = ("Iron Man", 99 , "pasta")
var myF = kordej.myFilm
var myN = kordej.myNumber
var myFo = kordej.myFood
let kordej1:(myFilm:String,myNumber:Int,myFood:String) = ("Iron", 9 , "borsh")
var kordej2:(myFilm:String,myNumber:Int,myFood:String) = kordej

kordej = kordej1
let razn = kordej2.myNumber - kordej1.myNumber

print("RAZN\(razn)")

var kordej3:(Int,Int,razn:Int) = (kordej2.myNumber, kordej1.myNumber,razn)

print("I\(kordej2)\n","You\(kordej)\n")
print(kordej3)
//
//
print("*****************************************************************\n")
