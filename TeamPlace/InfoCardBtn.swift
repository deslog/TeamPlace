import SwiftUI

struct InfoCardBtn: View {
    @State var menuList = ["위치보기", "찜", "공유하기"]
    @State var symbol = ["square.and.arrow.up", "찜", "공유하기"]
    
    @State var currentIdx = 0
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(menuList, id:\.self) { value in
                    Button(value) {
                        currentIdx = menuList.firstIndex(of: value)!
                    }
                    .frame(width: 69, height: 30, alignment: .center)
                    .foregroundColor(Color.white)
                    .background(RoundedRectangle(cornerRadius: 40)
                        .fill( currentIdx == menuList.firstIndex(of: value)!  ? Color.brown : Color.gray))
                }
            }
        }
        .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
    }
}

struct InfoCardBtn_Previews: PreviewProvider {
    static var previews: some View {
        InfoCardBtn()
    }
}
