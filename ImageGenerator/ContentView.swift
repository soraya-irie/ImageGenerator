import SwiftUI

struct ContentView: View {
    @Environment(AppManager.self) private var appManager

    var body: some View {
        VStack {
            if let image = appManager.currentImage {
                Image(nsImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } else {
                StartView()
            }
        }
    }
}

#Preview {
    ContentView()
        .previewEnvironment()
}
