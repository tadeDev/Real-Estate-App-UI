//
//  DashboardView.swift
//  Real Estate App Ui
//
//  Created by tade on 09/03/2024.
//

import SwiftUI

struct DashboardView: View {
    
    @State private var text: String = ""
    var houses: [HouseModel] = [
        HouseModel(image: "house1", name: "Cascade Home", price: 3000, isForSale: true, address: "Plot 123, Mohammed Ali Cresent"),
        HouseModel(image: "house2", name: "Banks Home", price: 5000, isForSale: false, address: "House 4, Behind Cort Shops, Mable Street"),
        HouseModel(image: "house4", name: "Neverland", price: 10000, isForSale: false, address: "Plot 123, Mohammed Ali Cresent")
    ]
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
            Color(.white)
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 1))
                    TextField("Searching on Mayfair, London", text: $text)
                    Image(systemName: "xmark")
                        .padding()
                }
                .overlay(
                    RoundedRectangle(
                        cornerRadius: 30
                    ).stroke(.gray)
                        .frame(height: 50)
                )
                
                Spacer().frame(height: 20)
                
                ScrollView {
                    VStack {
                        ForEach(houses) { house in
                            VStack {
                                Image(house.image)
                                    .resizable()
                                    .frame(height: 250)
                                    .aspectRatio(contentMode: .fit)
                                    .overlay(
                                        ZStack (alignment: Alignment(horizontal: .center, vertical: .top)) {
                                            HStack {
                                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                                    .foregroundColor(.white)
                                                    .frame(width:100 ,height: 40)
                                                    .overlay(
                                                        Text("For sale")
                                                    )
                                                Spacer()
                                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                                    .frame(width:40, height: 40)
                                                    .foregroundColor(.white)
                                                    .overlay(
                                                        Image(systemName: "heart.fill")
                                                            .foregroundColor(.red)
                                                    )
                                                
                                            }.padding()
                                        }
                                    )
                                HStack {
                                    VStack(alignment: .leading) {
                                        Text(house.name)
                                            .font(.headline)
                                        Text(house.address)
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                    }
                                    Spacer()
                                    Text("$\(house.price)")
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                }
                                HStack {
                                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                        .stroke(.gray, style: /*@START_MENU_TOKEN@*/StrokeStyle()/*@END_MENU_TOKEN@*/)
                                        .frame(height: 35)
                                        .overlay(
                                            HStack {
                                                Image(systemName: "bed.double")
                                                Text("3")
                                            }
                                        )
                                    
                                    RoundedRectangle(cornerRadius: 25.0)
                                        .stroke(.gray, style: /*@START_MENU_TOKEN@*/StrokeStyle()/*@END_MENU_TOKEN@*/)
                                        .frame(height: 35)
                                        .overlay(
                                            HStack {
                                                Image(systemName: "shower")
                                                Text("3")
                                            }
                                        )
                                    
                                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                        .stroke(.gray, style: /*@START_MENU_TOKEN@*/StrokeStyle()/*@END_MENU_TOKEN@*/)
                                        .frame(height: 35)
                                        .overlay(
                                            HStack {
                                                Image(systemName: "bed.double")
                                                Text("2")
                                            }
                                        )
                                    
                                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                        .stroke(.gray, style: /*@START_MENU_TOKEN@*/StrokeStyle()/*@END_MENU_TOKEN@*/)
                                        .frame(height: 35)
                                        .overlay(
                                            HStack {
                                                Image(systemName: "bed.double")
                                                Text("3")
                                            }
                                        )
                                }
                            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                        }
                    }
                }
                
            }.padding()
        }
    }
}

#Preview {
    DashboardView()
}
