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
//        NavigationView {
            List(viewModel.articles, id: \.title) { article in
                NavigationLink(destination: ArticleDetailView(article: article)) {
                    Text(article.title)
                }
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .navigationTitle("Articles")
            .navigationBarTitleDisplayMode(.inline)
            .background(Image("background").resizable().scaledToFill().ignoresSafeArea())
//            .navigationBarHidden(true)
//            .statusBarHidden(false)
//        }
    }
}

struct ArticleListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ArticleListView()
        }
    }
}
