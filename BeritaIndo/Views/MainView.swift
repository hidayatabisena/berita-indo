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
            
            LiveTextView()
                .tabItem {
                    Image(systemName: "doc.viewfinder")
                    Text("Live Text")
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

// Uncomment this code for Xcode 14 below
// Xcode 14
//struct MainView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainView()
//    }
//}
