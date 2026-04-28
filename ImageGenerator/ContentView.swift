import SwiftUI

struct ContentView: View {
    @Environment(AppManager.self) private var appManager

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .previewEnvironment()
}
