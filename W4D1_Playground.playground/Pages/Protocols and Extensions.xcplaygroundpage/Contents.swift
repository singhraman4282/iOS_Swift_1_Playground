//: [Previous](@previous)
/*:
 ## Protocols
 Protocols are a defined contract or blueprint that a class, struct or enum must follow.
 */
/*:
 Here we define a 'ShapeProtocol' where anything that conforms to it must provide a property of number of sides and a function called 'shapeDescription'
 */
import UIKit

protocol ShapeProtocol {
    var numberOfSides: Int { get set }
    func shapeDescription()
    func calculateArea() ->(Int)
}

protocol PersonProtocol {
    var name: String { get set }
    var gender: String { get set }
    var age: Int { get set }

    
}

/*:
 This 'Square' class conforms to the 'ShapeProtocol' and defines the number of sides for this shape and it has the shapeDescription method inside.
 */
class Square: ShapeProtocol {
    var numberOfSides: Int
    var side:Int
    var color:String
    
    init(){
        self.numberOfSides = 4
        self.side = 2
        self.color = "Red"
    }
    
    init(color:String) {
        self.color = color
        numberOfSides = 2
        side = 2
    }
    
    func shapeDescription() {
        
        print("This is a square")
    }
    func calculateArea() -> (Int) {
        return side * side
    }
    
}

/*:
 - Experiment:
 Add a new function in our 'ShapeProtocol' that should calculate the area of its shape. Make sure you implement it in our 'Square' class as well.
 */

/*:
 - Experiment:
 Add a new property in our 'ShapeProtocol' of type String that indicates the colour of this shape.
 */

/*:
 - Experiment:
 We can also declare a custom initializer within our 'ShapeProtocol' that any class must have present. Create an initializer that takes in a colour as a parameter.
 */

/*:
 - Callout(Challenge):
 Define a person protocol with name, gender, age and add a custom initializer to set all the properties and a function to print a description of this person. Create a 'Student' class that conforms to this protocol and print the description of this student using its name.
 */
class Person:PersonProtocol {
    var name: String
    var gender: String
    var age: Int
    
    
    init(name:String, gender:String, age:Int) {
            self.name = name
        self.gender = gender
        self.age = age
            print("\(self.name) is a  \(self.gender) who is \(self.age) years old")
            }
}
/*:
 ## Extensions
 Extensions are a way to add additional functions to an existing class, struct or enum.
 \
 For example, I can extend the `'Double'` class to add a function I may use very often such as squaring a number. ie: 4*4 = 16
 
 - Note:
 Extensions are like categories from Objective-C. Unlike Objective-C categories, Swift extensions do not have names.
 */

// This is declaring an extension on the Double class
extension Double {
    
    // This 'square' function takes its own value and multiples it by itself, then returns the new value
    func square() -> Double {
        
        return self * self
    }
}

var myDoubleValue = 5.0
var mySquaredDoubleValue = myDoubleValue.square()

/*:
 - Experiment:
 Try adding the 'square' function to the `Float` type
 */
extension Float {
    func square()-> Float {
        return self * self
    }
}

var myFloat:Float = 1.1
myFloat.square()
/*:
 We are going to add a few extensions to several classes that you could potentially use for your future projects to make things more convenient.
 */
/*:
 - Callout(Challenge):
 Create an extension on UIColor that converts hex represented colours to a UIColor to use. ex: #FFFFFF would give a UIColor of white (Hint: You can google the algorithm on how to convert hex values to a UIColor)
 */
extension UIColor {
    public convenience init?(hexString: String) {
        let r, g, b, a: CGFloat
        
        if hexString.hasPrefix("#") {
            let start = hexString.index(hexString.startIndex, offsetBy: 1)
            let hexColor = String(hexString[start...])
            
            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0
                
                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255
                    
                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }
        
        return nil
    }
}

let gold = UIColor(hexString: "#ffe700ff")
/*:
 - Callout(Challenge):
 Create an extension on `String` called 'trim'. This will return a `String` that has the whitespace trimmed from the beginning and end. For example: "    hello there  " will return "hellothere"
 */
extension String {
    func trim() -> (String) {
        return self.replacingOccurrences(of: " ", with: "")
    }
    
    func checkIfEmail() -> (Bool) {
        if self.contains(" ") && !self.contains("@") {
        return false
        } else {
            return true
        }
    }
    
}

var a = "Hello there"
a.trim()
var b = "abc@gmail.com"
a.checkIfEmail()
b.checkIfEmail()
/*:
 - Callout(Challenge):
 Create an extension on String that checks if an email address has a valid format. You can make the rules as strict or as loose as you'd like. Rules can include verifying there are no spaces, there is a '@' present, etc.
 */

/*:
 - Callout(Challenge):
 Create an extension on `Double` to add a function that converts the number of seconds into minutes and another function to hours. ex: Given 900 seconds, the minutes returned will be 15 minutes, and the hours returned would be 0.25 hours.
 */
extension Double {
    
    func numToMins() -> (Double) {
        return self/60.0
    }
    
    func numToHours() -> (Double) {
        return self/3600.0
    }
    
    
}

var seconds:Double = 900.0
seconds.numToMins()
seconds.numToHours()

//: [Next](@next)
