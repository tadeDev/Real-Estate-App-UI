//
//  AuthButton.swift
//  Real Estate App Ui
//
//  Created by tade on 09/03/2024.
//

import SwiftUI

struct AuthButton: View {
    
    var title: String
    
    var body: some View {
        NavigationLink(destination: DashboardView()) {
            RoundedRectangle(
                cornerRadius: 50
            )
            .frame(height: 50)
            .foregroundColor(.black)
            .padding(EdgeInsets(top: 0, leading: 25, bottom: 0, trailing: 25))
            .overlay {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.white)
        }
        }
    }
}

#Preview {
    AuthButton(title: "Create Account")
}
