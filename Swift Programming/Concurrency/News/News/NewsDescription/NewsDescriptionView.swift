//
//  NewsDescriptionView.swift
//  News
//
//  Created by Pavan Kumar J on 07/06/25.
//

import SwiftUI

struct NewsDescriptionView: View {
    
    @StateObject var viewModel: NewsDescriptionViewModel
    var model: NewsModel
    
    init(model: NewsModel) {
        self.model = model
        _viewModel = StateObject(wrappedValue: NewsDescriptionViewModel(id: model.id ?? ""))
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            List(viewModel.articles, id: \.url) { article in
                VStack(alignment: .leading) {
                    HStack {
                        AsyncImage(url: URL(string: article.urlToImage)) { phase in
                            switch phase {
                            case .empty:
                                ProgressView()
                                    .frame(width: 60, height: 60)
                            case .success(let image):
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                    .clipped()
                            case .failure:
                                Image(systemName: "photo")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .foregroundColor(.gray)
                            @unknown default:
                                EmptyView()
                            }
                        }
                        VStack {
                            Text(article.title)
                                .font(.headline)
                            Text(article.description)
                                .font(.subheadline)
                        }
                    }
                }
            }
            .navigationTitle("\(model.name)")
            .navigationBarTitleDisplayMode(.inline)
            .listStyle(PlainListStyle())
        }
        .task {
            await viewModel.fetchNewsByID()
        }
        .padding(.all)
    }
}

#Preview {
    NewsDescriptionView(model: NewsModel(id: "123",
                                         name: "Hellow",
                                         description: "Description",
                                         url: "www.google.com",
                                         category: "Search",
                                         language: "en"))
}
