//
//  NewsModel.swift
//  News
//
//  Created by Pavan Kumar J on 06/06/25.
//

import Foundation


struct NewsResponse: Codable {
    let status: String
    let sources: [NewsModel]
}


struct NewsModel: Codable, Identifiable {
    let id: String?
    let name: String
    let description: String
    let url: String
    let category: String
    let language: String
    
//    enum CodingKeys: String, CodingKey {
//        case id = "id"
//        case name = "name"
//        case description = "description"
//        case url = "url"
//        case category = "category"
//        case language = "language"
//    }
}
