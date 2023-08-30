//
//  recipeDetail.swift
//  GIRLDINNER2
//
//  Created by Nomcebo Duma on 2023/08/07.
//

import SwiftUI

struct recipeDetail: View {
    
    @StateObject private var viewModel = RecipeViewModel()
    @EnvironmentObject  var searchDataManager : SearchDataManager
    @State private var isSelected = false
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                ZStack(alignment: .top) {
                    VStack {
                        Image("m5")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 300)
                            .cornerRadius(30)
                            .offset(y: -92)
                            .edgesIgnoringSafeArea(.all)
                        
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .fill(Color.orange)
                                    .opacity(0.8)
                                    .frame(height: 780)
                                    .padding(.top, 900)
                                    .overlay (
                                        RoundedRectangle(cornerRadius: 50)
                                        
                                            .fill(Color.white)
                                            .frame(width: 100, height: 40)
                                            .shadow(color: Color.black.opacity(0.5), radius: 20)
                                        
                                        
                                            .padding(.leading, 200)
                                            .padding(.top, 215)
                                            .overlay(
                                                Button(action: {
                                                    isSelected
                                                    
                                                }) {
                                                    VStack {
                                                        NavigationLink(destination: favouritesView()) {
                                                            Label("Add", systemImage: "")
                                                                .foregroundColor(
                                                                    Color.black)
                                                            
                                                                .font(.system(size: 20))
                                                        }
                                                        .padding(.top, 215)
                                                        .padding(.leading, 190)
                                                    }
                                                }
                                            )
                                    )
                            )
                    }
                    
                    Button(action: {
                        viewModel.toggleFavorite()
                        isSelected.toggle()
                    }) {
                        Label("", systemImage: "heart.fill")
                            .foregroundColor(isSelected ? Color.red : Color.white)
                            .background(Color.clear)
                            .cornerRadius(10)
                            .font(.system(size: 36))
                    }
                    .padding(.top, -10)
                    .padding(.leading, 300)
                    .shadow(color: Color.red.opacity(10), radius: 20)
                    
                    VStack(alignment: .leading, spacing: 70) {
                        Spacer()
                        
                        Label("Chicken", systemImage: "")
                            .foregroundColor(.black)
                            .background(Color.clear)
                            .cornerRadius(10)
                            .font(.system(size: 25))
                            .alignmentGuide(.top) { d in d[.bottom] }
                        
                        
                        
                        HStack (spacing: 30) {
                            Label(":", systemImage: "clock")
                                .foregroundColor(.black)
                                .background(Color.clear)
                                .cornerRadius(10)
                                .font(.system(size: 20))
                                .alignmentGuide(.top) { d in d[.bottom] }
                                .padding(.trailing)
                            
                            Label(":", systemImage: "flame.fill")
                                .foregroundColor(.red)
                                .background(Color.clear)
                                .cornerRadius(10)
                                .font(.system(size: 20))
                                .alignmentGuide(.top) { d in d[.bottom] }
                                .padding(.trailing)
                            
                            Label(":", systemImage: "chart.bar")
                                .foregroundColor(.gray)
                                .background(Color.clear)
                                .cornerRadius(10)
                                .font(.system(size: 20))
                                .alignmentGuide(.top) { d in d[.bottom] }
                                .padding(.trailing)
                            
                            
                            
                        }
                        
                        
                        
                        Label("Description:", systemImage: "book.circle")
                            .foregroundColor(.black)
                            .background(Color.clear)
                            .cornerRadius(10)
                            .font(.system(size: 20))
                            .alignmentGuide(.top) { d in d[.bottom] }
                        
                        Label("Ingredients:", systemImage: "frying.pan.fill")
                            .foregroundColor(.black)
                            .background(Color.clear)
                            .cornerRadius(10)
                            .font(.system(size: 20))
                            .alignmentGuide(.top) { d in d[.bottom] }
                        
                        Spacer()
                    }
                    .padding(.trailing, 100)
                    .position(x: UIScreen.main.bounds.width / 2, y: 450)
                }
                
                
            }
        }
    }
}
struct recipeDetail_Previews: PreviewProvider {
    static var previews: some View {
        recipeDetail()
    }
}
