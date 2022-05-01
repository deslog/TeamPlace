import SwiftUI

struct MyPlaceList: View {
    @State private var gridRows = Array(repeating: GridItem(.flexible()), count: 1)
    var myPlaceList = Place.all()
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            LazyHGrid(rows: gridRows){
                ForEach(self.myPlaceList, id:\.name) { place in
                    place.wish ?
                        Button(action: {
                            //버튼 액션
                        }, label: {
                            ZStack {
                                Image(place.imageURL)
                                    .resizable()
                                    .edgesIgnoringSafeArea(.all)
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 140, height: 200)
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
                    : nil
                }
            }
            .padding(16)
        }
    }
}

struct MyPlaceList_Previews: PreviewProvider {
    static var previews: some View {
        MyPlaceList()
    }
}