func diagonalDifference(arr: [[Int]]) -> Int {
    let n = arr.count
    var primaryDiagonalSum = 0
    var secondaryDiagonalSum = 0
    
    for i in 0..<n {
        primaryDiagonalSum += arr[i][i]
        secondaryDiagonalSum += arr[i][n-i-1]
    }
    
    return abs(primaryDiagonalSum - secondaryDiagonalSum)
}
