
import Testing
@testable import BerlinClock_042

@Suite("One Hour clock convertion validation")
struct OneHourClockConverterTests {
    
    @Test(arguments: [1,2,3,4])
    func oneHourClockConverter_Validate_LampCount(hour: Int) {
        //Arrange
        let oneHoursConverter = OneHourClockConverter()
        //Act
        let result = oneHoursConverter.convertToOneHourLamp(hour: hour)
        //Assert
        #expect(result.count == 4)
    }
    
    @Test(arguments: [0, 5, 10, 15, 20])
    func oneHourClockConverter_when_zeroLampsOn(hour: Int) {
        //Arrange
        let oneHoursConverter = OneHourClockConverter()
        //Act
        let result = oneHoursConverter.convertToOneHourLamp(hour: hour)
        //Assert
        #expect(result == [.noColor, .noColor, .noColor, .noColor])
    }
    
    @Test(arguments: [1, 6, 11, 16, 21])
    func oneHourClockConverter_when_OneLampsOn(hour: Int) {
        //Arrange
        let oneHoursConverter = OneHourClockConverter()
        //Act
        let result = oneHoursConverter.convertToOneHourLamp(hour: hour)
        //Assert
        #expect(result == [.redColor, .noColor, .noColor, .noColor])
    }
}
