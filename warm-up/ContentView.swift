

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            GroovyBackground()
            VStack {
                Spacer()
                RatingView()
                Spacer()
            }
        }
    }
}

struct UserHideShowView: View {
    @State private var showIcon: Bool = true
    
    var body: some View {
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

struct RatingView: View {
    @State private var rating: Int = 5
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(.gray.secondary)
                .aspectRatio(5/3, contentMode: .fit)
                .padding(20)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.white)
                .aspectRatio(5/3, contentMode: .fit)
                .padding(40)
            
            HStack {
                Button {
                    rating -= 1
                } label: {
                    Image(systemName: "minus.circle")
                }.disabled(rating == 0)
                    .font(.largeTitle)
                
                Spacer()
                
                Text(String(format: "%02d", rating))
                    .font(Font.system(size: 80, weight: .bold))
                
                Spacer()
                
                Button {
                    rating += 1
                } label: {
                    Image(systemName: "plus.circle")
                }.disabled(rating >= 10)
                    .font(.largeTitle)
            }
            .padding(.horizontal, 80)
        }
    }
}

struct UserImage: View {
    var body: some View {
        Image(systemName: "person.circle.fill")
            .resizable()
            .scaledToFit()
            .padding(50)
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
