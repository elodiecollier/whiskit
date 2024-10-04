//
//  ContentView.swift
//  whiskit
//
//  Created by Elodie Collier on 10/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                HomeView()
            }
            VStack {
                Spacer()
                TabBarView()
            }
        }
    }
}

#Preview {
    ContentView()
}
