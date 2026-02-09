
import Foundation

class FiveHourClockConverter {
    
    func convertToFiveHourLamp(hours: FiveHour) -> [FiveHourLamp] {
        if (hours.value / 5 < 1) {
            return [.noColor, .noColor, .noColor, .noColor]
        }
        return [.red, .noColor, .noColor, .noColor]
    }
}
