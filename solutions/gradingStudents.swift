func gradingStudents(grades: [Int]) -> [Int] {
    var roundedGrades: [Int] = []
    
    for grade in grades {
        if grade < 38 {
            roundedGrades.append(grade)
        } else {
            let nextMultipleOfFive = ((grade / 5) + 1) * 5
            if nextMultipleOfFive - grade < 3 {
                roundedGrades.append(nextMultipleOfFive)
            } else {
                roundedGrades.append(grade)
            }
        }
    }
    return roundedGrades
}
