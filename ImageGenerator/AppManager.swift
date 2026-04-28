import SwiftUI
import ImagePlayground

@Observable
class AppManager {
    let imageGenerator = ImageGenerator()
    var currentImage: NSImage?

    private(set) var error: Error?
    private(set) var isGenerating = false

    func generateImage() {
        error = nil
        isGenerating = true

        Task {
            do {
                let generatedImage = try await imageGenerator.generate()
                currentImage = NSImage(cgImage: generatedImage.cgImage, size: .zero)
                isGenerating = false
            } catch {
                self.error = error
                isGenerating = false
            }
        }
    }

    func reset() {
        imageGenerator.resetGenerator()
        currentImage = nil
        error = nil
        isGenerating = false
    }
}

extension View {
    func previewEnvironment() -> some View {
        let appManager = AppManager()
        return environment(appManager)
    }
}
