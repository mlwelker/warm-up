

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .background(Color.gray.opacity(0.2))
            Text("Hello, world!")
                .background(Color.gray.opacity(0.2))
            HStack {
                ShapeView()
                ShapeView()
            }
        }
        .background(Color.gray.opacity(0.2))
        .padding()
    }
}

struct ShapeView: View {
    var body: some View {
        GeometryReader { geometry in
            let xOrigin = geometry.size.width / 2
            let yOrigin = geometry.size.height / 2
            
            RoundedRectangle(cornerRadius: 12)
                .aspectRatio(2/3, contentMode: .fit)
//                .stroke(.blue, style: StrokeStyle(lineWidth: 12, lineCap: .round))
                .background(Color.gray.opacity(0.2))
        }
    }
}

#Preview {
    ContentView()
}
