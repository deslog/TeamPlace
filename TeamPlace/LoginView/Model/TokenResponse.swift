import Foundation

// MARK: - TokenResponse
struct TokenResponse: Codable {
    let message: String
    let token: TokenData
}
