import Foundation

@Observable
class AppManager {
    let imageGenerator = ImageGenerator()

    private(set) var error: Error?

    func generateImage() {
        error = nil

        Task {
            do {
                let generatedImage = try await imageGenerator.generate()
            } catch {
                self.error = error
            }
        }
    }
}
