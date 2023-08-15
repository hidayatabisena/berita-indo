//
//  NewsRowView.swift
//  BeritaIndo
//
//  Created by Hidayat Abisena on 13/08/23.
//

import SwiftUI

struct NewsRowView: View {
    let news: News
    
    var body: some View {
        HStack(spacing: 14) {
            AsyncImage(url: URL(string: news.image.medium)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 80)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            } placeholder: {
                ProgressView()
                    .frame(width: 80, height: 80)
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text(news.title)
                    .font(.system(size: 16, design: .rounded))
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .truncationMode(.tail)
                
                HStack {
                    Text(news.author)
                        .lineLimit(1)
                    Text("-")
                    Text(news.isoDate.formattedDate())
                        .lineLimit(1)
                }
                .font(.footnote)
                .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    NewsRowView(news: News(
        title: "This is sample title",
        description: "This is sample description so you can see it in long text",
        image: NewsImage(small: "", medium: "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_480,f_jpg/v1634025439/01h7mjymq414642m0rfxmzeqsh.jpg", large: "", extraLarge: ""),
        author: "This is author",
        link: "This is link",
        isoDate: "2023-08-13T02:44:58.000Z", categories: ["Satu", "Dua", "Tiga"])
    )
}

// Uncomment this code for Xcode 14 below
// Xcode 14
//struct NewsRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        NewsRowView(news: News(
//title: "This is sample title",
//description: "This is sample description so you can see it in long text",
//image: NewsImage(small: "", medium: "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_480,f_jpg/v1634025439/01h7mjymq414642m0rfxmzeqsh.jpg", large: "", extraLarge: ""),
//author: "This is author",
//link: "This is link",
//isoDate: "2023-08-13T02:44:58.000Z")
//)
//    }
//}
