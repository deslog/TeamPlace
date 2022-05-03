import MapKit

struct Place: Identifiable {
    let id = UUID()
    let name: String
    let imageURL: String
    let address: String
    let phoneNum: String
    let wish: Bool
    let latitude: Double
    let longitude: Double
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}


extension Place {
    static func all() -> [Place] {
        return [
            Place(name: "Meeting Room 1", imageURL: "meetingroom1", address: "포항 남구 123", phoneNum: "054-131-345", wish: true, latitude: 36.0134, longitude: 129.3257),
            Place(name: "Meeting Room 2", imageURL: "meetingroom2", address: "포항 북구 563", phoneNum: "054-783-1213", wish: false, latitude: 36.0156, longitude: 129.3226),
            Place(name: "Coffee Nearme", imageURL: "cafe1", address: "포항 북구 312", phoneNum: "054-2356-2313", wish: true, latitude: 36.0140, longitude: 129.3258),
            Place(name: "카페담", imageURL: "cafe2", address: "포항 북구 54", phoneNum: "054-1234-342", wish: true, latitude: 36.0111, longitude: 129.3384),
            Place(name: "Cafe 3", imageURL: "cafe3", address: "포항 북구 7867", phoneNum: "054-543-567", wish: false, latitude: 36.0109, longitude: 129.3347)
            ]
    }
}
