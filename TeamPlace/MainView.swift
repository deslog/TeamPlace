import SwiftUI

struct MainView: View {
    
    var body: some View {
        ScrollView {
            VStack {
                Text("My Place")
                    .bold()
                    .font(.system(size: 25))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(EdgeInsets(top: 16, leading: 16, bottom: 5, trailing: 16))
                MyPlaceList()
                    .frame(height: 200)
                Text("Team Place")
                    .bold()
                    .font(.system(size: 25))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(EdgeInsets(top: 16, leading: 16, bottom: 5, trailing: 16))
                PlaceList()
            }
        }
    }
    
    struct MainView_Previews: PreviewProvider {
        static var previews: some View {
            MainView()
        }
    }
}
