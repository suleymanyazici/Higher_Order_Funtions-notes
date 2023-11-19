import UIKit


///Eğer bir collection  içinde farklı collectionlar varsa
///Ve biz bu dururmu tek collectiona indirgemek istersek bunu kullanırız


let twoDimensionArray = [[1,2,3],[4,5,6],[8,9]]


//For ile kullanabilmemiz için gerekli
var singleDimensionArray = [Int]()


// buradada görüldüğü üzere 2 adet for kullanıldı ve işler cidden gereksiz uzatıldı
for array in twoDimensionArray{
    for element in array {
        singleDimensionArray.append(element)
    }
}

print(singleDimensionArray)

// Sadece FlatMap kullanarak bu işlemi yapalım
let singleDimensionArrayFlatMap = twoDimensionArray.flatMap{(array) -> [Int] in
return array
}
print(singleDimensionArrayFlatMap)

//Gelelim işimizin asıl can alıcı kısmı olan FlatMap fonksiyoununu shorthand ile kullanmaya

let singleDimensionArrayFlatMapWithShorthand = twoDimensionArray.flatMap{$0}
print(singleDimensionArrayFlatMapWithShorthand)
