import UIKit

///Higher Order Fonksiyonlar
//Bir veya birden fazla fonksiyonu parametre olarak alabilen ve sonucunda fonksyion döndüren fonksiyonlardır.
//Kod yazmayı oldukça sadeleştirir ve okumasını kolaylaştırır.
//Sadeleşen kod sayesinde yapılabilecek potansiyel hatalardan kaçınılmış olur

//Bu fonksyionlarla SHORTHAND argümanları kullanılabilir.
//nedir bu argümanlar örneğin dizinin 1. elemanına ulaşacağımız zaman dizi[0] yerine $0 yazarak
//aynı elemana erişmemiz mümkün olmaktadır.($1,$2 vb.)

//FOREACH fonksiyonu

/*
 forEach for in döngülerine benzer fakat döngü değildir.
 Bu sebeple break return gibi ifadeler kullanılmaz
 Fakat daha sade bir biçimde kod yazmamıza olanak tanır
 */

//For-In döngüsü kullanılarak
let brands = ["Mercedes", "Opel", "Ferrari", "Bently", "Volkswagen"]

for maker in brands {
    print(maker)
}

//ForEach kullanırsak (temel yapıda)

brands.forEach{ maker in
    print(maker)
}

//forEach (Sadeleştirilmiş yapıda Shorthand kullanılarak)
brands.forEach{print($0)}
