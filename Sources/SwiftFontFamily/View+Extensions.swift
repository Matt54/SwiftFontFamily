import SwiftUI

public extension View {
    /// Used to load resources for the canvas preview (such as fonts)
    func onLoad(_ closure: () -> Void) -> some View {
        LogicLoader(
            closure,
            content: self
        )
    }
}

// https://www.reddit.com/r/SwiftUI/comments/njntiq/how_to_use_custom_fonts_in_previews_when_in_a/
private struct LogicLoader<T>: View where T: View {
    
    private var content: T
    
    init(_ closure: () -> Void, content: T) {
        closure()
        self.content = content
    }
    
    var body: some View {
        content
    }
}
