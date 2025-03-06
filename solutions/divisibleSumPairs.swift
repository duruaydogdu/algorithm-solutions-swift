func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
    var count = 0

    for i in 0..<n {
        for j in (i+1)..<n {
            if (ar[i] + ar[j]) % k == 0 {
                count += 1
            }
        }
    }
    return count
}
 
