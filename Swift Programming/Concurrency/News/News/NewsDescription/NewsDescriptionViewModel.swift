//
//  NewsDescriptionViewModel.swift
//  News
//
//  Created by Pavan Kumar J on 07/06/25.
//

import Foundation

@MainActor
class NewsDescriptionViewModel: ObservableObject {
    
    @Published var articles: [Article] = []
    
    let networkDescriptionService: NewsDescriptionServiceProtocolDelegate
    let id: String
    
    init(id: String, networkDescriptionService: NewsDescriptionServiceProtocolDelegate = NewsDescriptionServiceDataSource()) {
        self.networkDescriptionService = networkDescriptionService
        self.id = id
    }
    
    func fetchNewsByID() async {
        do {
            articles = try await self.networkDescriptionService.getNewsDescriptionByID(with: id).articles
        } catch _ {
            articles = []
        }
    }
}
