//
//  SocialButtons.swift
//  Real Estate App Ui
//
//  Created by tade on 09/03/2024.
//

import SwiftUI

struct SocialButtons: View {
    var image: String
    var text: String
    
    var body: some View {
        RoundedRectangle(
            cornerRadius: 50
        )
        .strokeBorder(Color.gray, style: /*@START_MENU_TOKEN@*/StrokeStyle()/*@END_MENU_TOKEN@*/)
        .frame(height: 50)
        .padding(EdgeInsets(top: 0, leading: 25, bottom: 0, trailing: 25))
        .overlay {
            HStack {
                Image(image)
                    .resizable()
                    .frame(width: 20, height: 20)
                Spacer().frame(width: 10)
                Text(text)
                    .font(.headline)
                    .foregroundColor(.black)
            }
        }
    }
}

#Preview {
    SocialButtons(image: "Google", text: "Sign in with google")
        .previewLayout(.sizeThatFits)
}
