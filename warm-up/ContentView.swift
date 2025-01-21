

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            CardView()
        }
        .padding()
    }
}

struct CardView: View {
    var body: some View {
        GeometryReader { geometry in
            let xStart = (geometry.size.width / 2) - 50
            let xEnd = (geometry.size.width / 2) + 50
            
            ZStack {
                Path { path in
                    path.move(to: CGPoint(x: xStart, y: 50))
                    path.addLine(to: CGPoint(x: xEnd, y: 150))
                }
                .stroke(.blue, style: StrokeStyle(lineWidth: 12, lineCap: .round))
                
                Path { path in
                    path.move(to: CGPoint(x: xEnd, y: 50))
                    path.addLine(to: CGPoint(x: xStart, y: 150))
                }
                .stroke(.blue, style: StrokeStyle(lineWidth: 12, lineCap: .round))
            }
            .background(Color.gray.opacity(0.2))
        }
    }
}

#Preview {
    ContentView()
}
