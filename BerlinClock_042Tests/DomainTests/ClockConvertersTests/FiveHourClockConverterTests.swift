
import Testing
@testable import BerlinClock_042

@Suite("Five Hour clock convertion validation")
struct FiveHourClockConverterTests {
    
    @Test(arguments: [Hour(4)!,Hour(23)!])
    func fiveHourClockConverter_Validate_LampCount(hours: Hour) {
        //Arrange
        let fiveHoursConverter = FiveHourClockConverter()
        //Act
        let result = fiveHoursConverter.convertToFiveHourLamp(hours: hours)
        //Assert
        #expect(result.count == 4)
    }
    
    @Test(arguments: [Hour(0)!,Hour(1)!,Hour(4)!])
    func fiveHourClockConver_when_value_lessThanFive(hours: Hour) {
        //Arrange
        let fiveHoursConverter = FiveHourClockConverter()
        //Act
        let result = fiveHoursConverter.convertToFiveHourLamp(hours: hours)
        //Asser
        #expect(result == [.noColor, .noColor, .noColor, .noColor])
    }
    
    @Test(arguments: [Hour(5)!,Hour(9)!])
    func fiveHourClockConverter_when_value_fiveToNine(hours: Hour) {
        //Arrange
        let fiveHoursConverter = FiveHourClockConverter()
        //Act
        let result = fiveHoursConverter.convertToFiveHourLamp(hours: hours)
        //Assert
        #expect(result == [.redColor, .noColor, .noColor, .noColor])
    }
    
    @Test(arguments: [Hour(10)!,Hour(14)!])
    func fiveHourClockConverter_when_value_TenToFourteen(hours: Hour) {
        //Arrange
        let fiveHoursConverter = FiveHourClockConverter()
        //Act
        let result = fiveHoursConverter.convertToFiveHourLamp(hours: hours)
        //Assert
        #expect(result == [.redColor, .redColor, .noColor, .noColor])
    }
    
    @Test(arguments: [Hour(16)!,Hour(19)!])
    func fiveHourClockConverter_when_value_fifteenToNineteen(hours: Hour) {
        //Arrange
        let fiveHoursConverter = FiveHourClockConverter()
        //Act
        let result = fiveHoursConverter.convertToFiveHourLamp(hours: hours)
        //Assert
        #expect(result == [.redColor, .redColor, .redColor, .noColor])
    }
    
    @Test(arguments: [Hour(20)!,Hour(23)!])
    func fiveHourClockConverter_when_value_twentyToTwentyThree(hours: Hour) {
        //Arrange
        let fiveHoursConverter = FiveHourClockConverter()
        //Act
        let result = fiveHoursConverter.convertToFiveHourLamp(hours: hours)
        //Assert
        #expect(result == [.redColor, .redColor, .redColor, .redColor])
    }
}
