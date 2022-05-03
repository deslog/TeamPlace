import SwiftUI

//서버에서 넘어온 사용자 데이터
struct UserData: Codable, Identifiable {
    var uuid: UUID = UUID() //userdata는 서버에서 받아서 들어오기 대문에 codable 이라고 써줘야한다.
    var id: Int
    var name: String
    var email: String
    var avatar: String
    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case email
        case avatar
        
    }
}
