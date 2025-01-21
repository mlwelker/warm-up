

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            MeshGradient(
                width: 5,
                height: 3,
                points: [
                    [0.0, 0.0], [0.25, 0.0], [0.5, 0.0], [0.75, 0.0], [1.0, 0.0],
                    [0.0, 0.5], [0.25, 0.25], [0.5, 0.5], [0.75, 0.75], [1.0, 0.75],
                    [0.0, 1.0], [0.25, 1.0], [0.5, 1.0], [0.75, 1.0], [1.0, 1.0]
                ],
                colors: [
                    .blue, .blue, .cyan, .mint, .green,
                    .yellow, .orange, .orange, .orange, .yellow,
                    .indigo, .purple, .pink, .pink, .red
                ]
            )
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
