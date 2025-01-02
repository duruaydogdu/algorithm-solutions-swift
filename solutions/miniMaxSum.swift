func miniMaxSum(arr: [Int]) -> Void {
    var sortedArray = arr
    for i in 1..<sortedArray.count {
        let key = sortedArray[i]
        var j = i - 1
        while j >= 0 && sortedArray[j] > key {
            sortedArray[j + 1] = sortedArray[j]
            j -= 1
        }
        sortedArray[j + 1] = key
    }

    var miniSum = 0
    for i in 0..<4 {
        miniSum += sortedArray[i]
    }

    var maxSum = 0
    for i in (1..<5) {
        maxSum += sortedArray[i]
    }

    print("\(miniSum) \(maxSum)")
}

