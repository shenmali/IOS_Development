import UIKit

//GUARD  = IF in tersi

// bir fonksiyon olmali

/*func kisiTanima(ad:String){
    if ad == "Ahmet" {
        print("Merhaba Ahmet")
    }else{
        print("taninmayan kisi")
    }
}*/

//kisiTanima(ad: "Ali");
//kisiTanima(ad: "Ahmet")

func kisiTanima(ad:String){
    guard ad == "Ahmet" else {
        print("taninmayan kisi")
        return
    }
    print("Merhaba Ahmet")
        
}
kisiTanima(ad: "Ali");
kisiTanima(ad: "Ahmet")

func buyukHarfYap(str:String?){
    guard let temp = str else{
        print("str nil(null)dir")
        return
    }
    print(temp.uppercased())
}

buyukHarfYap(str: "asd")

buyukHarfYap(str: nil)

//EXCEPTION Kullanimi

//run time da uygulamayi cokerten yapilar

enum Hatalar : Error{ //hatalar oldugunu belirttik Error
    case sifiraBolunmeHatasi
}

func bolme(sayi1:Int, sayi2:Int) throws -> Int{
    if sayi2 == 0 {
        throw Hatalar.sifiraBolunmeHatasi
    }
    return sayi1 / sayi2
}
/*
let sonuc = bolme(sayi1: 10, sayi2: 5)
print(sonuc)
let sonuc2  = bolme(sayi1: 10, sayi2: 3)
print(sonuc2)
let sonuc3 = bolme(sayi1: 10, sayi2: 0)
 */

/*
 do{
    let sonuc = try bolme(sayi1: 10, sayi2: 0)
    print(sonuc)
}catch Hatalar.sifiraBolunmeHatasi{
    print("sayi sifira bolunemez")
}
 */

let sonuc = try? bolme(sayi1: 10, sayi2: 0)
if let temp = sonuc{
print(temp)
}else{
    print("sonuc degiskeni suanda nil(null) dir")
    print("sayi 0 a bolunemez")
}













