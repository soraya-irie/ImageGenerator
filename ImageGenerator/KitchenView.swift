import SwiftUI

struct KitchenView: View {
    @Environment(AppManager.self) private var appManager

    var body: some View {
        VStack(spacing: 16) {
            Text("Refine Your Dish")
                .font(.largeTitle.weight(.semibold))
            imageArea
            Spacer()
            if let error = appManager.error {
                Text(error.localizedDescription)
                    .foregroundStyle(Color.red)
            }
        }
        .padding()
    }

    private var imageArea: some View {
        Group {
            if let image = appManager.currentImage {
                Image(nsImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } else {
                Rectangle()
                    .fill(.gray.opacity(0.2))
            }
        }
        .frame(width: ImageGenerator.imageSize, height: ImageGenerator.imageSize)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

#Preview {
    KitchenView()
        .previewEnvironment()
}
