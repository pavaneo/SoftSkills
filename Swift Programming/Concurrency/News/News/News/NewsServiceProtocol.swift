//
//  NewsServiceProtocol.swift
//  News
//
//  Created by Pavan Kumar J on 07/06/25.
//

import Foundation


protocol NewsServiceProtocol: AnyObject {
    func getDataCompletionHandler(from url: String, completionHandler: @escaping (Result<NewsResponse, NetworkError>) -> Void)
    func getDataAsyncAwait(from url: String) async throws -> NewsResponse
}

class NewsServiceProtocolDataSource: NewsServiceProtocol {
    
    private let networkService = NetworkServiceDataSource<NewsResponse>()
    
    func getDataCompletionHandler(from url: String, completionHandler: @escaping (Result<NewsResponse, NetworkError>) -> Void) {
        guard let url = URL(string: url) else {
            completionHandler(.failure(.invalidURL))
            return
        }
        networkService.getData(from: url) { response in
            switch response {
            case .success(let success):
                completionHandler(.success(success))
            case .failure(let failure):
                print("Error \(failure)")
            }
        }
    }
    
    func getDataAsyncAwait(from url: String) async throws -> NewsResponse {
        var data: NewsResponse?
        guard let url = URL(string: url) else {
            return data!
        }
        do {
            data = try await networkService.getDataAsyncAwait(url: url)
        } catch (let error) {
            print(error.localizedDescription)
        }
        return data!
    }
}
