
//: Playground - noun: a place where people can play

import UIKit

//function for finding unique letters

func unique(input: String) -> Bool {
    
    var usedcharacters = [Character]()
    
    for letter in input {
        if usedcharacters.contains(letter){
            return false
        }
        
        usedcharacters.append(letter)
    }
    
    return true
}

unique(input: "Pranoti")

//reverese a string

func rev(input: String) -> String{
    let reverse = String(input.reversed())
    return reverse
}

rev(input: "Pranoti")


//palindrome for a string

func palindrome(input: String) -> Bool{
    let s = String(input)
    if String(input.reversed()) == s{
        return true
    }else {
        return false
    }
}

palindrome(input: "madam")

//count specific character in string

func count(input: String, count: Character) -> Int{
    var lettercount = 0
    
    for letter in input{
        if letter == count{
            lettercount += 1
        }
    }
    return lettercount
}

count(input: "Praanoti", count: "a")

//count all characters in string

func stringCount(input: String) -> Int{
    let i = input.characters.count
    return i
}

stringCount(input: "Pranoti")


//remove duplicate letters from string

func rem(input: String)-> String {
    var usedcharacters = [Character]()
    
    for letter in input {
        if !usedcharacters.contains(letter){
            usedcharacters.append(letter)
        }
    }
    
    return String(usedcharacters)
}

rem(input: "Praaanoti")

//struct and protocol example
struct Pizza {
    let ingredients: [String]
}

protocol Pizzeria {
    func makePizza(ingredients: [String]) -> Pizza
    func makeMargherita() -> Pizza
}

extension Pizzeria {
    func makeMargherita() -> Pizza {
        return makePizza(ingredients: ["tomato", "mozzarella"])
    }
}

struct Lombardis: Pizzeria {
    func makePizza(ingredients: [String]) -> Pizza {
        return Pizza(ingredients: ingredients)
    }
    func makeMargherita() -> Pizza {
        return makePizza(ingredients: ["tomato", "basil", "mozzarella"])
    }
}

let lombardis1: Pizzeria = Lombardis()
lombardis1.makeMargherita()

let lombardis2: Lombardis = Lombardis()
lombardis2.makeMargherita()

//Fizz-Buzz
func fb(){
    for i in 1...100{
        if i % 3 == 0{
            if i % 5 == 0{
                print("Fizz Buzz")
            }else{
            print("Fizz")
         }
        }else if i % 5 == 0{
            print("Buzz")
        }else {
            print (i)
        }
    }
}

fb()

//Fizz-Buzz for particular number
func fb(i: Int) -> String{
    if i % 3 == 0{
        if i % 5 == 0{
            return "Fizz Buzz"
        }else{
            return "Fizz"
        }
    }else if i % 5 == 0{
        return "Buzz"
    }else {
        return "none"
    }
}

fb(i: 150)


//longest word in string

var problem = "find the longest word in the problem description"

// this will help the algorithm see the last word
problem += " "

var word = ""
var length = 0

var max = 0
var longestWord = ""

for character in problem.characters {
    if character == " " {
        if length > max {
            max = length
            longestWord = word
        }
        word = ""
        length = 0
    } else {
        word += "\(character)"
        length += 1
    }
}

print(longestWord)


//
/*var tableOf = 2 //Change the table you want
for index in 1...10 {
    
    print("\(tableOf) X \(index) = \(index * tableOf)")
    
}*/


/*for i in 0...10{
    for j in 0...10{
        print(i * j, terminator: "")
    }
}*/

//matrix multiplication table for 12 x 12

func matrix(rows: Int){
    for i in 0...rows{
        for j in 0...rows{
            print("\(i * j)", terminator: " ")
        }
        print("\n")
    }
}

matrix(rows: 12)


let treeHeight = 5
let treeWidth = treeHeight * 2 - 1

for lineNumber in 1...treeHeight {
    
    // How many asterisks to print
    let stars = 2 * lineNumber - 1
    var line = ""
    
    // Half the non-star space
    let spaces = (treeWidth - stars) / 2
    if spaces > 0 {
        line = String(repeating: " ", count: spaces)
    }
    
    line += String(repeating: "*", count: stars)
    print (line)
}






//Stack interview question

class Node{
    let value: Int
    var next: Node?
    init (value: Int){
        self.value = value
    }
}

class Stack{
    
    var top: Node?
    
    func push(_ value: Int){
        var oldTop = top
        top = Node(value: value)
        top?.next = oldTop
    }
    
    func pop()-> Int?{
        let current = top
        top = top?.next
        return current?.value
    }
}

let stack = Stack()
stack.push(1)
stack.push(2)
stack.push(3)

let first = stack.pop() //should return 3
let second = stack.pop()


//struct mutating function example

struct Rect{
    var width = 1
    var height = 1
    
    mutating func scaleBy(value: Int) {
        width *= value
        height *= value
        print("Width is: \(width)")
    }
}

var rect = Rect() //have to define struct as var because you are mutating the funtion
rect.scaleBy(value: 10)

//in terms of classes you don't require the mutating function for the same function as classes are reference types and they by default can change values even if you don't need to make your class a var it can be kept as let.


//two sum problem

struct TwoSum{
    static func twoSum(numbers: [Int], target: Int) -> [Int]{
        var hm = [Int: Int]()
        var res = [Int]()
        
        for i in 0..<numbers.count {
            let numberToFind: Int = target - numbers[i]
            print(numberToFind)
            //print (numberToFind)
            if let numToindex = hm[numberToFind]{
                print(numToindex)
                res.append(numToindex + 1)
                res.append(i + 1)
                return res
            }else{
                hm[numbers[i]] = i
            }
        }
            return res
    }
}

TwoSum.twoSum(numbers: [1,5,6,7], target: 11)

var code = [
    "a" : "b",
    "b" : "c",
    "c" : "d",
    "d" : "e",
    "e" : "f",
    "f" : "g",
    "g" : "h",
    "h" : "i",
    "i" : "j",
    "j" : "k",
]

var message = ["cdeg"]

var encodedMessage = ""

for str in message{
    //print(str)
    for char in str.characters {
    var character = "\(char)"
    
    if let encodedChar = code[character] {
        // letter
        encodedMessage += encodedChar
        //print(encodedMessage)
    } else {
        // space
        encodedMessage += character
    }
    }
}

print(encodedMessage)


/*let a = [1,2,3,4,5]
let b = [1,2,4,4,7]
print(a.lexicographicallyPrecedes(b))
print(b.lexicographicallyPrecedes(b))*/

//palindrome for string removing whitespaces and other unwanted characters

class Solution{
    
    func isPalindrome(s: String) -> Bool {
        let symbolsString = s.filter { ch in
            return self.isCheckedSymbol(ch: ch)
        }
        let symbols = symbolsString.lowercased().reversed()
        return String(symbols) == String(symbols.reversed())
    }
    
    func isCheckedSymbol(ch: Character) -> Bool {
        return (ch <= "Z" && ch >= "A") || (ch <= "z" && ch >= "a") || (ch <= "9" && ch >= "0")
    }
}


let s = Solution()
s.isPalindrome(s: "A man, a plan, a canal: Panama")
s.isPalindrome(s: "")
s.isPalindrome(s: "race a car")


// ** Write an algorithm to find longest number of zeros with in ones, consider following example:
// pass(19) = 10011 and longest is 2
// pass(15) = 1111 and longest is 0
// pass(1200) = 10010110000 and longest is 2

/*func binaryLongestGap(_ num: Int) -> Int {
    
    var isCountable = false
    var q = num, r = 0, c = 0, cc = 0
    
    while q > 0 {
        r = q % 2
        q = q / 2
        print(r)
        if r == 0 {
            if isCountable {
                c = c + 1
            }
        } else {
            isCountable = true
            if c > cc {
                cc = c
                c = 0
            }
        }
    }
    return cc
}

print(binaryLongestGap(1200))*/

//Dictionary datastructure
//swift type inference defines this automatically as [String: String]

/*let cats = ["Ellen" : "Chaplin", "Lilia": "George M", "Rose":"Friend", "Bettina":"Pal Mie"]
if let a = cats["Ellen"]{
    print("Ellens cat name is \(a)")
}
else{
    print("not found!!")
}*/




    func findLongestWord(s: String, d: [String]) -> String {
        var arr = Array(s)
        var result = ""
        
        for item in d {
            var arr_d = Array(item)
            //print(arr_d)
            var pi = 0
            var pj = 0
            while pi < arr.count && pj < arr_d.count {
                pj += (arr[pi] == arr_d[pj] ? 1 : 0)
                pi += 1
            }
             //print(pj)
            //print(pi)
            
            if pj == arr_d.count && (result.count < arr_d.count ||
                (result.count == arr_d.count && result > item)) {
                result = item
            }
            //print(result)
        }
        return result
    }

//let l = LongestWordInDict()
findLongestWord(s:"abpcplea", d:["ale", "apple", "monkey", "plea"])
//findLongestWord(s: "geeksforgeeks", d:["pintu", "geeksfor", "geeksgeeks"," forgeek"])

    


func charPos(str: String, ch: Character) -> Int{
    var count = 0
    
    for i in str{
        if i == ch{
            count += 1
        }
    }
    return count
}

charPos(str: "Hello World", ch: "l")

//reverse each word in a string
func arr(str: String) -> String{
    var newSentence = " "
    for item in str.components(separatedBy: " "){
        if newSentence != ""{
            newSentence += " "
        }
        let s = String(item.characters.reversed())
        print(s)
        newSentence += s
    }
    return newSentence
}

arr(str: "Pranoti is hardworking")
arr(str: "race car")


func fibSequence(numSteps: Int) -> [Int]{
    var sequence = [0,1]
    for index in 0...numSteps-2 {
        let first = sequence[sequence.count - 2]
        let second = sequence.last!
        sequence.append(first + second)
    }
    return sequence
}

fibSequence(numSteps: 10)


//even odd series

func evenOddSeries(num: Int){
    for i in 0...num{
        var result = " "
        if(i % 2 == 0){
            result += "\(i) is Even"
        }else{
            result += "\(i) is Odd"
        }
        print(result)
    }
}

evenOddSeries(num: 100)


