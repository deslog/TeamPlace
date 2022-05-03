import Foundation
import Alamofire

// api 호출 클라이언트
final class ApiClient { //상속을 다른쪽에서 받지 않도록 final class
    static let shared = ApiClient()
    
    // base url 마다 클라이언트를 만들어주는게 좋다고 하는디?
    static let BASE_URL = "https://dev-jeongdaeri-oauth.tk/api"
    
    
    let interceptors = Interceptor(interceptors: [
        BaseInterceptor()  // application/json
    ])
    
    // apilogger 를 통해 찍히는 이벤트 모니터를 보는 것
    let monitors = [ApiLogger()] as [EventMonitor]
    
    
    //session
    var session: Session
    // sesseion을 apiclient 가 생성이 될 때, session에 대한 값을 넣어주는 것
    init() {
        print("ApiClient - init() called")
        session = Session(interceptor: interceptors, eventMonitors: monitors)
    }
    
}
