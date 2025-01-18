func breakingRecords(scores: [Int]) -> [Int] {
    if scores.isEmpty {
        return [0, 0]
    }
    
    var maxScore = scores[0]
    var minScore = scores[0]

    var maxBreaks = 0
    var minBreaks = 0
    
    for score in scores {
        if score > maxScore {
            maxScore = score
            maxBreaks += 1
        } else if score < minScore {
            minScore = score
            minBreaks += 1
        }
    }
    
    return [maxBreaks, minBreaks]
}
