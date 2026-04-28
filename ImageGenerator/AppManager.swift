import Foundation

@Observable
class AppManager {
    let imageGenerator = ImageGenerator()

    private(set) var error: Error?
    private(set) var isGenerating = false

    func generateImage() {
        error = nil
        isGenerating = true

        Task {
            do {
                let generatedImage = try await imageGenerator.generate()
                isGenerating = false
            } catch {
                self.error = error
                isGenerating = false
            }
        }
    }
}
