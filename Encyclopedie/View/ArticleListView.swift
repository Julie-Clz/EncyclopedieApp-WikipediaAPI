//
//  ArticleListView.swift
//  Encyclopedie
//
//  Created by Julie Collazos on 08/03/2023.
//

import SwiftUI

struct ArticleListView: View {
    @ObservedObject var viewModel = ArticleViewModel()
    var body: some View {
        NavigationStack {
            List(viewModel.articles, id: \.title) { article in
                NavigationLink(destination: ArticleDetailView(article: article)) {
                    Text(article.title)
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundColor(.indigo)
                }
                .tint(.accentColor)
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .navigationTitle("Articles")
            .navigationBarTitleDisplayMode(.inline)
            .background(Image("background").resizable().scaledToFill().ignoresSafeArea())
        }
    }
}

struct ArticleListView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleListView()
    }
}
