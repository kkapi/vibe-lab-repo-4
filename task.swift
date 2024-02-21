func sortArray(_ array: [Int], _ f: (Int, Int) -> Bool) -> [Int] {
    return array.sorted(by: f)
}

func asc(_ a: Int, _ b: Int) -> Bool {
    return a < b
}

func desc(_ a: Int, _ b: Int) -> Bool {
    return a > b
}

let arr = [1, 14, 3, 5]

let sortedAsc = sortArray(arr, asc)
print(sortedAsc)

let sortedDesc = sortArray(arr, desc)
print(sortedDesc)

func createFriends(_ friends: String...) -> [String] {
    return friends
}

let myFriends = createFriends("Анна", "Кирилл", "Елена")
print(myFriends)

let sortedFriends = myFriends.sorted(by: {$0.count > $1.count})
print(sortedFriends)

var friendsDict = [Int: String]()

for friend in myFriends {
  friendsDict[friend.count] = friend
}
print(friendsDict)

func printKeyValue(_ key: Int, _ dictionary: [Int: String]) {
    if let value = dictionary[key] {
        print("Ключ: \(key), Значение: \(value)")
    } else {
        print("Ключ не найден")
    }
}

printKeyValue(4, friendsDict)

func checkArrays(stringArray: inout [String], numberArray: inout [Int]) {
    if stringArray.isEmpty {
        stringArray.append("default string value")
        print(stringArray)
    }
    
    if numberArray.isEmpty {
        numberArray.append(0)
        print(numberArray)
    }
}

var stringArray: [String] = []
var numberArray: [Int] = [1,2,3,4,5]

checkArrays(stringArray: &stringArray, numberArray: &numberArray)
