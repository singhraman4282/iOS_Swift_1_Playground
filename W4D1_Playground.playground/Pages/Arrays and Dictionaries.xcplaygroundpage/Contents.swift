//: [Previous](@previous)
/*:
 ## Array and Dictionaries
 
  Arrays and dictionaries allow us to store a collection of data. Create arrays and dictionaries using brackets '[]'. Remember that arrays hold a collection data based on an index, so we can access a value by writing the desired index within the brackets. Arrays also begin at index `0`. Dictionaries hold a key and a value, and we can access a value by writing the desired key within the brackets.
 */

// We can declare an array with square brackets syntax
var myNumberArray = [1,2,3]
print("The value at index 1 is: \(myNumberArray[1])")

// We can declare a dictionary with square brackets and key/value data
var myDictionary = ["Students" : 5, "Teachers" : 2]

// This is how we add a new key/value to our dictionary
myDictionary["Principal"] = 1

/*:
 - Experiment:
 Try creating an array and dictionary using `'let'` vs `'var'` then try adding something to them. What do you notice? For the array, you can use a method called 'append' to add something to it.
 */
let myArray = [1, 2, 3]
var myArray2 = [1, 2, 3]
myArray2.append(4)

let myConstantDictionary = ["Name":"John", "Age":30] as [String : Any]
var myVariableDictionary2 = ["Name":"John", "Age":30] as [String : Any]
myVariableDictionary2["Name"] = "Joe"

myVariableDictionary2
/*:
 - Experiment:
 Try creating an empty array with an explicit type `[type]`. What happens when you add a value that isn't the same type?
 */
var myTypeArray = [String]()


/*:
 - Experiment:
 Try creating an empty dictionary with an explicit type. `[keyType: valueType]`
 */



var myNewDictionary = [String:String]()


/*:
 - Experiment:
 Create an array with any values of your choice. Play around with accessing a value at a certain index. Then try playing with the following methods of an array and find out what they do:
 - append
 - insert
 - removeAt
 - removeAll
 - reverse
 - count
 */
var myReverseArray = [1, 2, 3, 4]
myReverseArray.reverse()
myReverseArray

/*:
 - Experiment:
 Create a dictionary with any values of your choice. Play around with accessing a value by its key. Try keys using different case sensitivity, what happens? Then try playing with the following methods of a dictionary and find out what they do:
 - removeValue
 - isEmpty
 - count
 */
var myNewewDictionary = ["Name":"John", "Age":"31", "Gender":"Male"]
myNewewDictionary.removeValue(forKey: "Name")
myNewewDictionary.count

/*:
 - Callout(Challenge):
    Declare a mutable array that is empty and holds `Strings`. On the next few lines, add the following names to the array: John, Karen, Jane
 
    Finally, print out each person's name from the array using their index and string interpolation
*/
var myNewMutableArray = [String]()
    myNewMutableArray.append("John")
    myNewMutableArray.append("Karen")
    myNewMutableArray.append("Jane")

for i in 0..<myNewMutableArray.count {
    print(myNewMutableArray[i])
}



/*:
 - Callout(Challenge):
  Declare a mutable dictionary with the following names and their salaries
 
    John - $50000
 
    Jane - $70000
 
    Karen - $62000
 
    On the next line, add this last person's info: Bob - $45000
 */
var myNewMutableDict = ["John":5000, "Jane":70000, "Karen":62000]
myNewMutableDict["Bob"] = 45000

//: [Next](@next)
