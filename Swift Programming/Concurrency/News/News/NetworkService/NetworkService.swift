//
//  NetworkService.swift
//  News
//
//  Created by Pavan Kumar J on 07/06/25.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case decodingFailed
    case noData
    case urlSessionFailed(Error)
}


protocol NetworkServiceDelegates {
    associatedtype ResponseType: Decodable
    func getData(from url: URL, completionHandler: @escaping (Result<ResponseType, NetworkError>) -> Void)
    func getDataAsyncAwait(url: URL) async throws -> ResponseType
}

class NetworkServiceDataSource<T: Decodable>: NetworkServiceDelegates {
   
    
    typealias response = T
    
    func getData(from url: URL, completionHandler: @escaping (Result<T, NetworkError>) -> Void) {
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                completionHandler(.failure(.urlSessionFailed(error)))
                return
            }
            guard let data = data else {
                completionHandler(.failure(.noData))
                return
            }
            do {
                let reponseData = try JSONDecoder().decode(T.self, from: data)
                completionHandler(.success(reponseData))
            } catch _ {
                completionHandler(.failure(.decodingFailed))
                return
            }
        }.resume()
    }
    
    func getDataAsyncAwait(url: URL) async throws -> T {
        let(data, _) = try await URLSession.shared.data(from: url)
        do {
            let decoded = try JSONDecoder().decode(T.self, from: data)
            return decoded
        } catch {
            print("❌ Decoding failed:", error)
            throw NetworkError.decodingFailed
        }
    }
    
}
