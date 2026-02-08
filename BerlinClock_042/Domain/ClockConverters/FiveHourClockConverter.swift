
import Foundation

class FiveHourClockConverter {
    
    func convertToFiveHourLamp(hours: Int) -> [FiveHourLamp] {
        if (hours / 5 < 1) {
            return [.noColor, .noColor, .noColor, .noColor]
        }
        return [.red, .noColor, .noColor, .noColor]
    }
}
