import Foundation
import ImagePlayground

@Observable
class ImageGenerator {
    var recipe = ImageGenerator.defaultRecipe
    var style: ImagePlaygroundStyle?
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
