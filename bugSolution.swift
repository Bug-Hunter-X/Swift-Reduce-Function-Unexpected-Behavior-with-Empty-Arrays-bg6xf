Instead of directly relying on reduce with an empty array, it's better to handle the empty case explicitly:

```swift
let numbers = [1, 2, 3, 4, 5]

let sum = numbers.reduce(0, +)

print(sum) // Output: 15

let emptyNumbers: [Int] = []

let emptySum = emptyNumbers.isEmpty ? 0 : emptyNumbers.reduce(0, +)

print(emptySum) // Output: 0

let emptySum2 = emptyNumbers.isEmpty ? 10 : emptyNumbers.reduce(10, +) 

print(emptySum2) // Output: 10

//More generally:
func safeReduce<T>(array: [T], initialValue: T, combine: (T, T) -> T) -> T {
    return array.isEmpty ? initialValue : array.reduce(initialValue, combine)
}

let safeSum = safeReduce(array: emptyNumbers, initialValue: 10, combine: +)

print(safeSum) // Output: 10
```
This approach checks for emptiness first, preventing potential unexpected results and improving code clarity.