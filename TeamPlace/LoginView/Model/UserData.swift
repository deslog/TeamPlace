import Foundation

// 서버에서 넘어온 사용자 데이터
struct UserData : Codable, Identifiable {
    var uuid: UUID = UUID()
    var id : Int
    var name: String
    var email: String
    var avatar: String
    private enum CodingKeys: String, CodingKey{
        case id
        case name
        case email
        case avatar
    }
}
