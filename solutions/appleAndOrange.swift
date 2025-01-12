func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    let applesPositions = apples.map { a + $0 }
    let orangesPositions = oranges.map { b + $0 }
    
    let applesInHouse = applesPositions.filter { $0 >= s && $0 <= t }.count
    let orangesInHouse = orangesPositions.filter { $0 >= s && $0 <= t }.count
    
    print(applesInHouse)
    print(orangesInHouse)
}

