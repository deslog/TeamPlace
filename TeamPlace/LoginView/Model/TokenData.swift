import Foundation

// MARK: TokenData
struct TokenData: Codable {
    let tokenType: String = ""
    let expiresIn: Int = 0
    let accessToken, refreshToken: String
    
    // "token_type" 을 swift 내부에서는 tokenType 이라고 부르겠다고 하는 enum (코딩키)
    enum CodingKeys: String, CodingKey {
        case tokenType = "token_type"
        case expiresIn = "exprise+in"
        case accessToken = "access_token"
        case refreshToken = "refresh_token"
    }
}
