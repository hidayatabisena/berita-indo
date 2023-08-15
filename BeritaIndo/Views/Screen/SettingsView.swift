//
//  SettingsView.swift
//  BeritaIndo
//
//  Created by Hidayat Abisena on 14/08/23.
//

import SwiftUI

struct SettingsView: View {
    
    private let alternateAppIcons: [String] = [
      "AppIcon-Box",
      "AppIcon-Info",
      "AppIcon-Lady",
      "AppIcon-Lightbulb",
      "AppIcon-Notebook",
      "AppIcon-Pin"
    ]
    
    var body: some View {
        NavigationStack {
            List {
                //: MARK - SECTION: HEADER
                Section {
                    HStack {
                        Spacer()
                        Text("Berita Indo")
                            .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                            .font(.system(.largeTitle, design: .rounded))
                            .fontWeight(.heavy)
                            .foregroundStyle(.pink.gradient)
                        Spacer()
                    }
                    
                    HStack {
                        Spacer()
                        Text("Kurasi berita terkini dari portal lokal Indonesia")
                            .multilineTextAlignment(.center)
                            .fontWeight(.medium)
                        Spacer()
                    }
                } //: HEADER Section
                .alignmentGuide(.listRowSeparatorLeading) { viewDimensions in

                    return 0
                }
                
                // MARK: - SECTION: ICONS
                Section(header: Text("Alternate Icons")) {
                  ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                      ForEach(alternateAppIcons.indices, id: \.self) { item in
                        Button {
                          print("Icon \(alternateAppIcons[item]) was pressed.")
                          
                          UIApplication.shared.setAlternateIconName(alternateAppIcons[item]) { error in
                            if error != nil {
                              print("Failed request to update the app's icon: \(String(describing: error?.localizedDescription))")
                            } else {
                              print("Success! You have changed the app's icon to \(alternateAppIcons[item])")
                            }
                          }
                        } label: {
                          Image("\(alternateAppIcons[item])-Preview")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .cornerRadius(16)
                        }
                        .buttonStyle(.borderless)
                      }
                    }
                  } //: SCROLL VIEW
                  .padding(.top, 12)
                  
                  Text("Choose your favourite app icon from the collection above.")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .font(.footnote)
                    .padding(.bottom, 12)
                } //: SECTION
                .listRowSeparator(.hidden)
                
                //: MARK - SECTION: ABOUT
                Section(
                  header: Text("ABOUT THE APP"),
                  footer: HStack {
                    Spacer()
                    Text("Copyright © All right reserved.")
                    Spacer()
                  }
                    .padding(.vertical, 8)
                ) {
                  CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "BeritaIndo", rowTintColor: .blue)
                  
                  CustomListRowView(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS", rowTintColor: .red)
                  
                  CustomListRowView(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                  
                  CustomListRowView(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                  
                  CustomListRowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "Han Sena", rowTintColor: .mint)
                  
                  CustomListRowView(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Han Sena", rowTintColor: .pink)
                  
                  CustomListRowView(rowLabel: "Website", rowIcon: "globe", rowTintColor: .indigo, rowLinkLabel: "Hidayat Abisena", rowLinkDestination: "https://hidayatabisena.com")
                        
                  
                } //: SECTION
                
            } //: LIST
            .navigationTitle("About")
            .navigationBarTitleDisplayMode(.inline)
        } //: NAV
    }
}

#Preview {
    SettingsView()
}

// Uncomment this code for Xcode 14 below
// Xcode 14
//struct SettingsView_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingsView()
//    }
//}
