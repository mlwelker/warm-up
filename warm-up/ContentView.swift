

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
            ShapeView()
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
            
            Path { path in
                path.move(to: CGPoint(x: xOrigin - 50, y: yOrigin - 50))
                path.addLine(to: CGPoint(x: xOrigin + 50, y: yOrigin + 50))
                path.move(to: CGPoint(x: xOrigin - 50, y: yOrigin + 50))
                path.addLine(to: CGPoint(x: xOrigin + 50, y: yOrigin - 50))
            }
            .stroke(.blue, style: StrokeStyle(lineWidth: 12, lineCap: .round))
            .background(Color.gray.opacity(0.2))
        }
    }
}

#Preview {
    ContentView()
}
