//
//  NewsDescriptionServiceProtocol.swift
//  News
//
//  Created by Pavan Kumar J on 07/06/25.
//

import Foundation

protocol NewsDescriptionServiceProtocolDelegate {
    func getNewsDescriptionByID(with id: String) async throws -> NewsDescriptionModel
}

class NewsDescriptionServiceDataSource: NewsDescriptionServiceProtocolDelegate {
    
    private var networkService = NetworkServiceDataSource<NewsDescriptionModel>()
    
    func getNewsDescriptionByID(with id: String) async throws -> NewsDescriptionModel {
        var newsList: NewsDescriptionModel?
        guard let url = URL(string: "https://newsapi.org/v2/top-headlines?sources=\(id)&apiKey=0cf790498275413a9247f8b94b3843fd") else {
            return newsList!
        }
        do {
            newsList = try await networkService.getDataAsyncAwait(url: url)
        } catch let error {
            print(error)
        }
        return newsList!
    }
}
