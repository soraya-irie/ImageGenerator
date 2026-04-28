import SwiftUI

struct StartView: View {
    @State var imageGenerator = ImageGenerator()

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Create a Unique Dish")
                .font(.largeTitle.weight(.semibold))
                .frame(maxWidth: .infinity, alignment: .center)

            Label("Choose a dish", systemImage: "fork.knife")
                .padding(.top, 8)
            Picker("Recipes", selection: $imageGenerator.recipe) {

            }

            Label("Choose an image style", systemImage: "paintpalette.fill")
                .padding(.top, 8)

            Spacer()
        }
        .pickerStyle(.segmented)
        .labelsHidden()
        .frame(width: ImageGenerator.imageSize)
        .padding()
    }
}

#Preview {
    StartView()
}
