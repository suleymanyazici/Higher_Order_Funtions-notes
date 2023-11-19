import UIKit

///Sort ve Sorted fonksiyonlarının ikiside sıralama için kullanılan fonksiyonlardır.
///Peki farkları nelerdir
///Sort fonksiyonu elimizdeki diziyi kendi içerisinde sıralamaya yardımcı olur
///Sorted fonksiyonu ise bu sıralanan elemanlarla yeni bir dizi oluşturur


var numbers1 = [432,564,1273,678,123,9786,4345,61334]
var numbers2 = [928,123,164,41234,12354,3567,986,2343,123]

numbers1.sort()
print(numbers1)

let newNumbers = numbers2.sorted()
print(newNumbers)


/// Sort ve Sorted Fonksiyonları ile küçükten büyüğe olan sıralamayı yaptık
///Şimdi tam tersini deneyelim


//Bu hali en uzun olacak şekilde yazıldı
numbers1.sort{(num1,num2) -> Bool in
    
    num1 > num2
    
}


//Shorthand ile deneme sağlayalım
numbers2.sort{ $0 > $1 }

//shorthand morthand nedir kardeşim onlanmı uğraşcam dersende aşağıdaki var
numbers1.sort(by: >)

