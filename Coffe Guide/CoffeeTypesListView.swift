import SwiftUI

struct CoffeeTypesListView: View {
    @ObservedObject var viewModel = CoffeeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(viewModel.coffeeTypes) { coffeeType in
                        NavigationLink(destination: CoffeeListView(coffeeType: coffeeType)) {
                            ZStack{
                                VStack{
                                    Spacer()
                                    Text(coffeeType.name)
                                        .frame(width: 210, height: 50)
                                        .bold()
                                        .font(.title2)
                                        .background(Color.black.opacity(0.3))
                                        .cornerRadius(10)
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(.white)
                                        .padding()
                                }
                                .frame(width: 250, height: 230)
                                .padding()
                                .background(Color.brown.opacity(0.8))
                                .cornerRadius(15)
                                .shadow(radius: 5)
                                .padding(.top, 30)
                                
                                Image("gave")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 250, height: 300)
                                    .foregroundColor(.white)
                                    .padding()
                                    .offset(y: -70)
                                
                            }
                           
                        }
                    }
                }
                .padding(.horizontal)
            }.padding(.bottom,40)
            .navigationTitle(" ")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("☕️  Coffee Guide  ☕️")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.brown)
            }
        }
    }
}
    
    struct CoffeeTypesListView_Previews: PreviewProvider {
        static var previews: some View {
            CoffeeTypesListView()
                .preferredColorScheme(.dark)
        }
    }
}
