import SwiftUI
import MapKit

struct MapPlace: Identifiable {
    let id = UUID()
    let name: String
    let latitude: Double
    let longitude: Double
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

struct MapModel: View {
    @Binding var mapName: String
    @Binding var mapLat: Double
    @Binding var mapLon: Double
    let screenHeight = UIScreen.main.bounds.size.height
    @Environment(\.presentationMode) var presentation
    var places : [MapPlace] = []

    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 36.0140, longitude: 129.3258),
        span: MKCoordinateSpan(latitudeDelta: 0.075, longitudeDelta: 0.075))


    var body: some View {
        ZStack {
            Map(coordinateRegion: $region, annotationItems: [MapPlace(name: mapName, latitude: mapLat, longitude: mapLon)]) { place in
                MapMarker(coordinate: place.coordinate)
            }
            .ignoresSafeArea(.all)
            .aspectRatio(1.0, contentMode: .fill)
            
            Button(action: {
                presentation.wrappedValue.dismiss()
            }, label: {
                    Text("닫기:)").bold()
                        .frame(width: 310, height: 40, alignment: .center)
            })
            .frame(width: 310, height: 40, alignment: .center)
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.brown))
            .font(.system(size: 19))
            .foregroundColor(Color.white)
            .padding(EdgeInsets(top: screenHeight-200, leading: 0, bottom: 0, trailing: 0))
        }
    }
}


//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        MapModel()
//    }
//}
