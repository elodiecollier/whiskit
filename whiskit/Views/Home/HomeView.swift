//
//  HomeView.swift
//  whiskit
//
//  Created by Elodie Collier on 10/3/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color("backgroundPrimary").edgesIgnoringSafeArea(.all)
            ZStack {
                Image("croissant")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300)
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350)
                    .offset(y: -100)
                    .padding()
            }
        }
    }
}

#Preview {
    HomeView()
}
