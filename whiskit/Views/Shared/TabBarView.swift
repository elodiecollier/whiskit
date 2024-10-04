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
                    Label("Home", systemImage: "house.fill")
                }
            BrowseView()
                .tabItem {
                    Label("Browse", systemImage: "list.bullet.clipboard.fill")
                }
            CreateView()
                .tabItem {
                    Label("Create", systemImage: "camera.fill")
                }
        }
    }
}

#Preview {
    TabBarView()
}
