import SwiftUI

struct LocationBtn: View {
    @State private var showMapModal = false

    var body: some View {
        Button(action: {
            self.showMapModal = true
        }, label: {
            Text("위치보기")
                .font(.system(size: 19))
                .foregroundColor(Color.black)
            Image(systemName: "location.circle")
                .font(.system(size: 19))
                .foregroundColor(Color.black)
        })
        .sheet(isPresented: $showMapModal, content: {
            MapModel()
        })
        
    }
}



//
//struct LocationBtn_Previews: PreviewProvider {
//    static var previews: some View {
//        LocationBtn()
//    }
//}
