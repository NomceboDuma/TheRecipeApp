//
//  HeaderView.swift
//  GIRLDINNER2
//
//  Created by Nomcebo Duma on 2023/08/05.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        Image("m5")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height: 350)
            .offset(y: 30)
            .cornerRadius(30)
            .edgesIgnoringSafeArea(.all)
    }
}





struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
