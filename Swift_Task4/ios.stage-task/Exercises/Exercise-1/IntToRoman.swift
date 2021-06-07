import Foundation

public extension Int {
    
    var roman: String? {
        if (self < 1 || self > 3999) { return nil }
        
        var pointValue = self
        var numerationString = ""
        let romanList = [(1000, "M"),
                           (900, "CM"),
                           (500, "D"),
                           (400, "CD"),
                           (100, "C"),
                           (90, "XC"),
                           (50, "L"),
                           (40, "XL"),
                           (10, "X"),
                           (9, "IX"),
                           (5, "V"),
                           (4, "IV"),
                           (1, "I")]
        
        for value in romanList {
            while pointValue >= value.0 {
                pointValue -= value.0
                numerationString += value.1
            }
        }
        
        return numerationString
    }
}
