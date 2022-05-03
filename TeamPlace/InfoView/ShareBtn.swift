import SwiftUI

struct ShareBtn: View {
    @State private var isSharePresented: Bool = false
    
    var body: some View {
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
        guard let urlShare = URL(string: "http://naver.com") else { return }
        let activityVC = UIActivityViewController(activityItems: [urlShare], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(activityVC, animated: true, completion: nil)
    }
    
}


struct ShareBtn_Previews: PreviewProvider {
    static var previews: some View {
        ShareBtn()
    }
}
