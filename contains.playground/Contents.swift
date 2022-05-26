import UIKit

//
// 文字列検索で任意の文字列を含むか・任意の文字列で開始または終了しているのか（前方一致・後方一致）を判定する方法
//  https://www.motokis-brain.com/article/59#:~:text=%E4%BB%BB%E6%84%8F%E3%81%AE%E6%96%87%E5%AD%97%E5%88%97%E3%82%92%E5%90%AB%E3%82%80%E3%81%8B%E3%81%A9%E3%81%86%E3%81%8B%E3%82%92%E5%88%A4%E5%AE%9A,()%E3%82%92%E4%BD%BF%E7%94%A8%E3%81%97%E3%81%BE%E3%81%99%E3%80%82より引用

// 任意の文字列を含むかどうかを判定するには、Swiftではcontains()を使用します。

let str: String = "ABCDEFGHI"
//文字列内にBCを含むかどうかを判定する
var flg: Bool = str.contains("BC")
