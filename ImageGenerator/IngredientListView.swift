import SwiftUI

struct IngredientListView: View {
    @Environment(AppManager.self) private var appManager
    @State private var newIngredient = ""

    var body: some View {
        VStack(alignment: .leading) {
            TextField("Add ingredients (optional)", text: $newIngredient)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    appManager.add(ingredient: newIngredient)
                    newIngredient = ""
                }

            Text("Added Ingredients")
                .font(.body.bold())
                .padding(.vertical, 8)
            ForEach(appManager.imageGenerator.ingredients, id: \.description) { ingredient in
                Text(ingredient)
            }
        }
    }
}

#Preview {
    IngredientListView()
        .previewEnvironment()
        .padding()
}
