import SwiftUI

struct PlanetObservationScreen: View {
    @StateObject private var vm = PlanetObservationViewModel()

    @State private var dragOffset: CGFloat = 0

    var body: some View {
        ZStack {
            SpaceBackgroundView()

            VStack(spacing: 16) {
                Text(vm.current.name)
                    .font(.largeTitle.weight(.bold))
                    .foregroundColor(.white)
                    .shadow(radius: 4)

                Image(vm.current.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 300, maxHeight: 300)
                    .onTapGesture {
                        // Action description
                    }

                Text("Appuyez sur la planète pour voir la description")
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.7))
                    .padding(.top, 8)

                Spacer()
            }
            .padding(.horizontal, 24)
            .padding(.vertical, 32)
            .offset(x: dragOffset)
            .gesture(
                DragGesture()
                    .onChanged { value in
                        dragOffset = value.translation.width
                    }
                    .onEnded { value in
                        if value.translation.width < -100 {
                            // Swipe vers la gauche → planète suivante aléatoire
                            vm.goNextRandom()
                        } else if value.translation.width > 100 {
                            // Swipe vers la droite → planète précédente aléatoire
                            vm.goPreviousRandom()
                        }
                        dragOffset = 0
                    }
            )
            .animation(.spring(), value: vm.current)
        }
    }
}

struct PlanetObservationScreen_Previews: PreviewProvider {
    static var previews: some View {
        PlanetObservationScreen()
            .previewDevice("iPhone 17 Pro")
            .preferredColorScheme(.dark)
    }
}
