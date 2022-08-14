import SwiftUI

public extension Font {
    static func getCustomFont(_ fontStyle: FontStyle, fontFamily: FontFamily = .roboto) -> Font {
        let fontDescription = fontStyle.getFontDescription(fontFamily: fontFamily)
        return Font.custom(fontDescription.name, size: fontDescription.size)
    }
    
    static func getCustomFont(size: CGFloat, fontFamily: FontFamily = .roboto) -> Font {
        return Font.custom(fontFamily.lightFont, size: size)
    }
}
