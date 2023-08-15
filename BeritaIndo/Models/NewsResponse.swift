//
//  NewsResponse.swift
//  BeritaIndo
//
//  Created by Hidayat Abisena on 13/08/23.
//

import Foundation

struct NewsResponse: Codable {
    let data: [NewsData]
}

struct NewsData: Codable {
    let title: String
    let description: String
    let image: NewsImage
    let author: String       // Add author property
    let link: String         // Add link property
    let isoDate: String      // Add isoDate property
    let categories: [String]
}


