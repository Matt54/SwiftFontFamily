import SwiftUI

public enum FontStyle {
    case standard, extraExtraSmall, extraSmall, small, smallBold, medium, mediumBold, large, largeBold, headline

    struct FontDescription {
        let name: String
        let size: CGFloat
    }
    
    func getFontDescription(fontFamily: FontFamily = .roboto) -> FontDescription {
        switch self {
        case .extraExtraSmall:
            return FontDescription(name: fontFamily.getFontNameForType(.light), size: 10)
        case .extraSmall:
            return FontDescription(name: fontFamily.getFontNameForType(.light), size: 14)
        case .small:
            return FontDescription(name: fontFamily.getFontNameForType(.light), size: 16)
        case .smallBold:
            return FontDescription(name: fontFamily.getFontNameForType(.bold), size: 16)
        case .medium:
            return FontDescription(name: fontFamily.getFontNameForType(.light), size: 18)
        case .mediumBold:
            return FontDescription(name: fontFamily.getFontNameForType(.bold), size: 18)
        case .large:
            return FontDescription(name: fontFamily.getFontNameForType(.light), size: 36)
        case .largeBold:
            return FontDescription(name: fontFamily.getFontNameForType(.bold), size: 36)
        case .headline:
            return FontDescription(name: fontFamily.getFontNameForType(.light), size: 48)
        case .standard:
            return FontDescription(name: fontFamily.getFontNameForType(.light), size: 14)
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
