//
//  TabBarView.swift
//  whiskit
//
//  Created by Elodie Collier on 10/3/24.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "carrot.fill")
                }
            BrowseView()
                .tabItem {
                    Label("Recipes", systemImage: "fork.knife")
                }
            CreateView()
                .tabItem {
                    Label("Basics", systemImage: "frying.pan.fill")
                }
        }
    }
}

#Preview {
    TabBarView()
}
