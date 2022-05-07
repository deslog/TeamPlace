import SwiftUI

struct ReviewModal: View {
    @Environment(\.presentationMode) var presentation
    var reviewContent = Review.all()
    
    var body: some View {
        ScrollView {
            VStack (spacing: 5){
                VStack {
                    Text("분위기")
                        .bold()
                        .font(.system(size: 20))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    VStack {
                        ForEach(reviewContent, id:\.self) { value in
                            value.type == 1 ?
                            Button(value.reviewContent) {
                            }
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity, idealHeight: 50)
                            .background(RoundedRectangle(cornerRadius: 5)
                                .fill(Color.lightlightGray))
                            : nil
                        }
                    }
                }
                VStack {
                    Text("인테리어")
                        .bold()
                        .font(.system(size: 20))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    VStack {
                        ForEach(reviewContent, id:\.self) { value in
                            value.type == 2 ?
                            Button(value.reviewContent) {
                            }
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity, idealHeight: 50)
                            .background(RoundedRectangle(cornerRadius: 5)
                                .fill(Color.lightlightGray))
                            : nil
                        }
                    }
                }
                VStack {
                    Text("구성품")
                        .bold()
                        .font(.system(size: 20))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    VStack {
                        ForEach(reviewContent, id:\.self) { value in
                            value.type == 3 ?
                            Button(value.reviewContent) {
                            }
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity, idealHeight: 50)
                            .background(RoundedRectangle(cornerRadius: 5)
                                .fill(Color.lightlightGray))
                            : nil
                        }
                    }
                }
                VStack {
                    Text("기타")
                        .bold()
                        .font(.system(size: 20))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    VStack {
                        ForEach(reviewContent, id:\.self) { value in
                            value.type == 4 ?
                            Button(value.reviewContent) {
                            }
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity, idealHeight: 50)
                            .background(RoundedRectangle(cornerRadius: 5)
                                .fill(Color.lightlightGray))
                            : nil
                        }
                    }
                }
            }
            .padding(.all, 16)
        }
        Button(action: {
            presentation.wrappedValue.dismiss()
        }, label: {
            Text("선택완료:)")
                .foregroundColor(Color.black)
                .font(.system(size: 20))
        })
        .frame(maxWidth: .infinity, maxHeight: 50)
        .background(Color.primaryColor)
    }
}


struct ReviewModal_Previews: PreviewProvider {
    static var previews: some View {
        ReviewModal()
    }
}

