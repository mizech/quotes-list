import Foundation

class Quotes: ObservableObject {
    @Published var entities = [Quote]()
    
    init() {
        entities.append(Quote(id: UUID(), sentence: "Quote 1", author: "Author 1", description: "Description 1", image: "calm"))
        entities.append(Quote(id: UUID(), sentence: "Quote 2", author: "Author 2", description: "Description 2", image: "focus"))
        entities.append(Quote(id: UUID(), sentence: "Quote 3", author: "Author 3", description: "Description 3", image: "reflect"))
    }
}
