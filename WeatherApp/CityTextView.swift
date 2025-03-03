import SwiftUI

struct CityTextView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 20, weight: .medium, design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}
