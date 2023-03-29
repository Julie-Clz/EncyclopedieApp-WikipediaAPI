//
//  Wiki.swift
//  Encyclopedie
//
//  Created by Julie Collazos on 24/03/2023.
//

import Foundation

// MARK: - Wiki
struct Wiki: Decodable, Hashable {
    var query: Query
}

// MARK: - Query
struct Query: Decodable, Hashable {
    var pages: [String: Page]
}

// MARK: - Page
struct Page: Decodable, Hashable {
    var pageid, ns: Int
    var title: String
    var index: Int?
    var extract: String?
}


