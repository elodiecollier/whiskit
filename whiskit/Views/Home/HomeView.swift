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
            VStack {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
                Button(action: {}) {
                    Text("Upload a Meal")
                }
                .padding()
            }
        }
    }
}

#Preview {
    HomeView()
}
