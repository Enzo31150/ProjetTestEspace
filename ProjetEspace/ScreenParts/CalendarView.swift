import SwiftUI

struct CalendarView: View {
    
    @State var selectedDate: Date = Date()
    
    var body: some View {
        
        VStack {
            DatePicker("",
                selection: $selectedDate,
                displayedComponents: [.date]
            )
            .datePickerStyle(.graphical)
            .tint(.buttonPurple)
            .foregroundColor(.white)  // texte en blanc

            EventDescriptionView(date: selectedDate)
                .foregroundColor(.white) // texte en blanc aussi
        }
        .padding()
        .background(.ultraThinMaterial)
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.black.opacity(0.1))
        )
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .padding(.horizontal)
    }
}

#Preview {
    CalendarView()
}
