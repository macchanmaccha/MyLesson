import UIKit
import SwiftUI

//func primeNumber(inputNumbers: Int) -> [Int] {
//    // 1とその数以外に割り切れる数（あまりが0となる）がない時
//    // 割り切れる数が2つしかない時
//    // 格納する箱
//    var countPrimeNumber: [Int] = []
//    var counter: Int = 0
//    for inputNumber in 1..<inputNumbers {
//        for number in 1..<inputNumber {
//            if  inputNumber % number == 0 {
//                counter += 1
//                if counter == 2 {
//                    countPrimeNumber.append(inputNumber)
//                }
//            } // ifここまで
//        } // forここまで
//    } // forここまで
//
//    return countPrimeNumber
//} // primeNumberここまで
//
//let a = primeNumber(inputNumbers: 100)
//print(a)


func divisorNumber(inputNumbers: Int) -> [Int] {
    // その数を割り切ることのできる整数を出す
    // 配列を格納する変数をcountDivisorNumberとする
    var countDivisorNumber: [Int] = []
    // textFieldに入力された数字÷その数字までの数＝0 となる数字を出す（つまりループ文）
    for inputNumber in 1...inputNumbers {
        // inputNumberをinputNumberで割ると0となる時、
        if inputNumbers % inputNumber == 0 {
            countDivisorNumber.append(inputNumber)
        } // ifここまで
    } // forここまで
    return countDivisorNumber
} // divisorここまで
// 素数を出す関数
func primeNumber(inputNumbers: Int) -> [Int] {
    // 1とその数以外に割り切れる数（あまりが0となる）がない時
    // 割り切れる数が2つしかない時
    // 配列を格納する変数をcountPrimeNumberとする
    var countPrimeNumber: [Int] = []
    // inputNumbersをループ
    for inputNumber in 1...inputNumbers {
        // 割る数の数をカウントする変数をprimeNumbercounterとする
        var primeNumbercounter: Int = 0
        // inputNumberをループ
        for number in 1...inputNumber {
            // inputNumberをnumberで割ると0となる場合、
            if  inputNumber % number == 0 {
                primeNumbercounter += 1
            } // if ここまで
        } // forここまで
        if primeNumbercounter == 2 {
            countPrimeNumber.append(inputNumber)
        } //ifここまで
    } // forここまで
    return countPrimeNumber
} // primeNumberここまで
print(divisorNumber(inputNumbers: 20))
print(primeNumber(inputNumbers: 300))
