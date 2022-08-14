import Foundation

public enum FontFamily {
    case roboto
    
    var name: String {
        switch self {
        case .roboto:
            return "Roboto"
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
        }
    }
    
    var lightFont: String {
        switch self {
        case .roboto:
            return "Roboto-Light"
        }
    }
    
    var boldFont: String {
        switch self {
        case .roboto:
            return "Roboto-Bold"
        }
    }
    
    var italicFont: String {
        switch self {
        case .roboto:
            return "Roboto-Italic"
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
