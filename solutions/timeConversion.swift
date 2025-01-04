func timeConversion(s: String) -> String {
    guard s.count == 10 else { return "Invalid input format" }
    
    let period = s.suffix(2).uppercased()
    
    let timeComponents = s.prefix(8).split(separator: ":")
    guard timeComponents.count == 3, let hour = Int(timeComponents[0]) else {
        return "Invalid time format"
    }
    let minute = String(timeComponents[1])
    let second = String(timeComponents[2])
    
    var convertedHour: Int
    if period == "AM" {
        convertedHour = (hour == 12) ? 0 : hour
    } else {
        convertedHour = (hour == 12) ? 12 : hour + 12
    }
    
    return String(format: "%02d:%@:%@", convertedHour, minute, second)
}
