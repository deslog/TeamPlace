import SwiftUI

@main
struct TeamPlaceApp: App {
    var body: some Scene {
        WindowGroup {
            //프로젝트가 시작될 때, environmentobject로 밖에서 userVM를 받아버린다!
//            LoginMain().environmentObject(UserVM())
            MainView()
        }
    }
}
