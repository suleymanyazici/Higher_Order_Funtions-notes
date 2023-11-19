import UIKit

///Filter fonskiyonu bir collection alarak collection elemanlarına vir takıım koşullar sunmamıza izin verir
///Koşulu saplayan elemanları yine aynı tipte bir collection olarak döndürür.


let numberArray = [55, 54, 87, 93, 58, 975, 6456, 64, 23, 12, 10, 20, 30, 40, 50, 60, 70]

var result = [Int]()


//Bu işlemi for döngüsüyle yapmak istersek aşağıdaki gibi minik bir karmaşaya sahip olacağız
for number in numberArray{
    if number % 3 == 0 && number % 5 == 0 {
        result.append(number)
    }
}

print(result)

//Eğer bu işlemi filter fonksiyonunuu kullanarak yaparsak aşağıdaki gibi birazdaha sadeleşmiş bir hale indirgeyebiliriz
let resultArray = numberArray.filter({(number) -> (Bool) in
    return number % 3 == 0 && number % 5 == 0})

//İşin asıl çokommelli yeri ise filter fonksiyonu ve shorthand leri birlikte kullandığımızda ortaya çıkıyor
let resultArrayShorthand = numberArray.filter{$0 % 3 == 0 && $0 % 5 == 0}
