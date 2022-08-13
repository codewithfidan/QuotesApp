//
//  QuoteDetailView.swift
//  QuotesApp
//
//  Created by Fidan Oruc on 12.08.22.
//

import SwiftUI

struct QuoteDetailView: View {
    
    var quote: Quote
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10.0){
            Text(quote.author)
                .font(.largeTitle)
                .fontWeight(.bold)
            ForEach(quote.quotations, id: \.self){quote in
                Text(quote)
                    .font(.body)
                    
                    
            }
            Spacer()
        }
        .padding(.all)
       
    }
}

struct QuoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuoteModel()
        
        QuoteDetailView(quote: model.quotes[0])
    }
}
