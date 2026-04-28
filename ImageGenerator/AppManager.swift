import Foundation

@Observable
class AppManager {
    let imageGenerator = ImageGenerator()

    func generateImage() {
        Task {
            do {
                let generatedImage = try await imageGenerator.generate()
            } catch {

            }
        }
    }
}
