//
//  CategoriesView.swift
//  BeritaIndo
//
//  Created by Hidayat Abisena on 16/08/23.
//

import SwiftUI

struct CategoriesView: View {
    var categories: [String]
    @Binding var selectedCategory: String?
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                Text("All")
                    .padding(.horizontal, 12)
                    .padding(.vertical, 5)
                    .background(selectedCategory == nil ? Color.pink : Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    .onTapGesture {
                        selectedCategory = nil
                    }
                
                ForEach(categories, id: \.self) { category in
                    Text(category)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 5)
                        .background(selectedCategory == category ? Color.gray : Color.pink)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .onTapGesture {
                            selectedCategory = category
                        }
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    CategoriesView(categories: ["Nasional", "Tekno", "Hiburan", "Nasional", "Lifestyle"], selectedCategory: .constant(nil))
}
