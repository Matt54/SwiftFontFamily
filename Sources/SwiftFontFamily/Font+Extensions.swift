import SwiftUI

public extension Font {
    static func getCustomFont(_ fontStyle: FontStyle, fontFamily: FontFamily? = nil) -> Font {
        let fontDescription = fontStyle.getFontDescription(fontFamily: fontFamily)
        return Font.custom(fontDescription.name, size: fontDescription.size)
    }
    
    static func getCustomFont(size: CGFloat, fontFamily: FontFamily? = nil) -> Font {
        let fontFamily = fontFamily ?? FontManager.defaultFontFamily
        return Font.custom(fontFamily.lightFont, size: size)
    }
}
