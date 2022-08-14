import SwiftUI

public enum FontStyle {
    case small, medium, large

    struct FontDescription {
        let name: String
        let size: CGFloat
    }
    
    func getFontDescription(fontFamily: FontFamily = .roboto) -> FontDescription {
        switch self {
        case .small:
            return FontDescription(name: fontFamily.getFontNameForType(.light), size: 12)
        case .medium:
            return FontDescription(name: fontFamily.getFontNameForType(.bold), size: 24)
        case .large:
            return FontDescription(name: fontFamily.getFontNameForType(.light), size: 36)
        }
    }
}

public extension Font {
    static func getCustomFont(_ fontStyle: FontStyle, fontFamily: FontFamily = .roboto) -> Font {
        let fontDescription = fontStyle.getFontDescription(fontFamily: fontFamily)
        return Font.custom(fontDescription.name, size: fontDescription.size)
    }
}
