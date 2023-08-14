//
//  TabBarView.swift
//  GIRLDINNER2
//
//  Created by Nomcebo Duma on 2023/08/05.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject  var searchDataManager : SearchDataManager
    @State private var searchText: String = ""
    @State private var isSearching: Bool = false
    @State private var isEditing = false
    
    var body: some View {
        NavigationView {
            
            VStack {
                
                
                HeaderView()
                
                
                
                    .padding(.top, -120)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 30) {
                        
                        SearchBarView(text: $searchText, isEditing: $isEditing)
                        CategorySection(header: "Categories")
                        RecommendationSection(header: "Recommendations")
                        RecipeSection(header: "Recipes")
                    }
                    .padding(.top, 10)
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct CategorySection: View {
    let header: String
    
    var body: some View {
        Section(header: Text(header).font(.headline)) {
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    VStack{
                        Image("m18")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .cornerRadius(10)
                        Text("Breakfast")
                            .font(.caption)
                            .foregroundColor(.black)
                    }
                    VStack{
                        Image("m21")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .cornerRadius(10)
                        
                        Text("Lunch")
                            .font(.caption)
                            .foregroundColor(.black)
                    }
                    VStack {
                        Image("m22")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .cornerRadius(10)
                        Text("snack")
                            .font(.caption)
                            .foregroundColor(.black)
                    }
                    VStack{
                        
                        
                        Image("m10")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .cornerRadius(10)
                        Text("Dinner")
                            .font(.caption)
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

struct RecommendationSection: View {
    let header: String
    let recommendedImages = ["m16", "m17", "m20"]
    
    
    @State private var currentImageIndex = 1
    
    var body: some View {
        Section(header: Text(header).font(.headline)) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(recommendedImages.indices, id: \.self) { index in
                        Image(recommendedImages[index])
                            .resizable()
                            .frame(width: 150, height: 150)
                            .cornerRadius(10)
                            .opacity(index == currentImageIndex ? 1.0 : 0.0)
                            .animation(.easeInOut(duration: 0.3))
                            .offset(x: CGFloat(index) * -20)
                    }
                }
                .padding(.horizontal)
            }
            .onAppear {
                withAnimation {
                    animateImages()
                }
            }
        }
    }
    
    private func animateImages() {
        var index = 0
        Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { timer in
            withAnimation {
                currentImageIndex = index
            }
            index = (index + 1) % recommendedImages.count
        }
    }
}

struct RecipeSection: View {
    let header: String
    
    var body: some View {
        Section(header: Text(header).font(.headline)) {
            
            ScrollView(.horizontal, showsIndicators: false) {
                NavigationLink(destination: favouritesView()) {
                    HStack(spacing: 30) {
                        Image("m13")
                            .resizable()
                            .frame(width: 250, height: 250)
                            .cornerRadius(10)
                        Image("m7")
                            .resizable()
                            .frame(width: 250, height: 250)
                            .cornerRadius(10)
                        Image("m8")
                            .resizable()
                            .frame(width: 250, height: 250)
                            .cornerRadius(10)
                        Image("m12")
                            .resizable()
                            .frame(width: 250, height: 250)
                            .cornerRadius(10)
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

