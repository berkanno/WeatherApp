import SwiftUI

struct BackgroundView: View {
    
     var isNightMode: Bool
    
    var body: some View {
        LinearGradient(colors: [
            isNightMode ? .black : .blue,
            isNightMode ? .gray : Color("lightBlue")],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}
