import SwiftUI

struct KitchenView: View {
    @Environment(AppManager.self) private var appManager

    var body: some View {
        VStack(spacing: 16) {
            Text("Refine Your Dish")
                .font(.largeTitle.weight(.semibold))
        }
        .padding()
    }
}

#Preview {
    KitchenView()
        .previewEnvironment()
}
