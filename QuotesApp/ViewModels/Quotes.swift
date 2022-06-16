import Foundation

class Quotes: ObservableObject {
    @Published var entities = [Quote]()
    
    init() {
        let path = Bundle.main.url(forResource: "collection", withExtension: "json")
        
        if let path = path {
            do {
                let data = try Data(contentsOf: path)
                let decoder = JSONDecoder()
                
                do {
                    let json = try decoder.decode([Quote].self, from: data)
                    for obj in json {
                        entities.append(
                            Quote(id: UUID(),
                                  sentence: obj.sentence,
                                  author: obj.author,
                                  description: obj.description,
                                  image: obj.image))
                    }
                } catch {
                    print(error)
                }
            } catch {
                print(error)
            }
        }
    }
}
