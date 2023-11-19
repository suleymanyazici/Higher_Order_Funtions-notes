import UIKit

///En  çok kullanılan higher order fonksiyonlarından biridir.
///bu fonsiyon bir collection içindeki bütün elemanlara erişip bu elemanlar ile istediğimiz işlemleri yaptıktan sonra işlem yapılmış collectionı bize veren bir fonksiyondur
///aşağıda bunun için örnek verecek olursak


//Bir laptop marka modeli olsun

struct Laptop{
    let name: String
    let model: String
}

//Bu laptopların birer sahibi olan yazılımcılar olsun

struct Developer{
    let laptopName: String
    let laptopModel : String
}

//Hangi laptoplar var bunları görelim

let laptops : [Laptop] = [.init(name: "Apple", model: "Macbook"),
                          .init(name: "HP", model: "EliteBook"),
                          .init(name: "Lenovo", model: "ThinkPad")]

//Map fonksiyonunu kullanabilmek için gerekli bütün şeyleri oluşturduk.

var developers = [Developer]()


//bu kısımda map fonksiyonunu kullanmadan bu cihaz ve yazılımcıları ilişkilendirdik
for laptop in laptops {
    developers.append(.init(laptopName: laptop.name, laptopModel: laptop.model))
}

//Burada map fonksiyonunu kullanacağız fakat shorthand kullanmayacağız

developers = laptops.map({(laptop) -> Developer in
        .init(laptopName: laptop.name, laptopModel: laptop.model)})

//Buradada en yalın hali ile higher order ve shorthand kullanarak yazacağız

developers = laptops.map({
    .init(laptopName: $0.name, laptopModel: $0.model)
})
