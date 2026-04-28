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
            Rectangle()
                .fill(.gray.opacity(0.2))
        }
    }
}

#Preview {
    KitchenView()
        .previewEnvironment()
}
