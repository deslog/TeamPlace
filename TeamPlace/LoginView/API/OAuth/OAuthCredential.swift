import Foundation
import Alamofire

struct OAuthCredential : AuthenticationCredential {
    // 이 프로토콜은? 토큰이 만료되었을때 credential이 갱신 되어야하냐? 이런 처리를 해주는...
    
    let accessToken: String
    
    let refreshToken: String
    
    let expiration: Date
    
    // Require refresh if within 5 minutes of expiration
    var requiresRefresh: Bool { Date(timeIntervalSinceNow: 60 * 5) > expiration }
    // 보통 api를 통해 받은 토큰의 만료시간?을 넣어주면 돼
    
}
