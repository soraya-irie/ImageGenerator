import SwiftUI

struct IngredientListView: View {
    @Environment(AppManager.self) private var appManager
    @State private var newIngredient = ""

    var body: some View {
        VStack(alignment: .leading) {
            TextField("Add ingredients (optional)", text: $newIngredient)
                .textFieldStyle(.roundedBorder)

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
