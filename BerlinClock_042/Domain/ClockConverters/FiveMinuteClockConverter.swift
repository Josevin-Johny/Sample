
import Foundation

class FiveMinuteClockConverter {
    
    func convertToFiveMinuteLamp(minutes: Int) -> [FiveMinuteLamp] {
        let lampsOn = minutes / 5
        return (0..<11).map { index in
            if index < lampsOn {
                [2, 5, 8].contains(index) ? .redColor : .yellowColor
            } else {
                .noColor
            }
        }
    }
}
