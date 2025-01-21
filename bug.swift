let numbers = [1, 2, 3, 4, 5]

let sum = numbers.reduce(0, +)

print(sum) // Output: 15

// Unexpected behavior when using reduce with an empty array

let emptyNumbers: [Int] = []

let emptySum = emptyNumbers.reduce(0, +) 

print(emptySum) // Output: 0 (Expected)

// However, if you use a different initial value:

let emptySum2 = emptyNumbers.reduce(10, +)

print(emptySum2) //Output: 10 (Expected)