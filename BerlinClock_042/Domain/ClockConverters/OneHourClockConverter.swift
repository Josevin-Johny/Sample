
import Foundation

class OneHourClockConverter {
    
    func convertToOneHourLamp(hour: Hour) -> [OneHourLamp] {
        
        let lampsOn = hour.value % 5
        return (0..<4).map {
             $0 < lampsOn ? .redColor : .noColor
        }
    }
}
