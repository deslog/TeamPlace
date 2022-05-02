import SwiftUI
import MapKit

struct mapPlace: Identifiable {
    let id = UUID()
    let name: String
    let latitude: Double
    let longitude: Double
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

struct ContentView: View {

    let places = [
        mapPlace(name: "cafe", latitude: 36.0140, longitude: 129.3258)
    ]

    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 36.0140, longitude: 129.3258),
        span: MKCoordinateSpan(latitudeDelta: 0.075, longitudeDelta: 0.075))


    var body: some View {
        Map(coordinateRegion: $region, annotationItems: places) { place in
            MapMarker(coordinate: place.coordinate)
        }
        .ignoresSafeArea(.all)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
