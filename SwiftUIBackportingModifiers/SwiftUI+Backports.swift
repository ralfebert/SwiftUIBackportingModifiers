import SwiftUI

struct Backport<Content> {
    let content: Content
}

extension View {
    var backport: Backport<Self> { Backport(content: self) }
}

extension Backport where Content: View {
    @ViewBuilder func badge(_ count: Int) -> some View {
        if #available(iOS 15, *) {
            content.badge(count)
        } else {
            self.content
        }
    }
}
