import UIKit

struct User {
    let name: String // 格納型プロパティ
    let rank: String // 格納型プロパティ
    let point: Int // 格納型プロパティ
    
    var bonus: Int {
        if rank == "Gold" {
            return point * 3
        } else {
            return point * 2
        } // ifここまで
    } // bonusここまで
    func showScore() { // メソッド
        print("\(name)さんのポイントは、\(point)点！")
    } // showScoreここまで
    func showBonus() { // メソッド
        print("\(name)さんのボーナスは、\(bonus)点！")
    } // showBonusここまで
} // Userここまで

let sakura = User(name: "さくら", rank: "Standard", point: 300)
sakura.showScore()
sakura.showBonus()
print(type(of: sakura))
let jone = User(name: "ジョン", rank: "Gold", point: 150)
jone.showScore()
jone.showBonus()
print(type(of: jone))

struct User1 {
    let name: String
    var point: Int
    // init以外のキーワードを利用することはできない
    init() {
        name = "名無し"
        point = 1000
    } // initここまで
    init(inputName: String) {
        name = inputName
        point = 2000
    }
}
let defaultUser1 = User1()
print(defaultUser1)
let sakura1 = User1(inputName: "さくら")
print(sakura1)

// ユーザー構造体を定義
struct User2 {
    let name: String
    let age: Int
}

// User型の配列を宣言
var users2: [User2] = []
// User型を利用して、ユーザうのデータ型を生成
users2.append(User2(name: "さくら", age: 20))
users2.append(User2(name: "たろう", age: 25))
users2.append(User2(name: "ジョン", age: 10))

// 並び替え前の中身の確認
for _ in users2 {
    print("並び替え前:\(users2)")
}
users2.sort {
    $0.age < $1.age
}
for user2 in users2 {
    print("並び替え後:\(user2)")
}

struct User3 {
    let name: String
    let age: Int
}
var users3: [User3] = []
users3.append(User3(name: "さくら", age: 20))
users3.append(User3(name: "たろう", age: 25))
users3.append(User3(name: "ジョン", age: 10))

for _ in users3 {
    print("並び替え前:\(users3)")
}
let sortUsers3 = users3.sorted {
    $0.age < $1.age
}
for user3 in users3 {
    print("並び替え後:\(user3)")
}
