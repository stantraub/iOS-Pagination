//
//  APICaller.swift
//  Pagination
//
//  Created by Stanley Traub on 11/17/20.
//

import Foundation

class APICaller {
    var isPaginating = false
    
    func fetchData(pagination: Bool = false, completion: @escaping(Result<[String], Error>) -> Void) {
        if pagination {
            isPaginating = true
        }
        DispatchQueue.global().asyncAfter(deadline: .now() + (pagination ? 3 : 2), execute: {
            let originalData = [
                "Apple",
                "Google",
                "Facebook",
                "Hulu",
                "Twitter",
                "Netflix",
                "Apple",
                "Google",
                "Facebook",
                "Hulu",
                "Twitter",
                "Netflix",
                "Apple",
                "Google",
                "Facebook",
                "Hulu",
                "Twitter",
                "Netflix",
                "Apple",
                "Google",
                "Facebook",
                "Hulu",
                "Twitter",
                "Netflix",
                "Apple",
                "Google",
                "Facebook",
                "Hulu",
                "Twitter",
                "Netflix",
                "Apple",
                "Google",
                "Facebook",
                "Hulu",
                "Twitter",
                "Netflix",
                "Apple",
                "Google",
            ]
            
            let newData = [
                "Banana", "oranges", "grapes", "Food"
            ]
            
            completion(.success( pagination ? newData : originalData ))
            
            if pagination {
                self.isPaginating = false
            }
        })
    }
}
