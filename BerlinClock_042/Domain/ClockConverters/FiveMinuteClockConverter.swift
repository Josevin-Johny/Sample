
import Foundation

class FiveMinuteClockConverter {
    
    func convertToFiveMinuteLamp(minutes: Int) -> [FiveMinuteLamp] {
         let lampsOn = minutes / 5
        return (0..<11).map {
            $0 < lampsOn ? .yellowColor : .noColor
        }
    }
}
