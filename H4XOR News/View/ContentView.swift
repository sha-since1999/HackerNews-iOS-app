//
//  ContentView.swift
//  H4XOR News
//
//  Created by Rohit sahu on 26/07/20.
//  Copyright © 2020 sha_since1999. All rights reserved.
//

import SwiftUI

struct ContentView: View  {
    @ObservedObject var networkManager = NetworkManager()
   
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post  in
                NavigationLink(destination : DetailView(url : post.url)){
                    HStack {
                
                        Text(String(post.points))
                        Text(post.title)
                    }
                }

            }   
            .navigationBarTitle("Hacker News")

        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().colorScheme(.light)
    
    }
}
