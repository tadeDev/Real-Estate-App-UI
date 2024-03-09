//
//  ContentView.swift
//  Real Estate App Ui
//
//  Created by tade on 09/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isDashboardActive = false
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
                Color(.white)
                
                VStack {
                    Image("welcome_background")
                        .resizable()
                        .frame(height: 400)
                        .overlay(
                            LinearGradient(colors: [.black.opacity(0.7), .clear], startPoint: .top, endPoint: .bottom)
                        )
        
                    GeometryReader(content: { geometry in
                        ZStack {
                            Color(.white)
                                .ignoresSafeArea()
                            .frame(height: geometry.size.height)
                            VStack {
                                Text("Sign up for Honne")
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .fontWeight(.semibold)
                                Spacer().frame(height: 10)
                                Text("Discover perfect property with easy-to-use app")
                                    .font(/*@START_MENU_TOKEN@*/.subheadline/*@END_MENU_TOKEN@*/)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.gray)
                                
                                Spacer().frame(height: 30)
                                SocialButtons(image: "Google", text: "Sign in with google")
                                Spacer().frame(height: 20)
                                SocialButtons(image: "Apple", text: "Sign in with apple")
                                Spacer().frame(height: 20)
                                Text("Or")
                                    .foregroundColor(.black)
                                Spacer().frame(height: 20)
                                Button(action: {
                                }) {
                                    AuthButton(title: "Create Account")
                                }
                                .background(
                                    NavigationLink(
                                        destination: DashboardView(), label: {
                                            EmptyView()
                                        }
                                    )
                                 )
                                Spacer().frame(height: 20)
                                HStack {
                                    Text("Already have an account ?")
                                        .font(.subheadline)
                                    Text("Login")
                                        .font(.subheadline)
                                        .foregroundColor(.orange)
                                        .fontWeight(.semibold)
                                }
                            }
                        }
                    })
                }.ignoresSafeArea()
                
                HStack {
                    Image(systemName: "house")
                        .foregroundColor(.white)
                    Text("Honne")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
