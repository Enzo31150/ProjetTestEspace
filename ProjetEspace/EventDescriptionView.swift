import SwiftUI

struct EventDescriptionView: View {
    
    let date: Date
    
    var event: SpaceEvent? {
        spaceEvents.first {
            Calendar.current.isDate($0.date, inSameDayAs: date)
        }
    }
    
    var body: some View{
        
        VStack {
            
            if let event {
                
                Text(event.title)
                    .font(.headline)
                    .foregroundColor(.white)
                
                Text(event.description)
                    .foregroundColor(.white.opacity(0.9))
            }
            else {
               
                Text("Aucun évènement spatial important ce jour.")
                    .foregroundColor(.white.opacity(0.7))
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.black.opacity(0.45))
                )
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.white.opacity(0.08))
        )
        
    }
}


