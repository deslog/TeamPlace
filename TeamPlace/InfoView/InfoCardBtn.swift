import SwiftUI

struct InfoCardBtn: View {
    @Binding var cardName: String
    @Binding var cardAddress: String
    @Binding var cardLat: Double
    @Binding var cardLon: Double
    @State private var showMapModal = false
    @State var wish = false
    
    func encodeURL(_ url: String) -> URL? {
        let encodedStr = url.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        return URL(string: encodedStr)!
    }
    
    var btnLocation: some View {
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
            MapModel(mapName: $cardName, mapLat: $cardLat, mapLon: $cardLon)
        })
    }

    var btnHeart: some View {
        Button(action: {
            // 눌리면 위시 아니면 위시아님 -> Db 생성/삭제로 액션
            wish.toggle()
        }, label: {
            HStack {
                Text("찜")
                    .font(.system(size: 19))
                    .foregroundColor(Color.black)
                Image(systemName: wish ? "heart.fill" : "heart")
                    .font(.system(size: 19))
                    .foregroundColor(wish ? Color.pink : Color.black)
            }
        })
    }
    
    var btnShare: some View {
        Button(action: {
            share()
        }) {
            HStack {
                Text("공유하기")
                    .font(.system(size: 19))
                    .foregroundColor(Color.black)
                Image(systemName: "square.and.arrow.up")
                    .font(.system(size: 19))
                    .foregroundColor(Color.black)
            }
        }
    }
    
    func share() {
        guard let urlShare = URL(string: "http://map.naver.com/v5/search/\(encodeURL(cardName)!)") else { return }
        let activityVC = UIActivityViewController(activityItems: [urlShare], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(activityVC, animated: true, completion: nil)
    }
    
    // main
    var body: some View {
        HStack {
            btnLocation
                .padding(.all, 5)
            btnHeart
                .padding(.all, 5)
            btnShare
                .padding(.all, 5)
        }
        .frame(width: 300)
    }
}


//
//struct InfoCardBtn_Previews: PreviewProvider {
//    static var previews: some View {
//        InfoCardBtn()
//    }
//}
