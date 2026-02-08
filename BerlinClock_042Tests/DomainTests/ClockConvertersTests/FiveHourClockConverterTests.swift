
import Testing
@testable import BerlinClock_042

@Suite("Five Hour clock convertion validation")
struct FiveHourClockConverterTests {
    
    @Test(arguments: [5,7,8])
    func fiveHourClockConverter_Validate_LampCount(hours: Int) {
        //Arrange
        let fiveHoursConverter = FiveHourClockConverter()
        //Act
        let result = fiveHoursConverter.convertToFiveHourLamp(hours: hours)
        //Assert
        #expect(result.count == 4)
    }
    
    @Test(arguments: [0,1,4])
    func fiveHourClockConver_when_value_lessThanFive(hours: Int) {
        //Arrange
        let fiveHoursConverter = FiveHourClockConverter()
        //Act
        let result = fiveHoursConverter.convertToFiveHourLamp(hours: hours)
        //Asser
        #expect(result == [.noColor, .noColor, .noColor, .noColor])
    }
}
