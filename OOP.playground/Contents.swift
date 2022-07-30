import UIKit


//CLASS
class Araba{
    var renk:String?
    var hiz:Int?
    var calisiyorMu:Bool?
    
    init(){
        print("*******************************")
        print("Arabadan bos cunstructor ile nesne olusturuldu")
    }
    
    init(renk:String, hiz:Int, calisiyorMu:Bool){
        print("*******************************")
        self.renk = renk //Shadowing self : this
        self.hiz = hiz // super : ust siniftan kalitim icin
        self.calisiyorMu = calisiyorMu
        print("Arabadan dolu cunstructor ile nesne olusturuldu")
        
    }
    
    func calistir(){
        calisiyorMu = true;
        hiz = 5
    }
    
    func durdur(){
        calisiyorMu = false
        hiz = 0;
    }
    
    func hizlan(kacKm:Int){
        hiz! = hiz! + kacKm
    }
    func yavaslat(kacKm:Int){
        hiz! -= kacKm
    }
    
    func bilgiAl(){
        print("*******************************")
        print("renk         : \(renk!)")
        print("hiz          : \(hiz!)")
        print("calisiyor mu : \(calisiyorMu!)")
    }
    
}

var bmw = Araba(renk: "Kirmizi", hiz: 100, calisiyorMu: true)

//bmw.renk = "Kirmizi"
//bmw.hiz = 100
//bmw.calisiyorMu = true

bmw.bilgiAl()
bmw.durdur()
bmw.bilgiAl()
//print("renk         : \(bmw.renk!)")
//print("hiz          : \(bmw.hiz!)")
//print("calisiyor mu : \(bmw.calisiyorMu!)")


var limuzin = Araba()

limuzin.renk = "Beyaz"
limuzin.hiz = 0
limuzin.calisiyorMu = false

limuzin.bilgiAl()
limuzin.hizlan(kacKm: 100)
limuzin.bilgiAl()
limuzin.yavaslat(kacKm: 50)
limuzin.bilgiAl()
//print("renk         : \(limuzin.renk!)")
//print("hiz          : \(limuzin.hiz!)")
//print("calisiyor mu : \(limuzin.calisiyorMu!)")

func selamla(){
    let sonuc =  "merhaba ahmet"
    print(sonuc)
}

selamla()

func selamla1()->String{
    let sonuc = "merhaba ahmet 1"
    return sonuc
}

var gelenSonuc = selamla1()
print(gelenSonuc)

func selamla2(isim:String)->String{
    let sonuc = "merhaba \(isim)"
    return sonuc
}

print(selamla2(isim: "Mehmet"))

func toplama(sayi1:Int,sayi2:Int)->Int{
    let toplam = sayi1+sayi2
    return toplam
}

print(toplama(sayi1: 2, sayi2: 3))


//OVERLOADING - Metodlarin asiri yuklenmesi

class Hesaplayici{
    func toplama(sayi1:Int, sayi2:Int){
        let toplam = sayi1+sayi2;
        print("toplam: \(toplam)")
        
    }
    
    func toplama(sayi3:Int, sayi2:Int){
        let toplam = sayi3+sayi2;
        print("toplam: \(toplam)")
        
    }
    
    func toplama(sayi3:Double, sayi2:Int){
        print("toplam: \(sayi3 + Double(sayi2))")
        
    }
    
    func toplama(sayi3:Double, sayi2:Int, ad:String){
        print("toplam: \(sayi3 + Double(sayi2)) , islemi yapan \(ad)")
        
    }
}

var h = Hesaplayici()
h.toplama(sayi3: 3.2, sayi2: 2, ad: "ali")

//STATIC

class Asinifi{
    static var x = 10;
    
   static  func metod(){
        print("Metod calisti")
    }
}

print(Asinifi.x)
print(Asinifi.metod())


//ENUM

enum KonserveBoyut{
    case Kucuk
    case Orta
    case Buyuk
    
}


func ucretHesapla(adet:Int, boyut:KonserveBoyut){
    switch boyut {
    case .Kucuk:
        print("Fiyat: \(adet*10) TL")
    case .Orta:
        print("Fiyat:\(adet*40) TL" )
    case .Buyuk:
        print("Fiyat:\(adet*70) TL")
    }
}

ucretHesapla(adet: 100, boyut:  KonserveBoyut.Orta)

//COMPOSITION = bir sinif icinde baska siniftan nesne kullanmak

class Kategoriler{
    var kategori_id:Int?
    var kategori_ad:String?
    
    init(kategori_id:Int, kategori_ad:String){
        self.kategori_id = kategori_id
        self.kategori_ad = kategori_ad
    }
}

class Yonetmenler{
    var yonetmen_id:Int?
    var yonetmen_ad:String?
    
    init(yonetmen_id:Int, yonetmen_ad:String){
        self.yonetmen_id = yonetmen_id
        self.yonetmen_ad = yonetmen_ad
    }
}

class Filmler{
    var film_id:Int?
    var film_ad:String?
    var film_yil:Int?
    var kategori:Kategoriler
    var yonetmen:Yonetmenler
    
    init(film_id:Int, film_ad:String, film_yil:Int, kategori:Kategoriler, yonetmen:Yonetmenler){
        self.film_id = film_id
        self.film_ad = film_ad
        self.film_yil = film_yil
        self.kategori = kategori
        self.yonetmen = yonetmen
    }
}

var k = Kategoriler(kategori_id: 1, kategori_ad: "dram")
var y = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Quantin Tarantino")
var f = Filmler(film_id: 1, film_ad: "Django", film_yil: 2009, kategori: k, yonetmen: y)

print("film id: \(f.film_id!) ")
print("film ad: \(f.film_ad!) ")
print("film yil: \(f.film_yil!) ")
print("film kategori: \(f.kategori.kategori_ad!)")
print("film yonetmen: \(f.yonetmen.yonetmen_ad!)")


//INHERITANCE = kalitim

class Ev{
    var pencereSayisi:Int?
    
    init(pencereSayisi:Int) {
        self.pencereSayisi = pencereSayisi
    }
    
}

class Saray : Ev{
    var kuleSayisi:Int?
    
    init(kuleSayisi:Int, pencereSayisi:Int) {
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi: pencereSayisi)
    }
}

class Villa:Ev{
    
    var garajVarMi: Bool?
    
    init(garajVarMi:Bool, pencereSayisi:Int) {
        self.garajVarMi = garajVarMi
        super.init(pencereSayisi: pencereSayisi)
    }
}

var topkapiSarayi = Saray(kuleSayisi: 5, pencereSayisi: 30)
var bogazVilla = Villa(garajVarMi: true, pencereSayisi: 20)

print("Topkapi Sarayi Kule Sayisi: \(topkapiSarayi.kuleSayisi!)")
print("Topkapi Sarayi pencere Sayisi: \(topkapiSarayi.pencereSayisi!)")
print("Bogaz Villasi Garaj var mi: \(bogazVilla.garajVarMi!)")
print("Bogaz Villasi  pencere Sayisi: \(bogazVilla.pencereSayisi!)")

// OVERRIDE

class Hayvan {
    func sesCikar(){
        print("sesim yok!")
    }
    
}

class Memeli : Hayvan{
    //override olmadigi icin Hayvan super sinifindaki func cagirilir
    
}

class Kedi : Memeli{
    
    override func sesCikar() {
        print("miyav")
    }
    
}

class Kopek : Memeli{

    override func sesCikar() {
        print("havhav")
    }
    
}


var H = Hayvan()
var M = Memeli()
var kedi = Kedi()
var kopek = Kopek()

H.sesCikar()
M.sesCikar()
kedi.sesCikar()
kopek.sesCikar()

//UPCASTING

var ev = Saray(kuleSayisi: 3, pencereSayisi: 10) as Ev

//DOWNCASTING

var saray = Ev(pencereSayisi: 4) as? Saray

//TYPE CHECK
