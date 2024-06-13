import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("☕️  CoffeeGuide  ☕️")
                    .font(.largeTitle)
                    .fontWidth(.expanded)
                    .fontWeight(.light)
                    .bold()
                    .foregroundColor(.brown)
                    .padding(.top, 30)
                
                Spacer()
                
                HStack(spacing: 20) {
                    NavigationLink(destination: HotDrinksView()) {
                        MenuItemView(imageName: "cup.and.saucer.fill", title: "HOT COFFEES")
                    }
                    NavigationLink(destination: IcedDrinksView()) {
                        MenuItemView(imageName: "snow", title: "ICED COFFEES")
                    }
                }
                .padding(.top, 20)
                
                HStack(spacing: 20) {
                    NavigationLink(destination: FrozenDrinksView()) {
                        MenuItemView(imageName: "eraser", title: "SWEET COFFEES")
                    }
                    NavigationLink(destination: HotDrinksView()) {
                        MenuItemView(imageName: "star.circle.fill", title: "SUALP SPECIAL")
                    }
                }
                .padding(.top, 20)
                
                Spacer()
                
                HStack(spacing: 20) {
                    NavigationLink(destination: HotDrinksView()) {
                        BottomMenuItemView(icon: "heart.fill", label: "Favorites")
                    }
                    NavigationLink(destination: ProfileView()) {
                        BottomMenuItemView(icon: "person.fill", label: "Profile")
                    }
                    NavigationLink(destination: SettingsView()) {
                        BottomMenuItemView(icon: "gearshape.fill", label: "Settings")
                    }
                }
                .padding(.bottom, 20)
            }
        }
    }
}

struct MenuItemView: View {
    let imageName: String
    let title: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
                .foregroundColor(.brown)
                .padding()
                .background(Color.white)
                .clipShape(Circle())
                .shadow(radius: 10)
            
            Text(title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.top, 10)
        }
        .frame(width: 168, height: 200)
        .background(Color.brown)
        .cornerRadius(20)
        .shadow(radius: 10)
    }
}

struct BottomMenuItemView: View {
    let icon: String
    let label: String
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
            Text(label)
                .font(.subheadline)
                .bold()
                .foregroundColor(.white)
        }
        .frame(width: 70, height: 50)
        .padding()
        .background(Color.brown)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}

struct HotDrinksView: View {
    var body: some View {
        Text("Hot Drinks")
    }
}

struct IcedDrinksView: View {
    var body: some View {
        Text("Iced Drinks")
    }
}

struct FrozenDrinksView: View {
    var body: some View {
        Text("Frozen Drinks")
    }
}

struct FoodView: View {
    var body: some View {
        Text("Food")
    }
}

