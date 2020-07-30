//
//  PostData.swift
//  H4XOR News
//
//  Created by Rohit sahu on 26/07/20.
//  Copyright © 2020 sha_since1999. All rights reserved.
//

import Foundation
struct PostData :Decodable{
    let hits : [Post]
    
}

struct Post : Decodable , Identifiable {
    var id: String{
        return objectID    // this is compulsary for identifiable to identify the item hence we provide this own object id
    }
    let title : String
    let url : String?
    let points : Int
    let objectID: String
}
