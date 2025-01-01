func staircase(n: Int) -> Void {
     for i in 1...n {
        let spaces = String(repeating: " ", count: n - i)
        let hashes = String(repeating: "#", count: i)
        print(spaces + hashes)
    }
}
