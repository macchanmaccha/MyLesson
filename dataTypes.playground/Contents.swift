import UIKit
//
//// 数値リテラル「100」のデータ型を、typeを利用して確認
//print(type(of: 100)) //Int型であることを確認
//print(type(of: 100.5)) //Double型であることを確認
//print(type(of: "こんにちは")) //String型であることを確認
//print(type(of: true)) //Bool型であることを確認
//// リテラルを直接、type(of:)とprint文を利用してデータ型が確認できる
//
//// 定数にそれぞれのリテラルを格納
//// 代入のタイミングで型推論でデータ型が決定される
////let intScore = 200
////let doubleScore = 200.25
////let message = "こんばんは"
////let selected = false
//
//// データ型を指定して定数を宣言
////let intScore: Int = 200
////let doubleScore: Double = 200.5
////let message: String = "こんばんは"
////let selected: Bool = false
//
//// データ型を指定して定数を宣言
////let message: String
////print(message) // ❌初期値が代入される前に利用するとエラーが発生
//
//// データ型を指定して定数を宣言
////let message: String
////message = "がんばってるね" // 初期値を代入
////print(message) // がんばってるね　⭕️初期値の代入後に利用できる
//
//// 初期値としてから文字を代入
//let message: String = ""
//print(message) // ⭕️初期値は空文字なので何も出力されないが、エラーは発生しない
//
//// データ型を指定して定数を宣言
//let intScore: Int = 200
//
//let doubleScore: Double = 200.25
//print(intScore + 100) // ⭕️Int型とInt型で同じ型なので処理が可能
//// print(intScore + doubleScore) // ❌定数に格納した違うデータ型（Int型とDouble型）の処理はエラーが発生
//print(100 + 100.15) // ⭕️200.15と出力。リテラル同士の場合は、違うデータ型でも計算が可能
//
//// 以下、型変換の方法を確認
//print(type(of: intScore)) // Int型であることを確認
//print(type(of: Double(intScore))) // Int型をDouble型に変換して、Double型であることを確認
//print(type(of: doubleScore)) // Double型であることを確認
//print(type(of: Int(doubleScore))) // Double型をInt型に型変換して、Int型であることを確認
//
//// 以下、型変換を行って演算結果を確認
//print(Double(intScore)+doubleScore) // ⭕️Double型に合わせて計算、小数点以下のデータも正常
//print(intScore + Int(doubleScore)) // ❌Int型に合わせて計算、小数点以下のデータが欠落

//　以下、Int型のメソッドを確認
// negate:符号の切り替え
//var score: Int = 10
//print(score) // 10であることを確認
//score.negate() // 符号をスイッチ
//print(score) // 負の符号に変更されていることを確認
//score.negate() // 符号をスイッチ
//print(score) // 正の符号に変更されていることを確認

// random:乱数を発生
// print(Int.random: 0...100) // 0~100の間で乱数を発生

// isMultiple:因数の倍数であるかをチェックして真偽値を返却
// print(score.isMultiple(of: 2)) // 2の倍数なので、trueを返却
// print(score.isMultiple(of: 3)) // 3の倍数ではないので、falseを返却

// 以下、Double型のメソッドを確認
// rounded:丸め処理（小数点以下を切り捨て）
var score = 10.75
score = score.rounded()
print(score) // 小数点以下が切り捨てられていることを確認
//
//// negate:符号の切り替え
////var score: Double = 10.123
////print(score) // 10.123であることを確認
////score.negate() // 符号をスイッチ
////print(score) // 負の符号に変更されていることを確認
////score.negate() // 符号をスイッチ
////print(score) // 正の符号に変更されていることを確認
//
//// random:乱数を発生
//// print(Double.random(in: 10.0..<20.0))
//
//// 以下、String型の文字列操作を確認
//// 文字列の結合（連鎖）：加算演算子
//// 文字列は、加算演算子（＋）で、結合ができる
//print("東京都"+"渋谷区")// 東京都渋谷区
//
//// String型の定数を結合
//let region = "東京都"
//let city = "渋谷区"
//print(region + city) // 東京都渋谷区
//
////// 文字列の追加
////var greeting = "こんにちは!"
////greeting.append("プログラミング")
////print(greeting) // こんにちは！プログラミング
////
////// 文字列の追加（加算代入演算子）
////// 加算代入演算子（+=)を利用して追加することもできます
////greeting += "がんばるぞ！"
////print(greeting) // こんにちは！プログラミングがんばるぞ！
////
////// 文字列内で定数（変数）を展開
////// 文字列の中に、定数や変数を埋め込む（展開）することができます
////print("みなさん、\(greeting)よろしくね！")// みなさん、こんにちは！プログラミングがんばるぞ！よろしくね！
//
//// 以下、String型のメソッドを確認
//// count:文字数をカウント
//var address = "東京都渋谷区"
//print(address.count) // address変数の中が、6文字であることを確認
//
//// replaceOccurences:文字列置換
//print(address) // 東京都渋谷区
//address = address.replacingOccurrences(of: "渋谷区", with: "世田谷区")
//print(address)
//
//// replacingOccurrences:文字列削除
//address = address.replacingOccurrences(of: "世田谷区", with: "")
//print(address) // 東京都
//
//// uppercased:文字列を大文字に変換
//let greeting = "Hello, World"
//print(greeting.uppercased()) // HELLO, WORLD
//
//// lowercased:文字列を大文字に変換
//print(greeting.lowercased()) // hello, world
//
//// hasPrefix:先頭文字のチェック
//// 文字列が指定されたキーワード（接頭辞）で始まるかをチェックしてBool型（true or false）を返却します
//print(greeting) // Hello, World
//print(greeting.hasPrefix("Hello")) // true
//print(greeting.hasPrefix("World")) // false
//// 大文字小文字を識別します
//print(greeting.hasPrefix("hello")) // false
//
//// hasSuffix:末尾文字のチェック
//// 文字列が指定されたキーワードで終了するのかをチェックしてBool値（true or false）を返却します
//print(greeting.hasSuffix("World")) // true
//print(greeting.hasSuffix("world")) // false
//
//// 以下、Bool型のメソッドを確認
//// togle:真偽値をスイッチ
//var isSelect = false
//print(isSelect) // falseであることを確認
//isSelect.toggle()
//print(isSelect) // trueにスイッチされていることを確認
//
//// ランダムに、true or falseを発生
//print(Bool.random())
