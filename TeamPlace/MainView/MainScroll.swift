import SwiftUI

struct MainScroll: View {
    
    var body: some View {
        ScrollView {
            VStack {
                Text("My Place📍")
                    .bold()
                    .font(.system(size: 26))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(EdgeInsets(top: 16, leading: 16, bottom: 5, trailing: 16))
                MyPlaceList()
                    .frame(height: 200)
                Text("More Place🔎")
                    .bold()
                    .font(.system(size: 26))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(EdgeInsets(top: 16, leading: 16, bottom: 5, trailing: 16))
                CategoryBtn()
                PlaceList()
            }
        }
    }
}

struct MainScrollView_Previews: PreviewProvider {
    static var previews: some View {
        MainScroll()
    }
}
