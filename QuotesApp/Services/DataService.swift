//
//  DataService.swift
//  QuotesApp
//
//  Created by Fidan Oruc on 12.08.22.
//

import Foundation

class DataService{
    
    static func getLocalData() -> [Quote]{
        
        let pathString = Bundle.main.path(forResource: "quotes", ofType: "json")
        
        guard pathString != nil else{
            return [Quote]()
        }
        let url = URL(fileURLWithPath: pathString!)
        
        do{
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            do{
                let quoteData = try decoder.decode([Quote].self, from: data)
                for r in quoteData{
                    r.id = UUID()
                }
                return quoteData
            }catch{
                print(error)
            }
           
        }catch{
            print(error)
        }
        return [Quote]()
    }
    
}
