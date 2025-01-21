

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(content: {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .background(Constants.bgColor)
            Text("Hello, world!")
                .background(Constants.bgColor)
            HStack {
                ShapeView()
                ShapeView()
            }
        })
        .background(Constants.bgColor)
        .padding()
    }
}

struct Constants {
    static let aspectRatio: CGFloat = 2/3
    static let bgColor: Color = .gray.opacity(0.2)
}

struct ShapeView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .stroke(.blue.secondary, style: StrokeStyle(lineWidth: 6))
            .aspectRatio(Constants.aspectRatio, contentMode: .fit)
            .background(Constants.bgColor)
            .padding()
    }
}

#Preview {
    ContentView()
}
