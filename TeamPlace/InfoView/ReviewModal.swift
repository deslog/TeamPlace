import SwiftUI

struct ReviewModal: View {
    @Environment(\.presentationMode) var presentation
    var reviewContent = Review.all()
    
    var body: some View {
        VStack (spacing: 5){
            VStack {
                Text("분위기")
                    .bold()
                    .font(.system(size: 20))
                    .frame(width: 100, height: 30, alignment: .center)
                
                VStack {
                    ForEach(reviewContent, id:\.self) { value in
                        value.type == 1 ?
                        Button(value.reviewContent) {
                        }
                        .frame(width: 280, height: 30, alignment: .leading)
                        .foregroundColor(Color.black)
                        .background(RoundedRectangle(cornerRadius: 40)
                            .fill(Color.lightGray))
                        : nil
                    }
                }
            }
            VStack {
                Text("인테리어")
                    .bold()
                    .font(.system(size: 20))
                    .frame(width: 100, height: 30, alignment: .center)
                
                VStack {
                    ForEach(reviewContent, id:\.self) { value in
                        value.type == 2 ?
                        Button(value.reviewContent) {
                        }
                        .frame(width: 280, height: 30, alignment: .leading)
                        .foregroundColor(Color.black)
                        .background(RoundedRectangle(cornerRadius: 40)
                            .fill(Color.lightGray))
                        : nil
                    }
                }
            }
            VStack {
                Text("구성품")
                    .bold()
                    .font(.system(size: 20))
                    .frame(width: 100, height: 30, alignment: .center)
                
                VStack {
                    ForEach(reviewContent, id:\.self) { value in
                        value.type == 3 ?
                        Button(value.reviewContent) {
                        }
                        .frame(width: 280, height: 30, alignment: .leading)
                        .foregroundColor(Color.black)
                        .background(RoundedRectangle(cornerRadius: 40)
                            .fill(Color.lightGray))
                        : nil
                    }
                }
            }
            VStack {
                Text("기타")
                    .bold()
                    .font(.system(size: 20))
                    .frame(width: 100, height: 30, alignment: .center)
                
                VStack {
                    ForEach(reviewContent, id:\.self) { value in
                        value.type == 4 ?
                        Button(value.reviewContent) {
                        }
                        .frame(width: 280, height: 30, alignment: .leading)
                        .foregroundColor(Color.black)
                        .background(RoundedRectangle(cornerRadius: 40)
                            .fill(Color.lightGray))
                        : nil
                    }
                }
            }
        }
        .padding(.all, 20)
        Button(action: {
            presentation.wrappedValue.dismiss()
        }, label: {
            Text("선택완료:)").bold()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .ignoresSafeArea()
        })
        .frame(width: 310, height: 40, alignment: .center)
        .background(RoundedRectangle(cornerRadius: 10).fill(Color.primaryColor))
        .font(.system(size: 16))
        .foregroundColor(Color.black)
    }
}


struct ReviewModal_Previews: PreviewProvider {
    static var previews: some View {
        ReviewModal()
    }
}

