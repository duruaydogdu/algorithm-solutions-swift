import Foundation

func aVeryBigSum(ar: [Int]) -> Int {
    return ar.reduce(0, +)
}

let result = aVeryBigSum(ar: [1000000001, 1000000002, 1000000003, 1000000004, 1000000005])
print(result)

