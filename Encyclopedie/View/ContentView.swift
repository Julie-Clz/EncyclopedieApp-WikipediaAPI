//
//  ContentView.swift
//  Encyclopedie
//
//  Created by Julie Collazos on 08/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ArticleListView()
                .tabItem {
                    Text("Articles")
                    Image(systemName: "book")
                }
            WikipediaListView()
                .tabItem {
                    Text("Wiki")
                    Image(systemName: "text.book.closed")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

