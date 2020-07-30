//
//  NavigationManager.swift
//  H4XOR News
//
//  Created by Rohit sahu on 26/07/20.
//  Copyright © 2020 sha_since1999. All rights reserved.
//

import Foundation
struct  NavigationManager {
    func fetchData (){
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if let e = error {
                    print (e)
                }
                else {
                    if let safeData = data {
                        let  decodeer = JSONDecoder()
                        if let decodedData = decodeer.decode(PostData, from: data){
                            
                        }
                    }
                   
                }
            }
             
        
        
    }
    
        

    }
    
    
    
    
}
