//
//  NetworkService.swift
//  AsyncAwaitProject
//
//  Created by Pavan Kumar J on 05/06/25.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case decodingFailed
    case apiError
    case none
}

class NetworkService {
    func getData() async throws -> CurrentDate? {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos/1") else {
            fatalError("URL is incorrect!")
        }

        let (data, _) = try await URLSession.shared.data(from: url)
        
        do {
            let currentDate = try JSONDecoder().decode(CurrentDate.self, from: data)
            return currentDate
        } catch {
            print("Decoding error: \(error.localizedDescription)")
            print(String(data: data, encoding: .utf8) ?? "Invalid data")
            return nil
        }
    }
    
    
    func getDataFromNormalURLSessionWithResultType(url: String, completionHandler: @escaping (Result<CurrentDate, NetworkError>) -> Void) {
        guard let url = URL(string: url) else {
            completionHandler(.failure(.invalidURL))
            return
        }
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                return completionHandler(.failure(.apiError))
            }
            let decoder = JSONDecoder()
            do {
                let content = try decoder.decode(CurrentDate.self, from: data)
                DispatchQueue.main.async {
                    completionHandler(.success(content))
                }
            } catch {
                DispatchQueue.main.async {
                    completionHandler(.failure(.decodingFailed))
                }
            }
        }.resume()
    }

}
