
import Foundation

class OneHourClockConverter {
    
    func convertToOneHourLamp(hour: Int) -> [OneHourLamp] {
        
        switch hour {
        case 0, 5, 10, 15, 20:
            [.noColor, .noColor, .noColor, .noColor]
        case 1, 6, 11, 16, 21:
            [.redColor, .noColor, .noColor, .noColor]
        default:
            [.noColor, .noColor, .noColor, .noColor]
        }
    }
}
