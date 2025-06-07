//
//  ContentView.swift
//  News
//
//  Created by Pavan Kumar J on 05/06/25.
//

import SwiftUI

struct NewsView: View {
    
    @StateObject var viewModel = NewsViewModel(newsService: NewsServiceProtocolDataSource())
    
    var body: some View {
        NavigationView {
            VStack {
                List(viewModel.newsList) { news in
                    NavigationLink(
                        destination: NewsDescriptionView(
                            model: news
                        )) {
                        VStack(alignment: .leading) {
                            Text("\(news.name)")
                                .font(.headline)
                            Text("\(news.description)")
                                .font(.subheadline)
                        }
                    }
                }
                .navigationTitle("News")
                .navigationBarTitleDisplayMode(.inline)
                .listStyle(PlainListStyle())
            }
            .padding()
        }.onAppear {
            //            viewModel.fetchNewsFromCompletionHandler()
        }
        .task {
            await viewModel.fetchNewsFromAsyncAwait()
        }
    }
}

#Preview {
    NewsView()
}
