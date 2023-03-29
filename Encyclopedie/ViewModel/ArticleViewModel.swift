//
//  ArticleViewModel.swift
//  Encyclopedie
//
//  Created by Julie Collazos on 08/03/2023.
//

import Foundation

class ArticleViewModel: ObservableObject {
    @Published var articles = [Article]()
    
    init() {
        fetchArticles()
    }
    
    func fetchArticles() {
        let article1 = Article(title: "Le mont Blanc", content: "Le mont Blanc est le plus haut sommet d'Europe occidentale, culminant à 4 809 mètres d'altitude.")
        let article2 = Article(title: "La Grande Muraille", content: "La Grande Muraille est une fortification construite en Chine, et la plus grande structure architecturale jamais construite par l'homme.")
        
        articles = [article1, article2]
    }
}

