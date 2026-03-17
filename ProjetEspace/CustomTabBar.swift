import SwiftUI

struct CustomTabBar: View {
    
    @Binding var selected: Int
    
    var body: some View {
        
        HStack {
            
            tab(icon: "moon.stars.fill", text: "Observation", index: 0)
            tab(icon: "calendar", text: "Calendrier", index: 1)
            tab(icon: "lightbulb", text: "Quizz", index: 2)
            tab(icon: "person.circle", text: "Profil", index: 3)
            
        }
        .padding()
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 30))
        .padding(.horizontal)
    }
    
    func tab(icon: String, text: String, index: Int) -> some View {
        
        VStack {
            Image(systemName: icon)
            Text(text)
                .font(.caption)
        }
        .foregroundColor(selected == index ? .buttonPurple : .specialBlack)
        .frame(maxWidth: .infinity)
        .onTapGesture {
            selected = index
        }
    }
}
