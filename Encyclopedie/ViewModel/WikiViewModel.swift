//
//  WikiViewModel.swift
//  Encyclopedie
//
//  Created by Julie Collazos on 24/03/2023.
//

import Foundation

class WikiViewModel: ObservableObject {
    // MARK: variables
    @Published var wiki: Wiki = Wiki(query: Query(pages: ["" : Page(pageid: 0, ns: 0, title: "", index: 0, extract: "")]))
    var searchText = ""
    var baseUrl = "https://fr.wikipedia.org/w/api.php?action=query&format=json&"
    
    // MARK: Search API Call Wikipedia
    func fetchWiki(query: String, responseLimit: Int) async throws -> Wiki {
        let newText = query.replacingOccurrences(of: " ", with: "_", options: .literal, range: nil)
        
        guard let url = URL(string: "\(baseUrl)generator=search&gsrnamespace=0&gsrlimit=\(responseLimit)&gsrsearch='\(newText)'")
        else {
            fatalError("Missing URL")
        }
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        guard (response as? HTTPURLResponse)?.statusCode == 200
        else {
            fatalError("Error while fetching data")
        }
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let wiki = try decoder.decode(Wiki.self, from: data)

        return wiki
    }
    
    // MARK: Detail article API Call Wikipédia
    func fetchWikiDetails(id: Int) async throws -> Wiki {
        guard let url = URL(string: "\(baseUrl)prop=extracts&explaintext&pageids=\(id)")
        else {
            fatalError("Missing URL")
        }
        print(url)
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        guard (response as? HTTPURLResponse)?.statusCode == 200
        else {
            fatalError("Error while fetching data")
        }
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let wiki = try decoder.decode(Wiki.self, from: data)
        print(wiki)
        return wiki
    }
    
}

