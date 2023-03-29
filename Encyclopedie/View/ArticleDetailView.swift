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
                .foregroundColor(.indigo)
                .fontWeight(.medium)
                .padding(.top, 40)
            ScrollView(showsIndicators: false) {
                Image(article.image)
                    .resizable()
                    .scaledToFit()
                    .padding()
                Text(article.content)
                    .padding()
                    .lineSpacing(8)
                Spacer()
            }
        }
        .background(Image("background").resizable().scaledToFill().ignoresSafeArea())
    }
}

struct ArticleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleDetailView(article: ArticleViewModel().articles.first!)
    }
}
