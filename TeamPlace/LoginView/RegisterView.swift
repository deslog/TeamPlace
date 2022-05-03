//
//  RegisterView.swift
//  TeamPlace
//
//  Created by LeeJiSoo on 2022/05/03.
//

import SwiftUI

struct RegisterView: View {
    @State var nameInput: String = ""
    @State var emailInput: String = ""
    @State var passwordInput: String = ""
    
    var body: some View {
        VStack {
            Form{
                Section(header: Text("이름"), content: {
                    TextField("이름", text: $nameInput)
                        .keyboardType(.default)
                })
                Section(header: Text("이메일"), content: {
                    TextField("이메일을 입력해 주세요.", text: $emailInput)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                })
                Section(header: Text("비밀번호"), content: {
                    SecureField("비밀번호", text: $passwordInput)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                    SecureField("비밀번호 확인", text: $passwordInput)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                })
                Section {
                    Button(action: {
                        print("회원가입 버튼 클릭")
                    }, label: {
                        Text("회원가입 하기")
                    })
                }
            }
        }
        .navigationTitle("회원가입 하기")
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
