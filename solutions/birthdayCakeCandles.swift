func birthdayCakeCandles(candles: [Int]) -> Int {
    let maxHeight = candles.max() ?? 0

    let tallestCount = candles.filter { $0 == maxHeight }.count
    
    return tallestCount
}
