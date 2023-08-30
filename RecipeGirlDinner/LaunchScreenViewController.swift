//
//  LaunchScreenViewController.swift
//  RecipeGirlDinner
//
//  Created by Nomcebo Duma on 2023/08/11.
//

import SwiftUI

struct launchScreenController: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            if isActive {
                
                TabBarView()
                
            } else {
                VStack {
                    VStack{
                        Image("pic2")
                            .resizable()
                            .scaledToFit()
                        
                            
                        
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear{
                        withAnimation(.easeIn(duration: 4.0)) {
                            self.size = 0.9
                            self.opacity = 1.0
                        }
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 4.0) {
                        withAnimation{
                            self.isActive = true
                        }
                        
                    }
                }
            }
        }
    }
    struct launchScreenController_Previews: PreviewProvider {
        static var previews: some View {
            launchScreenController()
        }
        
    }
}
