import SwiftUI

struct Review :Hashable{
    var type: Int
    var reviewContent: String
    var checked: Bool
}

// enum ; 유사한 공통점 - 카테고리화 (요일, 생활/가전 이런식)
// 왜 enum? 고민해보기 -> struct로만 해도 충분할듯?

//enum ContentOfReview: String, CaseIterable {
//    case stayLong = "👀오래있어도 눈치 주지 않아요."
//    case quitePlace = "🫥조용한 편이에요."
//    case canSpeakLoudly = "🗣팀원들과 마음껏 대화할 수 있어요."
//    case clean = "🧹깔끔해요."
//    case chargeEasy = "🔌충전이 용이해요."
//    case deskHeight = "🪑책상 높이가 적당해요."
//    case deskSize = "🪑책상이 넓어요."
//    case independent = "🧑🏻‍💻독립된 공간이 있어요."
//    case whiteBoard = "📋칠판이 있어요."
//    case monitor = "🖥발표용 모니터가 있어요."
//    case parking = "🚗주차하기 편해요."
//    case restroomClean = "🚰화장실이 깨끗해요."
//}


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
