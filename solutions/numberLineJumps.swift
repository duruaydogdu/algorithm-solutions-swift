func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    if v1 == v2 {
        return x1 == x2 ? "YES" : "NO"
    }
    
    let relativeSpeed = v1 - v2
    let relativeDistance = x2 - x1
    
    if relativeSpeed != 0 && relativeDistance % relativeSpeed == 0 && relativeDistance / relativeSpeed > 0 {
        return "YES"
    }
    
    return "NO"
}
