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
                VStack {
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 350)
                        .offset(y: -100)
                        .padding()
                    Text("for the biscuit")
                        .foregroundStyle(Color("backgroundPrimary"))
                        .font(.custom("OldStandardTT-Bold", size: 25))
                        .offset(y: -160)
                        .shadow(color: .black.opacity(0.1), radius: 16, y: 5)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
