import UIKit

///Reduce fonksiyonu Collection içerisindeki tüm elemanları tek bir değişken yada sabitte toplamak için kullanılır
///Genellikle dizi içindeki fonksiyonları toplamak için kullanılır


var array = [10, 20, 30, 40, 50, 60, 70, 80, 90]
var forResult = 0

for i in array {
    forResult = forResult + i
}
print(forResult)

let reduceResult = array.reduce(0, {$0 + $1})
print(reduceResult)


