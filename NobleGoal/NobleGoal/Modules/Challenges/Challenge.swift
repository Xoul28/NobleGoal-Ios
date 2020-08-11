import Foundation

struct Challenge: Codable {
    var id: Int
    var goalTitle: String
    var numberCompleted: Int
    var finishDate: Date
    var startDate: Date
    
    private enum CodingKeys: String, CodingKey {
        case goalTitle = "goal_title"
        case numberCompleted = "number_completed"
        case finishDate = "finish_date"
        case startDate = "start_date"
        case id
    }
}
