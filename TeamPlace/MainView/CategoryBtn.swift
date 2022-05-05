import SwiftUI

struct CategoryBtn: View {
    @State var categoryList = ["전체", "포항공대", "효자", "지곡", "유강", "이동", "상도동", "대잠동", "그 외"]
    @State var currentIdx = 0
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(categoryList, id:\.self) { value in
                    Button(value) {
                        currentIdx = categoryList.firstIndex(of: value)!
                    }
                    .frame(width: 69, height: 30, alignment: .center)
                    .foregroundColor(Color.black)
                    .background(RoundedRectangle(cornerRadius: 40)
                        .fill( currentIdx == categoryList.firstIndex(of: value)!  ? Color.primaryColor : Color.lightGray))
                }
            }
        }
        .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
    }
}

struct CategoryBtn_Previews: PreviewProvider {
    static var previews: some View {
        CategoryBtn()
    }
}
