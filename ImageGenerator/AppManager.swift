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

    func add(ingredient: String) {
        imageGenerator.ingredients.append(ingredient)
        generateImage()
    }

    var showKitchen: Bool {
        currentImage != nil || isGenerating
    }
}

extension View {
    func previewEnvironment(generateImage: Bool = true) -> some View {
        let appManager = AppManager()
        return environment(appManager)
            .onAppear {
                if generateImage {
                    appManager.imageGenerator.style = .animation
                    appManager.generateImage()
                }
            }
    }
}
