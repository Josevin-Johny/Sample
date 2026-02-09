
import Testing

@testable import BerlinClock_042

@Suite("Five Hour Clock value validation")
struct FiveHourTests {
    
    @Test(arguments: [0,22])
    func validateFiveHourClock_when_value_lessThanTwentyThree(fiveHour: Int) {
        //Arrange & Act
        let result = FiveHour(fiveHour)
        //Assert
        #expect(result != nil)
    }
    
    @Test(arguments: [25])
    func validateFiveHourClock_when_value_moreThanTwentyThree(fiveHour: Int) {
        //Arrange & Act
        let result = FiveHour(fiveHour)
        //Assert
        #expect(result == nil)
    }
    
    @Test(arguments: [-2])
    func validateFiveHourClock_when_value_minus(fiveHour: Int) {
        //Arrange & Act
        let result = FiveHour(fiveHour)
        //Assert
        #expect(result == nil)
    }
    
}

