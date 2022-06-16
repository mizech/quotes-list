import Foundation

struct Quote: Identifiable, Decodable {
    var id: UUID?
    var sentence: String
    var author: String
    var description: String
    var image: String
}
