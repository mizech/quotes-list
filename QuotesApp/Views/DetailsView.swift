import SwiftUI

struct DetailsView: View {
    var quote: Quote
    
    var body: some View {
        VStack(spacing: 20) {
            Text(quote.author)
                .font(.title)
            Text(quote.description)
        }.padding()
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(quote: Quote(id: UUID(),
                    sentence: "Sentence 1",
                    author: "Author 1",
                    description: "Description 1",
                    image: "calm"))
    }
}
