//: [Previous](@previous)
/*:
 ## For Loops

 For loops are a way to repeat a set of statements a certain number of times.
 
 - Note:
 The traditional 'C-style' loop does not exists in Swift anymore: `for ( int i = 0; i<10; i++ )`. Instead, you create for loops that perform your set of statements for each item in a range or collection.
 */

// This is our collection
let pets = ["dog", "cat", "pig", "parrot"]

// This is the for loop grabbing each item and performing actions
for pet in pets {
    print(pet)
}

/*:
 We can declare a for loop using a range with a lower bound and upper bound
 - Example: `2...5` or `2..<5`
 */

for i in 2...5 {
    print("My Current Index: \(i)")
}

/*:
 - Experiment:
 What's the difference between `2...5` vs `2..<5`?
 */


/*:
 - Experiment:
  Use a ranged for loop to search through the 'pets' array above for the word 'pig' and print out its index.
 */
for pet in 0..<pets.count {
    if pets[pet] == "pig" {
        print(pet)
    }
    
}

/*:
 - Experiment:
 Create an array of random numbers of your choosing then make a for loop that adds 1 to each number.
 */
var numArr = [1, 3, 4, 5, 7, 8, 21]
for num in 0..<numArr.count {
    numArr[num] += 1
    
}


/*:
 - Experiment:
 Take a look at the example below. Modify the code so that it searches for both the largest and smallest number. Then print out the result.
 */

/*:
 Hint: Use an `_` so that you can avoid making another unecessary variable for the iteration value.
 */

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var smallest = 10
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
    
    for number in numbers {
        if smallest >= number {
            smallest = number
        }
    }
    
    
    
}
print(smallest)


/*:
 - Callout(Challenge):
 Given a number `N`, from 0 to `N`, add up all the odd numbers and print out the result.
 ie: N = 5, 1+3+5 = 9
 */
var myNumber = 5
var myNumArray = [Int]()
var myPrintString = ""
for num in 0...myNumber {
    if num % 2 == 1 {
        print(num)
        myNumArray.append(num)
    }
}
myNumArray.reverse()
var totalNum = 0
for num in 0..<myNumArray.count {
    totalNum += myNumArray[num]
    if num < myNumArray.count - 1 {
    myPrintString += "\(myNumArray[num]) + "
    } else {
    myPrintString += "\(myNumArray[num]) = \(totalNum)"
    }
}
myPrintString
/*:
 - Callout(Challenge):
 Given the following array of numbers, determine the frequency of each number using a for loop.
 
 ie: [1, 2, 1, 3, 3, 1, 1, 1]
 
 1: Occurs 5 times
 
 2: Occurs 1 time
 
 3: Occurs 2 times
 */

let numberArray = [1, 4, 5, 5, 5, 3, 2, 1, 4, 2, 2, 2, 1]
var uniqueNums = [Int]()
for num in 0..<numberArray.count {
    if !uniqueNums.contains(numberArray[num]) {
        uniqueNums.append(numberArray[num])
    }
}//forLoop
uniqueNums
var uniqueNumTimes = [Int]()

for num in 0..<uniqueNums.count {
    uniqueNumTimes.append(0)
}

for un in 0..<uniqueNums.count {
    var givenNum = uniqueNums[un]
    
    for num in 0..<numberArray.count {
        if numberArray[num] == givenNum {
          uniqueNumTimes[un] += 1
        }
    
    }//for num
    
}//for un
    
  uniqueNumTimes

//: [Next](@next)
