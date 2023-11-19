import UIKit

///Remove All Fonksiyonu kullandığımızda dizinin içerisindeki tüm elemanları siler
///İstersek buna ayrım yaptırmamazı mümkün şu değere eşit olanları sil gibi yada şu değerin altındakileri sil gibi


var numbers = [500,123,134234,5425,123,467234,2342345,534234,4653,12,56,3,7,3,234,45,234,546,34,46534,2344,465,234,674645316346852534,276253135431245,63,54,234,34]
numbers.removeAll()
print(numbers)


var numbers2 = [500,123,134234,5425,123,467234,2342345,534234,4653,12,56,3,7,3,234,45,234,546,34,46534,2344,465,234,674645316346852534,276253135431245,63,54,234,34]
numbers2.removeAll{$0 % 5 == 0}


