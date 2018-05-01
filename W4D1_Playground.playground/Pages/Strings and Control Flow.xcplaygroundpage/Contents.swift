//: [Previous](@previous)
/*:
 ## String Interpolation
 
 String interpolation is combining variables and constants inside a string.
 We can do this by writing the value in parentheses and write a backslash "`\`" before the parentheses.
 
 - Note:
 Formatting strings in Objective-C was usually done with the `stringWithFormat:` method.
 
 For example:
 */

var name = "Joe Smith"
print("Your name is \(name)")

/*:
 The sentence is printed as one string because string interpolation combined it for us.
 */
/*:
 - Experiment:
 Declare three variables about a person with their name, age and height. Then print out a sentence describing the person with the three variables.
 */
/*:
 - Example:
 "Your name is Joe Smith, your age is 35, and your height is 175cm."
 */
var personName = "John"
var personAge = 35
var personHeight = 175
print("Your name is \(personName), your age is \(personAge), and your height is \(personHeight)")
/*:
 - Experiment:
 Math calculations can be included within the "`\()`" such as adding two variables together. Try printing out a sentence using string interpolation and include a calculation.
 */

/*:
 ## Control Flow
 
 Use `'if'` and `'switch'` to make conditionals that run certain blocks of code. You've already seen this in Objective-C. The syntax is very similar except for the omission of the parenthesis around the condition.
 - Note:
 Swift switch statement supports pattern matching for different switch cases. You'll get to try them out with the example below.
 */

let myConditional = true
if myConditional {
    print("It's true!")
} else {
    print("It's false!")
}

/*:
 - Experiment:
 Try creating your own 'if' statement that determines whether a given number is even, odd or zero.
 */
let myNum = 0
if myNum == 0 {
    print("Zero")
} else if myNum % 2 == 0 {
    print("Even number")
} else {
    print("Odd number")
}

/*:
 - Experiment:
 The following switch statement showcases multiple conditions to check. Some of the case conditions may be unfamiliar to you.
 Try changing the 'vegetable' variable to test the conditions and figure out how they work.
 */

let vegetable = "celery"
var vegetableComment = ""
switch vegetable {
case "celery":
    vegetableComment = "Add some raisins and make ants on a log."
case "cucumber", "watercress":
    vegetableComment = "That would make a good tea sandwich."
case let x where x.hasSuffix("pepper"):
    vegetableComment = "Is it a spicy \(x)?"
default:
    vegetableComment = "Everything tastes good in soup."
}


/*:
 - Callout(Challenge):
 Create an if/else statement to print out the grammatically correct description of the number of bicycles there are. Declare a 'bicycleCount' variable with any number you wish then cover the conditions for zero bicycles, 1 bicycle, and more than 1 bicycle. ie: 'There are zero bicycles', 'There is 1 bicycle', 'There are 20 bicycles'
 */
var numberOfBycycles = 2
if numberOfBycycles == 0 {
    print("There are \(numberOfBycycles) bycyles")
} else if numberOfBycycles == 1 {
    print("There is \(numberOfBycycles) bycyle")
} else {
    print("There are \(numberOfBycycles) bycyles")
}

/*:
 - Callout(Challenge):
 Rewrite the above Challenge as a switch statement
 */
switch (numberOfBycycles) {
case 0:
    do {
        print("There are \(numberOfBycycles) bycyles")
        
    }
case 1:
    do {
        print("There is \(numberOfBycycles) bycyle")
    }
    
    
default:
    
    print("There are \(numberOfBycycles) bycyles")
    
    
}

/*:
 - Callout(Challenge):
 Write a conditional 'if' statement to determine whether a given year is considered a leap year or not.
 Here are the rules to determine leap year:
 - The year can be evenly divided by 4 = Is Leap Year
 - If the year can be evenly divided by 100 = Is NOT a Leap Year, unless;
 - The year is also evenly divisible by 400 = Is Leap Year
 */
let year = 2018

if year % 4 == 0 {
    print("\(year) is a leap year")
}
if year % 100 == 0 {
    if year % 100 == 0 {
        print("\(year) is a leap year")
    }
}



//: [Next](@next)
