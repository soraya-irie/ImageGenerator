import Foundation
import ImagePlayground

@Observable
class ImageGenerator {
    var recipe = ImageGenerator.defaultRecipe
    var style: ImagePlaygroundStyle?

    var concepts: [ImagePlaygroundConcept] {
        [ImagePlaygroundConcept.text(recipe)]
    }

    func generate() async throws -> ImageCreator.CreatedImage {
        guard let style else { return }

        let imageCreator = try await ImageCreator()
        let images = imageCreator.images(for: concepts, style: style, limit: 1)
        for try await image in images {
            return image
        }
    }
}

extension ImageGenerator {
    static let recipes = ["Salad", "Sandwich", "Ice Cream"]
    static let styles: [ImagePlaygroundStyle] = [
        .animation,
        .illustration,
        .sketch
    ]

    static let imageSize: CGFloat = 256
    private static let defaultRecipe = recipes[0]
}
