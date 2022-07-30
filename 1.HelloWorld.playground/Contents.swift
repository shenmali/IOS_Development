//import UIKit

var ogrenciAdi : String = "Ali"
var ogrenciYasi : Int = 32
var ogrenciBoy : Double = 1.78
var ogrenciBasHarf : Character = "A"
var ogrenciDevamEdiyorMu : Bool = true

print("ogrenci Adi : \(ogrenciAdi)")
print(ogrenciYasi)
print(ogrenciBoy)
print(ogrenciBasHarf)
print(ogrenciDevamEdiyorMu)


//Constant - Sabitler

var numara = 10
let numara2 = 10

numara = 20


//Tur Donusumu
//sayisaldan sayisala

var i  = 42
var d = 56.78

var sonuc1 = Double(i)
var sonuc2 = Int(d)

print(sonuc1)
print(sonuc2)

//sayisaldan metne

var sonuc3 = String(i)
var sonuc4 = String(d)
print(sonuc3)
print(sonuc4)


//metinden sayisala

var yazi = "34"



if var sonuc5 = Int(yazi){
    print(sonuc5)
    sonuc5=50
    print(sonuc5)
}

//Tuples

var kisi = ("ahmet","aksoy")

var ad = kisi.0
var soyad = kisi.1

print(ad)
print(soyad)

var nokta = (x:10,y:20)

print(nokta.x)
print(nokta.y)

var hataMesaji = (404 ," NOT FOUND")
var (kod,mesaj) = hataMesaji

print( "\(kod),\(mesaj)" )


//Karsilastirma Operatorleri

var x1 = 60
var x2 = 50
var y1 = 70
var y2 = 80

print(x1==x2)
print(x1 != x2)
print(x1<=x2)
print(x1<x2)
print(x1>=x2)
print(x1>x2)

print(x1>x2 || y1>y2)
print(x1>x2 && y1>y2)

//If calismasi

var yas = 17
var isim = "ahmet"

if yas >= 18{
    print("resitsiniz")
}else{
    print("resit degilsiniz")
}


if isim == "Ahmet" {
    print("merhaba Ahmet")
} else if isim == "ahmet" {
    print("merhaba ahmet")
}else {print("merhaba hickimse")}

var ka = "admin"
var s  = 12345

if ka == "admin" && s == 12345 {
    print("Hosgeldiniz")
}else{
    print("giremediniz")
}

var sinif = 10
 
if sinif == 9 || sinif == 10 {
    print("sinif: \(sinif) dur")
} else {
    print("sinif: \(sinif) dur")
}

var a = 10;
var b = 20

a == b ? print("esittir") : print("degildir")

//switch case

var gun = 9;
switch gun {
case 1:
    print("pazartesi")
case 2:
    print("sali")
case 3:
    print("carsamba")
case 4:
    print("persembe")
case 5:
    print("cuma")
case 6:
    print("cumartesi")
default:
    print("pazar")
}


//Donguler


for i in 1...3{
    print("dongu \(i)")
}

//10 ile 20 arasinda 5 er artis

for var i in stride(from: 10, through: 20, by: 5){
    print("dongu2 \(i)")
    i = i + 5
}

// 20 den 10 a 5 er azalis

for i in stride(from: 20, through: 10, by: -5){
    print("dongu3 \(i)")
}

var sayac  = 1

while sayac < 4 {
    print("dongu4 :\(sayac)")
    sayac+=1;
}


for i in 1...5{
    if i == 3 {
        break
    }
    print("dongu5:\(i)")
}

for i in 1...5{
    if i == 3 {
        continue
    }
    print("dongu6:\(i)")
}


//Optional - Nullable

//null -nil

var str:String? = nil

str = "merhaba"

if str != nil {
    print(str!) //unwrap : optional den kurtarma
}else{
    print("str nil deger uretiyor")
}


if let temp = str { // Optional binding
    print(temp) // otomatik unwrap
}else{
    print("str nil deger uretiyor")
}

if var temp = str { // Optional binding
    print(temp) // otomatik unwrap
    temp = "merhaba dunya"
    print(temp)
}else{
    print("str nil deger uretiyor")
}
