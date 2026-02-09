
import Foundation

class OneHourClockConverter {
    
    func convertToOneHourLamp(hour: Int) -> [OneHourLamp] {
        
        switch hour {
        case 0, 5, 10, 15, 20:
            [.noColor, .noColor, .noColor, .noColor]
        default:
            [.noColor, .noColor, .noColor, .noColor]
        }
    }
}
