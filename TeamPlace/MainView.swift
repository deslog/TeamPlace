import SwiftUI

struct MainView: View {
    
    var body: some View {
        NavigationView {
            MainScroll()
            .navigationBarItems(leading: Text("🐻팀플레이스")
                .padding()
                .font(.system(size: 22)
                    .weight(.bold)),
            trailing: NavigationLink(destination: AddPlaceView()) {
                Image(systemName: "plus.circle")
                    .padding(.all, 16)
                    .font(.system(size: 20))
                    .foregroundColor(Color.green)
            })
        }
    }
}




struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
