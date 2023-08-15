//
//  NewsDetailView.swift
//  BeritaIndo
//
//  Created by Hidayat Abisena on 13/08/23.
//

import SwiftUI

struct NewsDetailView: View {
    let news: News
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                        AsyncImage(url: URL(string: news.image.large)) { phase in
                            phase.resizable().scaledToFill()
                                .overlay {
                                    Color.black
                                        .opacity(0.5)
                                }
                        } placeholder: {
                            ProgressView()
                                .frame(width: 80, height: 80)
                        }
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 220)
                        .clipped()
                        
                        VStack(alignment: .leading, spacing: 16) {
                            Text("Author: \(news.author)")
                                .font(.system(.caption, design: .rounded))
                            
                            Text(news.title)
                                .font(.system(.headline, design: .rounded))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .lineLimit(nil)
                            
                            Text(news.description)
                                .font(.system(.body, design: .rounded))
                                .lineLimit(nil)
                            
                            Text("Published at: \(news.isoDate.formattedDate())")
                                .font(.subheadline)
                                .foregroundStyle(.gray)
                            
                            Link(destination: URL(string: news.link)!) {
                                HStack {
                                    Text("Selengkapnya")
                                    Image(systemName: "link")
                                }
                                .frame(width: 156, height: 32)
                                .background(Color.primary)
                                .mask(RoundedRectangle(cornerRadius: 6))
                                .foregroundStyle(.accent)
                            }
                            .offset(x: 200, y: 40)
                        }
                        .padding()
                }
            }
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    NewsDetailView(news: News(
        title: "This is sample title",
        description: "This is sample description so you can see it in long text",
        image: NewsImage(small: "", medium: "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_480,f_jpg/v1634025439/01h7mjymq414642m0rfxmzeqsh.jpg", large: "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_720,f_jpg/v1634025439/01h7qbe45trqdshx0vd4x92y3x.jpg", extraLarge: ""),
        author: "This is author",
        link: "This is link",
        isoDate: "2023-08-13T02:44:58.000Z")
    )
}

// Uncomment this code for Xcode 14 below
// Xcode 14
//struct NewsDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//            NewsDetailView(news: News(
//title: "This is sample title",
//description: "This is sample description so you can see it in long text",
//image: NewsImage(small: "", medium: "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_480,f_jpg/v1634025439/01h7mjymq414642m0rfxmzeqsh.jpg", large: "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_720,f_jpg/v1634025439/01h7qbe45trqdshx0vd4x92y3x.jpg", extraLarge: ""),
//author: "This is author",
//link: "This is link",
//isoDate: "2023-08-13T02:44:58.000Z")
//)

//    }
//}
