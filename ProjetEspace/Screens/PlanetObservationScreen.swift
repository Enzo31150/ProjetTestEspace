import SwiftUI

struct PlanetObservationScreen: View {
//    @StateObject private var vm = PlanetObservationViewModel()
    @State var currentIndex : Int = 0
    
    var body: some View {
        NavigationStack {
            ZStack {
                SpaceBackgroundView()
                VStack {
                    TabView(selection: $currentIndex) {
                        ForEach(0..<planets.count) { index in
                            let planet = planets[index]
                            NavigationLink {
                                DetailView(planet: planet)
                            } label : {
                                
                                VStack(spacing: 16) {
                                    Text(planet.name)
                                        .font(Font.custom("ShareTechMono-Regular", size: 40))
                                        .foregroundColor(.white)
                                        .shadow(radius: 4)
                                    
                                    Image(planet.imageName)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(maxWidth: 300, maxHeight: 300)
                                    
                                    Text("Appuyez sur la planète pour voir la description")
                                        .foregroundColor(.white.opacity(0.7))
                                        .padding(.top, 8)
                                        .font(Font.custom("ShareTechMono-Regular", size: 13))
                                    
                                    
                                    Spacer()
                                }
                                .padding(.horizontal, 24)
                                .padding(.vertical, 32)
                                .tag(index)
                            }
                        }
                    } .tabViewStyle(.page(indexDisplayMode: .always))
                        .frame(height: 440)
                    
                    Spacer()
                }
            }
        }
    }
}
#Preview {
    PlanetObservationScreen()
}
