import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView(topColor: .blue, bottomColor: Color("lightBlue"))
            VStack {
                CityTextView(cityName: "Ankara, TR")
                
                MainWeatherView(imageName: "cloud.sun.fill", temperature: 28)
                
                HStack(spacing: 20) {
                    WeatherView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 24)
                    WeatherView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 31)
                    WeatherView(dayOfWeek: "THU", imageName: "wind.snow", temperature: 12)
                    WeatherView(dayOfWeek: "FRİ", imageName: "sunset.fill", temperature: 19)
                    WeatherView(dayOfWeek: "SAT", imageName: "snow", temperature: -2)
                }
        
                Spacer()
                
                Button {
                    print("button clicked")
                } label: {
                    WeatherButtonLabelView(text: "Change Day Time")
                }
                
                Spacer()

            }
        }
    }
}

#Preview {
    ContentView()
}
