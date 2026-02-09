
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
}
