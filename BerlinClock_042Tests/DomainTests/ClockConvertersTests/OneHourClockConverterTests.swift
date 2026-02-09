
import Testing
@testable import BerlinClock_042

@Suite("One Hour clock convertion validation")
struct OneHourClockConverterTests {
    
    @Test(arguments: [Hour(1)!,Hour(2)!,Hour(3)!,Hour(4)!])
    func oneHourClockConverter_Validate_LampCount(hour: Hour) {
        //Arrange
        let oneHoursConverter = OneHourClockConverter()
        //Act
        let result = oneHoursConverter.convertToOneHourLamp(hour: hour)
        //Assert
        #expect(result.count == 4)
    }
    
    @Test(arguments: [Hour(0)!, Hour(5)!, Hour(10)!,Hour(15)!, Hour(20)!])
    func oneHourClockConverter_when_zeroLampsOn(hour: Hour) {
        //Arrange
        let oneHoursConverter = OneHourClockConverter()
        //Act
        let result = oneHoursConverter.convertToOneHourLamp(hour: hour)
        //Assert
        #expect(result == [.noColor, .noColor, .noColor, .noColor])
    }
    
    @Test(arguments: [Hour(1)!, Hour(6)!, Hour(11)!, Hour(16)!, Hour(21)!])
    func oneHourClockConverter_when_OneLampsOn(hour: Hour) {
        //Arrange
        let oneHoursConverter = OneHourClockConverter()
        //Act
        let result = oneHoursConverter.convertToOneHourLamp(hour: hour)
        //Assert
        #expect(result == [.redColor, .noColor, .noColor, .noColor])
    }
    
    @Test(arguments: [Hour(2)!, Hour(7)!, Hour(12)!, Hour(17)!, Hour(22)!])
    func oneHourClockConverter_when_TwoLampsOn(hour: Hour) {
        //Arrange
        let oneHoursConverter = OneHourClockConverter()
        //Act
        let result = oneHoursConverter.convertToOneHourLamp(hour: hour)
        //Assert
        #expect(result == [.redColor, .redColor, .noColor, .noColor])
    }
}
