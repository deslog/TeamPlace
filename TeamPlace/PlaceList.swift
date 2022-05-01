import SwiftUI

struct PlaceList: View {
    @State private var gridCols = Array(repeating: GridItem(.flexible()), count: 1)
    var myPlaceList = Place.all()
    
    var body: some View {
        LazyVGrid(columns: gridCols) {
            ForEach(self.myPlaceList, id:\.name) { place in
                Button(action: {
                    //버튼 액션
                }, label: {
                    ZStack {
                        Image(place.imageURL)
                            .resizable()
                            .edgesIgnoringSafeArea(.all)
                            .aspectRatio(contentMode: .fill)
                            .frame(width: .infinity, height: 200)
                            .overlay( Color.black.opacity(0.4))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        Text(place.name)
                            .bold()
                            .foregroundColor(Color.white)
                            .font(.system(size: 20))
                            .multilineTextAlignment(.leading)
                            .frame(width: 140)
                    }
                })
            }
        }
        .padding(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 16))
    }
}

struct PlaceList_Previews: PreviewProvider {
    static var previews: some View {
        PlaceList()
    }
}
