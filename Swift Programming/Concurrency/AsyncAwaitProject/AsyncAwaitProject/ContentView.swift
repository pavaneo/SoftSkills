//
//  ContentView.swift
//  AsyncAwaitProject
//
//  Created by Pavan Kumar J on 05/06/25.
//

import SwiftUI

struct CurrentDate: Decodable, Identifiable {
    let id = UUID()
    let date: String

    private enum CodingKeys: String, CodingKey {
        case date = "title" // matches key in the JSON
    }
}

// View
struct ContentView: View {

    @ObservedObject var viewModel = ContentViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.dates) { currentDate in
                Text(currentDate.date)
            }
            .navigationTitle("Content View")
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    Button(action: {
//                        Task {
//                            await viewModel.populateDataLagacyCode()
//                        }
                        viewModel.populateDataLagacyCode()
                    }) {
                        Image(systemName: "arrow.clockwise.circle")
                    }
                }
            }.onAppear {
                viewModel.populateDataLagacyCode()
            }
//            .task {
//                await viewModel.populateDataLagacyCode()
//            }
        }
    }
}

#Preview {
    ContentView()
}
