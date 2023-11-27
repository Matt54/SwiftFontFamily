import Foundation

public enum FontFamily {
    case roboto, youngSerif
    
    var name: String {
        switch self {
        case .roboto:
            return "Roboto"
        case .youngSerif:
            return "Young Serif"
        }
    }

    var fontNames: [String] {
        switch self {
        case .roboto:
            return ["Roboto-Black",
                    "Roboto-BlackItalic",
                    "Roboto-Bold",
                    "Roboto-BoldItalic",
                    "Roboto-Italic",
                    "Roboto-Light",
                    "Roboto-LightItalic",
                    "Roboto-Medium",
                    "Roboto-MediumItalic",
                    "Roboto-Regular",
                    "Roboto-Thin",
                    "Roboto-ThinItalic"]
        case .youngSerif:
            return ["YoungSerif-Regular"]
        }
    }
    
    var fontNamesWithExtensions: [String] {
        var items = [String]()
        for name in fontNames {
            items.append(name + ".ttf")
        }
        return items
    }
    
    enum FontFamilyTypes {
        case regular, light, bold, italic
    }
    
    var regularFont: String {
        switch self {
        case .roboto:
            return "Roboto-Regular"
        case .youngSerif:
            return "YoungSerif-Regular"
        }
    }
    
    var lightFont: String {
        switch self {
        case .roboto:
            return "Roboto-Light"
        case .youngSerif:
            return "YoungSerif-Regular"
        }
    }
    
    var boldFont: String {
        switch self {
        case .roboto:
            return "Roboto-Bold"
        case .youngSerif:
            return "YoungSerif-Regular"
        }
    }
    
    var italicFont: String {
        switch self {
        case .roboto:
            return "Roboto-Italic"
        case .youngSerif:
            return "YoungSerif-Regular"
        }
    }
    
    func getFontNameForType(_ fontType: FontFamilyTypes) -> String {
        switch fontType {
        case .regular:
            return regularFont
        case .light:
            return lightFont
        case .bold:
            return boldFont
        case .italic:
            return italicFont
        }
    }
}
