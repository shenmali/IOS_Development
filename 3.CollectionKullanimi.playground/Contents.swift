import UIKit

var str = "Hello, playground"
print(str)

//ARRAY SET DICTIONARY farki

//Array = arraylist

//Set = 1-) Icinde Ayni veri tekrar tutulmaz 2-) Veriler Array deki gibi sirali degildir. Rastgele yerlesir

//Dictionary = key-value pair olarak veriyi tutar

//ARRAY

var ondalikliSayilar = [10.0, 20.0, 30.1]

var sayilar = [Int](repeating: 0, count: 100)

var meyveler = [String]()


//ekleme
meyveler.append("Elma")//0. index
meyveler.append("Muz")
meyveler.append("Kiraz")
print(meyveler)

//guncelleme
meyveler[0] = "yeni elma"
print(meyveler)

//ilave = insert
meyveler.insert("portakal", at: 2)
print(meyveler)


print(meyveler.isEmpty)
print(meyveler.count)
print(meyveler.first!)
print(meyveler.last!)
print(meyveler.contains("kiraz"))
print(meyveler.contains("Kiraz"))

for meyve in meyveler{
    print("sonuc :\(meyve)")
}

for (index, meyve) in meyveler.enumerated(){
    print("\(index) :\(meyve)")
}

meyveler.remove(at: 2)
print(meyveler)

meyveler.removeAll()
print(meyveler )

// NESNE TABANLI ARRAY-SET-DICTIONARY KULLANIMI
//ARRAY

class Ogrenciler{
    
    var no:Int?
    var ad:String?
    var sinif:String?
    
    
    init(no:Int, ad:String, sinif:String){
        self.ad=ad
        self.no=no
        self.sinif=sinif
    }
    
    
}


var o1 = Ogrenciler(no: 200, ad: "Zeynep", sinif: "9C")
var o2 = Ogrenciler(no: 300, ad: "Ahmet", sinif: "11Z")
var o3 = Ogrenciler(no: 100, ad: "Beyza", sinif: "12A")

var ogrenciListesi = [Ogrenciler]()
ogrenciListesi.append(o1)
ogrenciListesi.append(o2)
ogrenciListesi.append(o3)

for o in ogrenciListesi {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sinif : \(o.sinif!)")
}


//FILTERING

var f1 = ogrenciListesi.filter({ $0.no! > 100})
print("Filtreleme------")

for o in f1 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sinif : \(o.sinif!)")
}

var f2 = ogrenciListesi.filter({$0.ad!.contains("y")})
print("Filtreleme 2------")

for o in f2 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sinif : \(o.sinif!)")
}

// SORTING

var s1 = ogrenciListesi.sorted(by: { $0.no! > $1.no! })
print("sayisal olarak buyukten kucuge siralama yapar")

for o in s1 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sinif : \(o.sinif!)")
}

var s2 = ogrenciListesi.sorted(by: { $0.no! < $1.no! })
print("sayisal olarak kucukten buyuge  siralama yapar")

for o in s2 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sinif : \(o.sinif!)")
}


var s3 = ogrenciListesi.sorted(by: { $0.ad! > $1.ad! })
print("harfsel olarak buyukten kucuge siralama yapar")

for o in s3 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sinif : \(o.sinif!)")
}

var s4 = ogrenciListesi.sorted(by: { $0.ad! < $1.ad! })
print("harfsel olarak kucukten buyuge siralama yapar")

for o in s4 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sinif : \(o.sinif!)")
}

// SET

var meyveler1 = Set<String>()

meyveler1.insert("elma")
meyveler1.insert("portakal")
meyveler1.insert("muz")

print(meyveler1)

meyveler1.insert("elma") //icerigi ayni olan veri set dizisine eklenmez

print(meyveler1)

for meyve in meyveler1{
    print("sonuc: \(meyve)")
}

for (index, meyve) in meyveler1.enumerated(){
    print("index:\(index) -> meyve:\(meyve)")
}

print(meyveler1.count)

//DICTIONARY (HashMap - Map)

var iller = [Int:String]()

iller[16] = "Bursa"
iller[34] = "Istanbul"

print(iller)

iller[16] = "BURSA"
print(iller)

for(anahtar,deger) in iller {
    print("Key: \(anahtar) -> Value: \(deger)")
}
