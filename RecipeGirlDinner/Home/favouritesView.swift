//
//  favouritesView.swift
//  GIRLDINNER2
//
//  Created by Nomcebo Duma on 2023/08/05.


import SwiftUI

struct favouritesView: View {
    @EnvironmentObject var searchDataManager: SearchDataManager
    @State private var isSelected = false
    @StateObject private var viewModel = RecipeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView{
                
                VStack{
                    Image("pic4")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 350)
                        .offset(y: -20)
                }             .edgesIgnoringSafeArea(.all)
                
                Label("Favourites", systemImage: "")
                    .foregroundColor(.black)
                    .background(Color.clear)
                    .cornerRadius(10)
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .padding(.top, -50)
                    .padding(.trailing, 250)
                
                VStack {
                    NavigationLink(destination: recipeDetail()) {
                        Label("", systemImage: "info.circle")
                            .foregroundColor(Color.black)
                            .background(Color.clear)
                            .cornerRadius(10)
                            .font(.system(size: 20))
                        
                        Button(action: {
                            viewModel.toggleFavorite()
                            isSelected.toggle()
                        }) {
                            Label("", systemImage: "heart.fill")
                                .foregroundColor(isSelected ? Color.red : Color.black)
                                .background(Color.clear)
                                .cornerRadius(10)
                                .font(.system(size: 20))
                        }
                    }
                }
                .padding(.leading, 290)
                .padding(.top, 100)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.orange)
                        .frame(width: 400, height: 90)
                        .opacity(0.5)
                        .padding(.top, 100)
                        .overlay(
                            Label("Recipe:", systemImage: "")
                                .foregroundColor(Color.white)
                                .background(Color.clear)
                                .cornerRadius(10)
                                .font(.system(size: 14))
                                .padding(.trailing, 320)
                                .padding(.top, 30)
                        )
                )
            }
        }
    }
    
}


struct favouritesView_Previews: PreviewProvider {
    static var previews: some View {
        favouritesView()
    }
}






