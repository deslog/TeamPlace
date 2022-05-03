import Foundation
import SwiftUI

// 사용자 목록 뷰
struct UserListView : View {
//    @EnvironmentObject var userVM : UserVM
    @State var users : [UserData] = []  //UserData 배열을 가짐
    
    var body: some View {
        List(users){ aUser in //aUser (유저 한명씩 가져와주는 거)
            NavigationLink(destination: OtherUserProfileView(userData: aUser), label: { //데이터에 있는 aUser 하나씩을 리스트로 foreach
                HStack{
                    AsyncImage(url: URL(string: aUser.avatar)!) { phase in
                        switch phase {
                        case .empty:
                            ProgressView()
                                .frame(width: 120, height: 120, alignment: .center)
                        case .success(let image):
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 120, height: 120, alignment: .center)
                        case .failure:
                            Image(systemName: "person.fill.questionmark")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding()
                                .frame(width: 120, height: 120, alignment: .center)
                        @unknown default:
                            EmptyView()
                                .frame(width: 120, height: 120, alignment: .center)
                        }
                    }
                    Spacer()
                    VStack(alignment:.leading){
                        Text(aUser.name).font(.title3)
                        Text(aUser.email).font(.callout)
                    }
                    Spacer()
                }
            })
        }
        .navigationTitle("사용자 목록")
//        .onAppear(perform: { userVM.fetchUsers() })
//        .onReceive(userVM.$users, perform: { self.users = $0 })
        
    }
}
