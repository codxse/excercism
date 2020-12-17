//Solution goes in Sources
struct Year {
    private let year: Int
    
    init(calendarYear: Int) {
        year = calendarYear
    }
    
    var isLeapYear: Bool {
        isDivisible(by: 400, year) || (!isDivisible(by: 100, year) && isDivisible(by: 4, year))
    }
    
    func isDivisible(by denom: Int, _ nomi: Int) -> Bool {
        nomi % denom == 0
    }
}
