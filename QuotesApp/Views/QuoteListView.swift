//
//  ContentView.swift
//  QuotesApp
//
//  Created by Fidan Oruc on 12.08.22.
//

import SwiftUI

struct QuoteListView: View {
    @ObservedObject var model = QuoteModel()
    
    var body: some View {
        
        NavigationView{
            List(model.quotes){q in
                NavigationLink {
                    QuoteDetailView(quote: q)
                } label: {
                    VStack{
                        Text("hello")
                        ZStack{
                            Image(q.image)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(10.0)
                                .clipped()
                            VStack(alignment: .leading){
                                Text(q.quote)
                                    .font(.title)
                                    .fontWeight(.bold)
                                Text("- " + q.author)
                                    .font(.subheadline)
                                    .fontWeight(.light)
                            }.padding(.all, 10.0)
                                .foregroundColor(Color.white)
                        }
                    }
                }
            }.listStyle(InsetListStyle()).navigationTitle("Quotes")
        }.navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteListView()
    }
}
