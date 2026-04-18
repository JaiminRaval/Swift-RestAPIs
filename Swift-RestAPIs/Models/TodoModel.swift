//
//  TodoModel.swift
//  Swift-RestAPIs
//
//  Created by Jaimin Raval on 18/04/26.
//

import Foundation

//Few notes:
// - Models is made of 'struct' and implements 'Codable' protocol to enable encoding & decoding.
//
struct TodoModel: Codable {
    let id: Int
    let userId: Int
    let title: String
    let completed: Bool
    
}

/*  Model BluePrint:
    
    {
        "userId": 1,
        "id": 1,
        "title": "delectus aut autem",
        "completed": false
    }
 
*/
