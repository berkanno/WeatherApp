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
                   Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10)
                }
                
                Spacer()

            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°C")
                .font(.system(size: 18, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(colors: [topColor, bottomColor],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 20, weight: .medium, design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}

struct MainWeatherView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°C")
                .font(.system(size: 70, weight: .medium))
                .foregroundStyle(.white)
        }.padding([.bottom,.top], 40)
    }
}
