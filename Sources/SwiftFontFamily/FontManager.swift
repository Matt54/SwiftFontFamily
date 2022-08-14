import Foundation
import CoreText
import AppKit

public class FontManager: NSObject {
    /// Loads and registers fonts from the swift package
    public static func registerPackageFonts(fontFamily: FontFamily = .roboto) {
    
        // All the filenames of your custom fonts here
        fontFamily.fontNamesWithExtensions.forEach{ registerFont(fileName: $0) }
    }

    static public func registerFont(fileName: String) {
    
        guard let pathForResourceString = Bundle.thisModule.path(forResource: fileName, ofType: nil),
              let fontData = NSData(contentsOfFile: pathForResourceString),
              let dataProvider = CGDataProvider(data: fontData),
              let fontRef = CGFont(dataProvider) else {
            print("*** ERROR: ***")
            return
        }
    
        var errorRef: Unmanaged<CFError>? = nil
    
        if !CTFontManagerRegisterGraphicsFont(fontRef, &errorRef) {
            print("*** ERROR: \(errorRef.debugDescription) ***")
        }
    }
}
