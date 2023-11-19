import UIKit

struct Item{
    let isSelected: Bool
    let count: Int
}


let items: [Item] = [.init(isSelected: true, count: 6),
                     .init(isSelected: false, count: 3),
                     .init(isSelected: true, count: 8),
                     .init(isSelected: true, count: 1)]

///Yukarıdaki dizideki elemanlardan isSlected parametresi true olanların count değerlerinin toplanılmasını istediğimiz birleştirilmiş fonksiyonun örneği

let result = items.filter {$0.isSelected == true}.reduce(0, {$0 + $1.count})
