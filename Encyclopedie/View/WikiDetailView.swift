//
//  WikiDetailView.swift
//  Encyclopedie
//
//  Created by Julie Collazos on 24/03/2023.
//

import SwiftUI

struct WikiDetailView: View {
    var wikiId: Int
    @ObservedObject var viewModel = WikiViewModel()
    var body: some View {
        VStack {
            Text(viewModel.wiki.query.pages.values.first!.title)
                .font(.title3)
                .fontWeight(.medium)
                .foregroundColor(.indigo)
                .padding()
            ScrollView(showsIndicators: false) {
                Text(viewModel.wiki.query.pages.values.first!.extract!)
                    .padding()
                    .lineSpacing(8)
                Spacer()
            }
            .onAppear {
                Task {
                    viewModel.wiki = try await viewModel.fetchWikiDetails(id: wikiId)
                }
            }
        }
        .background(Image("background").resizable().scaledToFill().ignoresSafeArea())
    }
}

struct WikiDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WikiDetailView(wikiId: 41893)
    }
}
