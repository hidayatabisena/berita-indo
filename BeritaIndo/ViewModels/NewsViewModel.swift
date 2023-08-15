//
//  NewsViewModel.swift
//  BeritaIndo
//
//  Created by Hidayat Abisena on 13/08/23.
//

import Foundation

class NewsViewModel: ObservableObject {
    @Published var news: [News] = []
    @Published var isLoading = false
    
    func fetchNews() async {
        DispatchQueue.main.async {
            self.isLoading = true // Set isLoading to true while fetching
        }
        
        Task {
            do {
                let url = URL(string: "https://berita-indo-api-next.vercel.app/api/kumparan-news")!
                let (data, _) = try await URLSession.shared.data(from: url)
                let response = try JSONDecoder().decode(NewsResponse.self, from: data)
                
                DispatchQueue.main.async {
                    self.news = response.data.map { newsData in
                        News(
                            title: newsData.title,
                            description: newsData.description,
                            image: newsData.image,
                            author: newsData.author,
                            link: newsData.link,
                            isoDate: newsData.isoDate
                        )
                    }
                    self.isLoading = false
                }
            } catch {
                print("Error fetching data: \(error)")
            }
        }
    }
    
}

