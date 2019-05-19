

import Foundation

class ShortDateFormat {
    
    static var formatter: DateFormatter?
    
    static func formatDate(_ date: Date) -> String {
        if formatter == nil {
            formatter = DateFormatter()
            formatter!.locale = Locale(identifier: "ru")
            formatter!.dateStyle = .medium
            formatter!.timeStyle = .short
        }
        return formatter!.string(from: date)
    }
    
}
