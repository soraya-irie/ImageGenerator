import SwiftUI

struct ImageButtonsView: View {
    @Environment(AppManager.self) private var appManager

    var body: some View {
        regenerateButton
    }

    private var regenerateButton: some View {
        Button("Regenerate", systemImage: "arrow.clockwise") {
            appManager.generateImage()
        }
        .buttonStyle(.plain)
        .font(.footnote)
        .keyboardShortcut("r", modifiers: .command)
        .disabled(!appManager.showKitchen)
    }
}

#Preview {
    ImageButtonsView()
}
