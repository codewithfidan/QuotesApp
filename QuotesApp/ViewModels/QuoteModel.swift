//
//  QuoteModel.swift
//  QuotesApp
//
//  Created by Fidan Oruc on 12.08.22.
//

import Foundation

class QuoteModel: ObservableObject {
    
    @Published var quotes = [Quote]()
    
    init(){
        self.quotes = DataService.getLocalData()
    }
}
