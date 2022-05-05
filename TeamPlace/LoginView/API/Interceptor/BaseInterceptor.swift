//api를 호출할 때 중간에 무언가를 넣어주는 게 interceptor
//header에 뭔가를 넣는다거나, 토큰을 넣는다거나!

import Foundation
import Alamofire

class BaseInterceptor: RequestInterceptor {
    
    
    // adapt?
    // api를 호출할 때 중간에 처리 핸들을 해주는 역할
    // completion으로 터트려줘야한다. 그래야 api가 제대로 통과가 된다.
    func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) {
        
        var request = urlRequest
        
        // 헤더부분 넣어주기
        request.addValue("application/json; charset=UTF-8", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json; charset=UTF-8", forHTTPHeaderField: "Accept")
        
        completion(.success(request))  //터트리기
        
    }
}
