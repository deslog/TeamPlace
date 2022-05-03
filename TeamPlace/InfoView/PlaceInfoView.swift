import SwiftUI

struct PlaceInfoView: View {
    @State var infoViewImage: String
    @State var infoViewName: String
    @State var infoViewAddress: String
    @State var infoViewLat: Double
    @State var infoViewLon: Double
    
    var infoCard: some View {
        VStack (spacing: -140) {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 310, height: 170, alignment: .center)
                    .foregroundColor(Color.white)
                    .shadow(color: Color.gray.opacity(0.2), radius: 1, x: 3, y: 3)
                    .shadow(color: Color.gray.opacity(0.2), radius: 1, x: -3, y: -3)
                
            VStack (spacing: 10){
                    Text(infoViewName)
                        .bold()
                        .font(.system(size: 26))
                    .foregroundColor(Color.black)
                    
                    Text(infoViewAddress)
                        .font(.system(size: 18))
                        .foregroundColor(Color.black)
                    
                InfoCardBtn(cardName: $infoViewName, cardAddress: $infoViewAddress, cardLat: $infoViewLat, cardLon: $infoViewLon)
                }
            }
    }
    
    
    var body: some View {
        VStack {
            VStack(spacing: -190){
                Image(infoViewImage)
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: 290, alignment: .topLeading)
                    .ignoresSafeArea()
                infoCard
            }
            Spacer()
        }
    }
}




//struct PlaceInfoView_Previews: PreviewProvider {
//    static var previews: some View {
//        PlaceInfoView(infoViewImage: "cafe2", infoViewName: "이름이뭐예요", infoViewAddress: "남구 12134")
//            .previewInterfaceOrientation(.portraitUpsideDown)
//    }
//}