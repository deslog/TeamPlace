import SwiftUI

struct PlaceInfoView: View {
    @Environment(\.presentationMode) var presentation
    @State var showReviewModal = false
    @State var infoViewImage: String
    @State var infoViewName: String
    @State var infoViewAddress: String
    @State var infoViewLat: Double
    @State var infoViewLon: Double
    
    var emptyCard: some View {
        VStack {
            Text("해당 장소에 대한 평가가\n아직 등록되어 있지 않아요.\n리뷰를 등록해주세요!👏")
                .multilineTextAlignment(.center)
                .font(.system(size: 18))
                .foregroundColor(Color.gray)
        }
    }
    
    var reviewBar: some View {
        Text("리뷰 이렇게")
            .frame(maxWidth: .infinity, maxHeight: 50)
            .background(RoundedRectangle(cornerRadius: 5)
                .fill(Color.lightlightGray))
            .padding(EdgeInsets(top: 3, leading: 16, bottom: 3, trailing: 16))
            
    }
    
    
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
            emptyCard // 리뷰 카운트가 0일때만 등장!
            reviewBar
            Spacer()
            Button(action: {
                self.showReviewModal = true
            }, label: {
                Text("👉 평가하러가기")
                    .foregroundColor(Color.black)
                    .font(.system(size: 20))
            })
            .frame(maxWidth: .infinity, maxHeight: 50)
            .background(Color.primaryColor)
            .sheet(isPresented: self.$showReviewModal) { ReviewModal() }
        }
    }
}




struct PlaceInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceInfoView(infoViewImage: "cafe2", infoViewName: "이름이뭐예요", infoViewAddress: "남구 12134", infoViewLat: 24.2, infoViewLon: 121.1)
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
