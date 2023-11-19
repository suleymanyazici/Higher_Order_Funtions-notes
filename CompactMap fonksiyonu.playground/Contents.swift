import UIKit

///CompactMap ile Map fonksiyonu temelde aynıdır fakat
///eğer kullanacağımız collection nul parametre içeriyorsa
///fonksiyonu dönüşünde compactMap bunları çıkarıyor



let numbers = [0, 1, 2, nil, 4, 5, 6, 7, nil, 9]

let nilNumberArray = numbers.map{$0}
//Eğer nullNumberArray i yazdırırsak içerisindeki değerlerin optional olduğu görülecektir
print(nilNumberArray)
//amma velakin aşağıda kullandığımız şekilde collctionMap kulllanırsak bu sorun ortadan kalkıyor null değerler siliniyor


let compactNilNumberArray = numbers.compactMap{$0}
print(compactNilNumberArray)
