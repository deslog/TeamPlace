import SwiftUI

struct PlaceInfoView: View {
    @State var giveImage: String
    
    var body: some View {
        VStack{
            Text("여기는 PlaceInfoView 페이지")
            Image(giveImage)
                .resizable()
                .frame(width: 200, height: 200, alignment: .center)
        }

    }
}


//
//
//struct PlaceInfoView_Previews: PreviewProvider {
//    static var previews: some View {
//        PlaceInfoView(giveImage: .constant(String))
//    }
//}
