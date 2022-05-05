import SwiftUI

struct Review :Hashable{
    var type: Int
    var reviewContent: String
    var checked: Bool
}

//1: mood, 2: interior, 3: component, 4: etc
extension Review {
    static func all() -> [Review] {
        return [
            Review(type: 1, reviewContent: " 👀오래있어도 눈치 주지 않아요.", checked: false),
            Review(type: 1, reviewContent: " 🫥조용한 편이에요.", checked: false),
            Review(type: 1, reviewContent: " 🗣팀원들과 마음껏 대화할 수 있어요.", checked: false),
            Review(type: 1, reviewContent: " 🧹깔끔해요.", checked: false),
            Review(type: 2, reviewContent: " 🔌충전이 용이해요.", checked: false),
            Review(type: 2, reviewContent: " 🪑책상 높이가 적당해요.", checked: false),
            Review(type: 2, reviewContent: " 🪑책상이 넓어요.", checked: false),
            Review(type: 2, reviewContent: " 🧑🏻‍💻독립된 공간이 있어요.", checked: false),
            Review(type: 3, reviewContent: " 📋칠판이 있어요.", checked: false),
            Review(type: 3, reviewContent: " 🖥발표용 모니터가 있어요.", checked: false),
            Review(type: 4, reviewContent: " 🚗주차하기 편해요.", checked: false),
            Review(type: 4, reviewContent: " 🚰화장실이 깨끗해요.", checked: false)
            ]
    }
}
