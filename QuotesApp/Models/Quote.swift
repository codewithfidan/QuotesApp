//
//  Quote.swift
//  QuotesApp
//
//  Created by Fidan Oruc on 12.08.22.
//

import Foundation

class Quote : Identifiable,Decodable{
    
    var id: UUID?
    var image: String
    var author: String
    var quote: String
    var quotations:[String]
    
}
