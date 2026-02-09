
import Foundation

struct Hour {
    let value: Int
    
    init?(_ value: Int) {
        guard (0...23).contains(value) else { return nil }
        self.value = value
    }
}

