import SwiftUI

struct StartView: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("Create a Unique Dish")
                .font(.largeTitle.weight(.semibold))
        }
        .padding()
    }
}

#Preview {
    StartView()
}
