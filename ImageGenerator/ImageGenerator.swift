import Foundation
import ImagePlayground

@Observable
class ImageGenerator {

}

extension ImageGenerator {
    static let recipes = ["Salad", "Sandwich", "Ice Cream"]
    static let styles: [ImagePlaygroundStyle] = [
        .animation,
        .illustration,
        .sketch
    ]

    static let imageSize: CGFloat = 256
}
