//
//  ArticleDetailView.swift
//  Encyclopedie
//
//  Created by Julie Collazos on 08/03/2023.
//

import SwiftUI

struct ArticleDetailView: View {
    let article: Article
    
    var body: some View {
        VStack {
            Text(article.title)
                .font(.title)
            Text(article.content)
                .padding()
            Spacer()
        }
//        .navigationTitle(article.title)
        .navigationBarTitleDisplayMode(.inline)
        .background(Image("background").resizable().scaledToFill().ignoresSafeArea())
    }
}

struct ArticleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ArticleDetailView(article: Article(title: "Le mont Blanc", content: "Le mont Blanc est le plus haut sommet d'Europe occidentale, culminant à 4 809 mètres d'altitude."))
        }
    }
}
