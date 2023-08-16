//
//  NewsListView.swift
//  BeritaIndo
//
//  Created by Hidayat Abisena on 13/08/23.
//

import SwiftUI

struct NewsListView: View {
    
    @StateObject private var newsVM = NewsViewModel()
    
    var body: some View {
        NavigationStack {
            if newsVM.isLoading {
                ProgressView("Load News...")
            } else {
                VStack {
                    CategoriesView(categories: newsVM.uniqueCategories, selectedCategory: $newsVM.selectedCategory)
                    List(newsVM.filteredNews) { newsItem in
                        NavigationLink(destination: NewsDetailView(news: newsItem)) {
                            NewsRowView(news: newsItem)
                        }
                    }
                    .listStyle(.plain)
                    .navigationTitle("Berita Indo")
                    .searchable(text: $newsVM.searchText)
                    .refreshable {
                        await newsVM.fetchNews()
                    }
                } //: VSTACK
            }
        }
        .task {
            await newsVM.fetchNews()
        }
    }
}

#Preview {
    NewsListView()
}

// Uncomment this code for Xcode 14 below
// Xcode 14
//struct NewsListView_Previews: PreviewProvider {
//    static var previews: some View {
//        NewsListView()
//    }
//}


