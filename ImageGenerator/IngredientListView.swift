import SwiftUI

struct IngredientListView: View {
    @Environment(AppManager.self) private var appManager

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    IngredientListView()
        .previewEnvironment()
        .padding()
}
