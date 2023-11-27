import SwiftUI

public enum FontStyle {
    case standard, extraExtraSmall, extraSmall, extraSmallBold, small, smallBold, medium, mediumBold, mediumMediumLarge, mediumLarge, mediumLargeBold, large, largeBold, headline, paywallButton, timeValue

    struct FontDescription {
        let name: String
        let size: CGFloat
    }
    
    func getFontDescription(fontFamily: FontFamily? = nil) -> FontDescription {
        let fontFamily = fontFamily ?? FontManager.defaultFontFamily

        switch self {
        case .extraExtraSmall:
            return FontDescription(name: fontFamily.getFontNameForType(.light), size: 10)
        case .extraSmall:
            return FontDescription(name: fontFamily.getFontNameForType(.light), size: 14)
        case .extraSmallBold:
            return FontDescription(name: fontFamily.getFontNameForType(.bold), size: 14)
        case .small:
            return FontDescription(name: fontFamily.getFontNameForType(.light), size: 16)
        case .smallBold:
            return FontDescription(name: fontFamily.getFontNameForType(.bold), size: 16)
        case .medium:
            return FontDescription(name: fontFamily.getFontNameForType(.light), size: 18)
        case .mediumBold:
            return FontDescription(name: fontFamily.getFontNameForType(.bold), size: 18)
        case .mediumMediumLarge:
            return FontDescription(name: fontFamily.getFontNameForType(.light), size: 22)
        case .mediumLarge:
            return FontDescription(name: fontFamily.getFontNameForType(.light), size: 34)
        case .mediumLargeBold:
            return FontDescription(name: fontFamily.getFontNameForType(.bold), size: 34)
        case .large:
            return FontDescription(name: fontFamily.getFontNameForType(.light), size: 36)
        case .largeBold:
            return FontDescription(name: fontFamily.getFontNameForType(.bold), size: 36)
        case .headline:
            return FontDescription(name: fontFamily.getFontNameForType(.light), size: 48)
        case .standard:
            return FontDescription(name: fontFamily.getFontNameForType(.light), size: 14)
        case .paywallButton:
                return FontDescription(name: fontFamily.getFontNameForType(.bold), size: 26)
        case .timeValue:
            return FontDescription(name: fontFamily.getFontNameForType(.bold), size: 12)
        }
    }
}

struct Font_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VStack {
                Text("Hello World")
                
                Text("Hello World")
                    .font(.getCustomFont(.standard))
            }
            
            VStack {
                Text("Hello World")
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text("Hello World")
                    .font(.getCustomFont(.mediumBold))
            }
            
            VStack {
                Text("Hello World")
                    .font(.title3)
                
                Text("Hello World")
                    .font(.getCustomFont(.small))
            }
            
            VStack {
                Text("Hello World")
                    .font(.system(size: 48))
                
                Text("Hello World")
                    .font(.getCustomFont(size: 48))
            }
            
            VStack {
                Text("Hello World")
                    .font(.system(size: 18))
                
                Text("Hello World")
                    .font(.getCustomFont(size: 18))
            }
        }
        .onLoad { FontManager.registerPackageFonts() }
    }
}
