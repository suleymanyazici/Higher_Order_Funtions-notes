import UIKit

///Split Fonksiyonu verilen bir ayraç yada karakter vasıtasıyla dizi bölmeye yarayan bir fonksiyondur.
///Bölüm işlemini yaptıktan sonra elde ettiği parçaları bir dizede döndürür


let text = "Selamlar, Swift! Split Fonksiyonu Örnek"
let splitText = text.split(separator: " ")
print(splitText)
print(splitText.count)



//Buradaki separator bildiğimiz üzere ayrımın ne ile yapılacağını belirliyor
//maxSplits kaç kere bu ayrımı yapmamızı istediğini soruyor
//omittingEmptySubsequences ise kullanılan bu ayracın kullanıldıktan sonra silinip silinmemesini isteyip istememeni soruyor
let split1Text = text.split(separator: "S",maxSplits: 1,omittingEmptySubsequences: true)
print(split1Text)
