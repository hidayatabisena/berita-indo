//
//  News.swift
//  BeritaIndo
//
//  Created by Hidayat Abisena on 13/08/23.
//

import Foundation

struct News: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let image: NewsImage
    let author: String       // Add author property
    let link: String         // Add link property
    let isoDate: String      // Add isoDate property
}

struct NewsImage: Codable {
    let small: String
    let medium: String
    let large: String
    let extraLarge: String
}

