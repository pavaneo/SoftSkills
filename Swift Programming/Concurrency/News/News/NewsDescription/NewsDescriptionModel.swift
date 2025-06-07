//
//  NewsDescriptionModel.swift
//  News
//
//  Created by Pavan Kumar J on 07/06/25.
//

import Foundation

struct NewsDescriptionModel: Codable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable {
    let source: Source
    let author: String
    let title: String
    let description: String
    let url: String
    let urlToImage: String
    let publishedAt: String
//    let content: String
}

// MARK: - Source
struct Source: Codable {
    let id, name: String
}
