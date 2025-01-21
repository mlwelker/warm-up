

import SwiftUI

struct ContentView: View {
    @State private var showIcon: Bool = true
    @State private var showBackground: Bool = true
    
    var body: some View {
        ZStack {
            GroovyBackground()
            VStack {
                Spacer()
                if showIcon {
                    UserImage()
                        .transition(.scale.combined(with: .opacity))
                }
                Spacer()
                Button("Show/Hide") {
                    withAnimation {
                        showIcon.toggle()
                    }
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}

struct UserImage: View {
    var body: some View {
        Image(systemName: "person.circle.fill")
            .font(.system(size: 200))
            .foregroundStyle(.white)
    }
}

struct GroovyBackground: View {
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
