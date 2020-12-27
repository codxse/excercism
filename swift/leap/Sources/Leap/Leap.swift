//Solution goes in Sources
struct Year {
    private let year: Int
    
    init(calendarYear: Int) {
        year = calendarYear
    }
    
    var isLeapYear: Bool {
        return year.isMultiple(of: 4) && (!year.isMultiple(of: 100) || year.isMultiple(of: 400))
    }

}
