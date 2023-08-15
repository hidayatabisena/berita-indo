//
//  MainView.swift
//  BeritaIndo
//
//  Created by Hidayat Abisena on 13/08/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            NewsListView()
                .tabItem {
                    Image(systemName: "doc.text.image")
                    Text("Browse")
                }
                .tag(0)
            
            Text("Second tab")
                .font(.title)
                .tabItem {
                    Image(systemName: "doc.text.magnifyingglass")
                    Text("Search")
                }
                .tag(1)
            
            SettingsView()
                .tabItem {
                    Image(systemName:"doc.badge.gearshape")
                    Text("About")
                }
                .tag(2)
        }
    }
}

#Preview {
    MainView()
}
