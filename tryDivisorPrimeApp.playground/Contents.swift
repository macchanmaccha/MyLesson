import UIKit


func primeNumber(inputNumbers: Int) -> [Int] {
    // 1とその数以外に割り切れる数（あまりが0となる）がない時
    // 割り切れる数が2つしかない時
    // 格納する箱
    var countPrimeNumber: [Int] = []
    for inputNumber in 1..<inputNumbers {
        for number in 1..<inputNumber {
            if  inputNumber % number == 0 {
                countPrimeNumber.append(inputNumber)
                if countPrimeNumber.count == 2 {
                    print(countPrimeNumber)
                }
            } // ifここまで
        } // forここまで
    } // forここまで
    return countPrimeNumber
} // primeNumberここまで

let a = primeNumber(inputNumbers: 300)
print(a)
