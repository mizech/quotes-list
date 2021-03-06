import SwiftUI

struct ContentView: View {
    @ObservedObject var quotes = Quotes()
   
    var body: some View {
        NavigationView {
            List(quotes.entities) { quote in
                NavigationLink(destination: DetailsView(quote: quote)) {
                    ZStack {
                        Image(quote.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(5)
                        VStack(alignment: .leading, spacing: 20) {
                            Text(quote.sentence)
                                .font(.largeTitle)
                            Text(quote.author)
                        }
                        .foregroundColor(.white)
                        .padding()
                    }
                }
            }.navigationTitle("Quotes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
