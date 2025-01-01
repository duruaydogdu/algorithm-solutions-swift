func plusMinus(arr: [Int]) -> Void {
    var positive = 0
    var negative = 0
    var zero = 0

    for num in arr {
        if num > 0 {
            positive += 1
        } else if num < 0 {
            negative += 1
        } else {
            zero += 1
        }
    }

    let totalCount = Double(arr.count)
    
    let p = String(format: "%.6f", Double(positive) / totalCount)
    let n = String(format: "%.6f", Double(negative) / totalCount)
    let z = String(format: "%.6f", Double(zero) / totalCount)
    
    print(p)
    print(n)
    print(z)
}
