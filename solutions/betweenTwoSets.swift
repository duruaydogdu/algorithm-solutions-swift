func getTotalX(a: [Int], b: [Int]) -> Int {
    func gcd(_ a: Int, _ b: Int) -> Int {
        return b == 0 ? a : gcd(b, a % b)
    }
    
    func lcm(_ a: Int, _ b: Int) -> Int {
        return (a * b) / gcd(a, b)
    }
    
    let lcmA = a.reduce(1, lcm)
    let gcdB = b.reduce(b[0], gcd)
    
    var count = 0
    var multiple = lcmA
    
    while multiple <= gcdB {
        if gcdB % multiple == 0 {
            count += 1
        }
        multiple += lcmA
    }
    
    return count
}
