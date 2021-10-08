import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Color.yellow
                .tabItem {
                    Label("Example", systemImage: "hand.raised")
                }
                .backport.badge(5)

            Color.red
                .tabItem {
                    Label("Example", systemImage: "hand.tap")
                }
                .backport.badge(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
