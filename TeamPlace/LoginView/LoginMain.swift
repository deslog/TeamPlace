import SwiftUI

struct LoginMain: View {
    var body: some View {
        NavigationView{
            ZStack {
                Color.primaryColor
                    .ignoresSafeArea()
                VStack(spacing: 0){
    //                Image("TeamPlaceLogo")
    //                    .resizable()
    //                    .frame(width: 300, height: 300, alignment: .center)
                    Text("🗣TeamPlace🍎")
                        .bold()
                        .font(.system(size: 34))
                    Spacer()
                    NavigationLink(destination: LoginView(), label: {
                        HStack{
                            Spacer()
                            Text("로그인 하러가기")
                            Spacer()
                        }
                        .padding()
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                    }).padding([.bottom], 10)
                    
                    NavigationLink(destination: ProfileView(), label: {
                        HStack{
                            Spacer()
                            Text("내 프로필 보러가기")
                            Spacer()
                        }
                        .padding()
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                    }).padding([.bottom], 10)
//                        .clipShape(RoundedRectangle(cornerRadius: 6))

                    Spacer().frame(height: 40)
                NavigationLink(destination: RegisterView(), label: {
                    HStack{
                        Spacer()
                        Text("회원가입 하러가기")
                        Spacer()
                    }
                    .padding()
//                        .background(Color.lightGray)
                    .foregroundColor(.blue)
                })
                    
                    
    //                NavigationLink(destination: UserListView(), label: {
    //                    HStack{
    //                        Spacer()
    //                        Text("사용자 목록 보러가기")
    //                        Spacer()
    //                    }
    //                    .padding()
    //                    .background(Color.green)
    //                    .foregroundColor(.white)
    //                    .clipShape(RoundedRectangle(cornerRadius: 6))
    //                })
                    Spacer()
                    Spacer()
                }//VStack
                .padding()
            }
        }// NavigationView
        
    }
}

struct LoginMain_Previews: PreviewProvider {
    static var previews: some View {
        LoginMain()
    }
}
