//
//  NewsViewModel.swift
//  News
//
//  Created by Pavan Kumar J on 06/06/25.
//

import Foundation

@MainActor
class NewsViewModel: ObservableObject {
    
    @Published var newsList: [NewsModel] = []
    
    let newsService: NewsServiceProtocol
    
    init(newsService: NewsServiceProtocol) {
        self.newsService = newsService
    }
    
    func fetchNewsFromCompletionHandler() {
        newsService.getDataCompletionHandler(from: Constants.url) { [self] response in
            switch response {
            case .success(let newsModel):
                newsList = newsModel.sources
                break
            case .failure(let error):
                newsList = []
                print("Error: \(error)")
                break
            }
        }
    }
    
    func fetchNewsFromAsyncAwait() async {
        do {
            newsList = try await newsService.getDataAsyncAwait(from: Constants.url).sources
        } catch (let error) {
            newsList = []
        }
    }
}
