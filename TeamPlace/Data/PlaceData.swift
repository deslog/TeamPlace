struct Place {
    let name: String
    let imageURL: String
    let address: String
    let phoneNum: String
    let wish: Bool
}

extension Place {
    static func all() -> [Place] {
        return [
            Place(name: "Meeting Room 1", imageURL: "meetingroom1", address: "포항 남구 123", phoneNum: "054-131-345", wish: true),
            Place(name: "Meeting Room 2", imageURL: "meetingroom2", address: "포항 북구 563", phoneNum: "054-783-1213", wish: false),
            Place(name: "Cafe 1", imageURL: "cafe1", address: "포항 북구 312", phoneNum: "054-2356-2313", wish: true),
            Place(name: "Cafe 2", imageURL: "cafe2", address: "포항 북구 54", phoneNum: "054-1234-342", wish: true),
            Place(name: "Cafe 3", imageURL: "cafe3", address: "포항 북구 7867", phoneNum: "054-543-567", wish: false)
            ]
    }
}
