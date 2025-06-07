//
//  ContentViewModel.swift
//  AsyncAwaitProject
//
//  Created by Pavan Kumar J on 05/06/25.
//

import Foundation

class ContentViewModel: ObservableObject {
    
    @Published var dates: [CurrentDate] = []
    
    func populateData() async {
        do {
            guard let currentDate = try await NetworkService().getData() else { return }
            await MainActor.run {
                self.dates.append(currentDate)
            }
        } catch {
            print("Error: \(error)")
        }
    }
    
    func populateDataLagacyCode() {
        NetworkService().getDataFromNormalURLSessionWithResultType(url: "https://jsonplaceholder.typicode.com/todos/1") { response in
            switch response {
            case .success(let data):
                self.dates.append(data)
            case .failure(let error):
                print("Error: \(error.localizedDescription)")
            }
        }
    }
}
