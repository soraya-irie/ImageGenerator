import SwiftUI

struct IngredientListView: View {
    @Environment(AppManager.self) private var appManager

    var body: some View {
        VStack(alignment: .leading) {
            Text("Added Ingredients")
                .font(.body.bold())
                .padding(.vertical, 8)
        }
    }
}

#Preview {
    IngredientListView()
        .previewEnvironment()
        .padding()
}
