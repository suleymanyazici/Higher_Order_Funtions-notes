import UIKit


///Contains fonksiyonu bir collectionda aradığımız değerin var olup olmadığını kontrol eder.

struct BasketItem{
    let itemId : Int
    let itemName : String
}

var basket : [BasketItem] = [ .init(itemId: 3653, itemName: "Armut"),
                              .init(itemId: 1235, itemName: "Muz"),
                              .init(itemId: 8258, itemName: "Karpuz"),
                              .init(itemId: 3289, itemName: "Kavun"),
                              .init(itemId: 3429, itemName: "Elma")]

let item1 = BasketItem(itemId: 1235, itemName: "Muz")
let item2 = BasketItem(itemId: 3429, itemName: "Elma")



basket.contains{$0.itemId == item1.itemId} ? print("Bu ürün zaten sepetinizde bulunmakta."):basket.append(item1)
print("Sepetiniz -> \(basket)")

basket.contains{$0.itemId == item2.itemId} ? print("Bu ürün zaten sepetinizde bulumakta."):basket.append(item2)
print("Sepetiniz ->\(basket)")
