
import Foundation

class FiveHourClockConverter {
    
    func convertToFiveHourLamp(hours: FiveHour) -> [FiveHourLamp] {
        if (hours.value / 5 < 1) {
            return [.noColor, .noColor, .noColor, .noColor]
        } else  if (hours.value / 5 < 2) {
            return [.red, .noColor, .noColor, .noColor]
        }
        return [.noColor, .noColor, .noColor, .noColor]
    }
}
