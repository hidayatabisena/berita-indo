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
                
                List(newsVM.news) { newsItem in
                    NavigationLink(destination: NewsDetailView(news: newsItem)) {
                        NewsRowView(news: newsItem)
                    }
                    
                }
                .listStyle(.plain)
                .navigationTitle("Berita Indo")
                .refreshable {
                    await newsVM.fetchNews()
                }
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
