import SwiftUI

struct MainView: View {
    
    var body: some View {
        NavigationView {
            MainScroll()
                .navigationTitle("TeamPlace 👀")
                .toolbar(content: {
                    ToolbarItem {
                        NavigationLink(destination: AddPlaceView()) {
                            Image(systemName: "plus.circle")
                                .padding(.vertical, 16)
                                .font(.system(size: 25))
                                .foregroundColor(Color.primaryColor)
                        }
                    }
                })
        }
    }
}




struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
