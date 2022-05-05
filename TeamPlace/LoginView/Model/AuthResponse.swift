import Foundation

// 만약 서버에서 넘어오는데이터와 swift에서 다루는 데이터의 형태가 같다면
// 이 과정은 생략해도 좋다. (지금은 언더바도 존재하는 등 다르기 때문에 거쳐주는 과정이다)
struct AuthResponse: Codable {
    var user: UserData
    var token: TokenData
    
    enum CodingKeys: String, CodingKey {
        case token
        case user
    }
}
