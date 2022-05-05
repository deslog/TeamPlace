import SwiftUI

struct ReviewModal: View {
    @Environment(\.presentationMode) var presentation
    
    @State var moodList = ["  👀오래있어도 눈치 주지 않아요.", "  🫥조용한 편이에요.", "  🗣팀원들과 마음껏 대화할 수 있어요.", "  🧹깔끔해요."]
    @State var moodToggle = [false, false, false, false]
    @State var interiorList = ["  🔌충전이 용이해요.", "  🪑책상 높이가 적당해요.", "  🪑책상이 넓어요.", "  🧑🏻‍💻독립된 공간이 있어요."]
    @State var interiorToggle = [false, false, false, false]
    @State var componentList = ["  📋칠판이 있어요.", "  🖥발표용 모니터가 있어요."]
    @State var componentToggle = [false, false]
    @State var etcList = ["  🚗주차하기 편해요.", "  🚰화장실이 깨끗해요."]
    @State var etcToggle = [false, false]
    
    var body: some View {
        VStack {
            VStack {
                Text("분위기")
                    .bold()
                    .font(.system(size: 20))
                    .frame(width: 100, height: 30, alignment: .leading)
                
                VStack {
                    ForEach(moodList, id:\.self) { value in
                            Button(value) {
                                moodToggle[moodList.firstIndex(of: value)!].toggle()
                            }
                            .frame(width: 280, height: 30, alignment: .leading)
                            .foregroundColor(Color.white)
                            .background(RoundedRectangle(cornerRadius: 40)
                                .fill( moodToggle[moodList.firstIndex(of: value)!] ? Color.brown : Color.gray))
                    }
                }
            }
            
            VStack {
                Text("인테리어")
                    .bold()
                    .font(.system(size: 20))
                    .frame(width: 100, height: 30, alignment: .leading)
                
                VStack {
                    ForEach(interiorList, id:\.self) { value in
                            Button(value) {
                                interiorToggle[interiorList.firstIndex(of: value)!].toggle()
                            }
                            .frame(width: 280, height: 30, alignment: .leading)
                            .foregroundColor(Color.white)
                            .background(RoundedRectangle(cornerRadius: 40)
                                .fill( interiorToggle[interiorList.firstIndex(of: value)!] ? Color.brown : Color.gray))
                    }
                }
            }
            
            VStack {
                Text("구성품")
                    .bold()
                    .font(.system(size: 20))
                    .frame(width: 100, height: 30, alignment: .leading)
                
                VStack {
                    ForEach(componentList, id:\.self) { value in
                            Button(value) {
                                componentToggle[componentList.firstIndex(of: value)!].toggle()
                            }
                            .frame(width: 280, height: 30, alignment: .leading)
                            .foregroundColor(Color.white)
                            .background(RoundedRectangle(cornerRadius: 40)
                                .fill( componentToggle[componentList.firstIndex(of: value)!] ? Color.brown : Color.gray))
                    }
                }
            }
            
            VStack {
                Text("기타")
                    .bold()
                    .font(.system(size: 20))
                    .frame(width: 100, height: 30, alignment: .leading)
                
                VStack {
                    ForEach(etcList, id:\.self) { value in
                            Button(value) {
                                etcToggle[etcList.firstIndex(of: value)!].toggle()
                            }
                            .frame(width: 280, height: 30, alignment: .leading)
                            .foregroundColor(Color.white)
                            .background(RoundedRectangle(cornerRadius: 40)
                                .fill( etcToggle[etcList.firstIndex(of: value)!] ? Color.brown : Color.gray))
                    }
                }
            }
            Divider()
            Button(action: {
                presentation.wrappedValue.dismiss()
            }, label: {
                    Text("선택완료:)").bold()
                        .frame(width: 310, height: 40, alignment: .center)
                })
                .frame(width: 310, height: 40, alignment: .center)
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.brown))
                .font(.system(size: 16))
                .foregroundColor(Color.white)
        }
    }
}

struct ReviewModal_Previews: PreviewProvider {
    static var previews: some View {
        ReviewModal()
    }
}

