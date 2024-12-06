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
            RecipeCategoriesView()
                .tabItem {
                    Label("Recipes", systemImage: "fork.knife")
                }
            BasicsView()
                .tabItem {
                    Label("Basics", systemImage: "frying.pan.fill")
                }
        }
    }
}

#Preview {
    TabBarView()
}
