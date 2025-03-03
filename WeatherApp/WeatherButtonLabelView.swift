import SwiftUI

struct WeatherButtonLabelView: View {
    var text: String

    var body: some View {
        Text(text)
            .frame(width: 280, height: 50)
            .background(Color.white)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}
