//
//  WikipediaListView.swift
//  Encyclopedie
//
//  Created by Julie Collazos on 24/03/2023.
//

import SwiftUI

struct WikipediaListView: View {
    @ObservedObject var viewModel = WikiViewModel()
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    TextField("", text: $viewModel.searchText, prompt: Text("🔎  Rechercher..."))
                        .padding()
                        .border(.indigo, width: 2)
                        .cornerRadius(5)
                        .padding()
                        .onSubmit {
                            Task {
                                if viewModel.searchText.isEmpty {
                                    viewModel.searchText = "..."
                                } else {
                                    viewModel.wiki = try await viewModel.fetchWiki(query: viewModel.searchText, responseLimit: 10)
                                }
                            }
                        }
                }
                if !viewModel.searchText.isEmpty {
                    List {
                        ForEach(Array(viewModel.wiki.query.pages.values), id: \.self) { key in
                            NavigationLink {
                                WikiDetailView(wikiId: key.pageid)
                            } label: {
                                Text(key.title)
                                    .font(.title3)
                                    .fontWeight(.medium)
                                    .foregroundColor(.indigo)
                            }
                            .tint(.accentColor)
                            .listRowBackground(Color.clear)
                            .listRowSeparator(.hidden)
                        }
                    }
                    .listStyle(.plain)
                }
                Spacer()
            }
            .navigationTitle("Recherche")
            .navigationBarTitleDisplayMode(.inline)
            .background(Image("background").resizable().scaledToFill().ignoresSafeArea())
        }
    }
}

struct WikipediaListView_Previews: PreviewProvider {
    static var previews: some View {
        WikipediaListView()
    }
}
