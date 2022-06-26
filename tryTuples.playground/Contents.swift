import UIKit

var greeting = "Hello, playground"

let mixDataType = (1, "こんにちは", true, 2.55)
print(mixDataType)
print(mixDataType.0)
print(mixDataType.1)
print(mixDataType.2)
print(mixDataType.3)
// print(mixDataType.4)
print(type(of: mixDataType))

let sameDataType = ("りんご", "りんご")
print(sameDataType)
print(type(of: sameDataType))

let mixDataTypeOnLabel = (id: 10, message: "こんにちは", status: true, point: 2.55)
print(mixDataTypeOnLabel)
print(mixDataTypeOnLabel.id)
print(mixDataTypeOnLabel.message)
print(mixDataTypeOnLabel.status)
print(mixDataTypeOnLabel.point)
print(type(of: mixDataTypeOnLabel))

// 面白い。。
let (id, message, status, point) = (1, "こんにちは", true, 2.55)
print(id)
print(message)
print(status)
print(point)


func split(name: String) -> (lastName: String, firstName: String) {
    // componentsは、受け取った文字列を、指定された区切り文字で区切った配列を返却。
    let split = name.components(separatedBy: " ") // 半角スペースで区切った配列を返却
    print(type(of: split)) // Array<String>
    return(split[0], split[1]) // 区切られた文字をタプルで返却
}

let parts = split(name: "やまだ さくら")
print(parts.0)
print(parts.1)
print(parts.lastName)
print(parts.firstName)

func split2(name2: String) -> (lastName2: String, firstName: String) {
    let split2 = name2.components(separatedBy: ",")
    print(type(of: split2))
    return(split2[0],split2[1])
}
let parts2 = split2(name2: "田中,みな実")
print(parts2.0)
print(parts2.1)

struct User {
    let id: Int
    let name: String
    let city: String
}
let tarou = User(id: 100, name: "たろう", city: "東京都")
print(type(of: tarou))
print(tarou)
let jirou = User(id: 101, name: "じろう", city: "神奈川県")
print(type(of: jirou))
print(jirou)

func showStructUser(user: User) {
    print("会員番号\(user.id)：\(user.name)さんは、\(user.city)在住")
}
showStructUser(user: jirou)

