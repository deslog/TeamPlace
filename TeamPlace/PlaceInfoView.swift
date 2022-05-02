import SwiftUI

struct PlaceInfoView: View {
    @State var infoViewImage: String
    @State var infoViewName: String
    @State var infoViewAddress: String
    
    var infoRectangle: some View {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 300, height: 170, alignment: .center)
                    .foregroundColor(Color.white)
                    .shadow(color: Color.gray.opacity(0.2), radius: 1, x: 3, y: 3)
                    .shadow(color: Color.gray.opacity(0.2), radius: 1, x: -3, y: -3)
                Text(infoViewName)
                    .bold()
                    .foregroundColor(Color.brown)
            }
    }
    
    
    var body: some View {
        VStack {
            VStack(spacing: -190){
                Image(infoViewImage)
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: 290, alignment: .topLeading)
                    .ignoresSafeArea()
                infoRectangle
            }
            Spacer()
        }
    }
}




struct PlaceInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceInfoView(infoViewImage: "cafe2", infoViewName: "이름이뭐예요", infoViewAddress: "남구 12134")
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
