//
//  WebView.swift
//  H4XOR News
//
//  Created by Rohit sahu on 26/07/20.
//  Copyright © 2020 sha_since1999. All rights reserved.
//

import SwiftUI
import WebKit
import Foundation

struct WebView : UIViewRepresentable{
    let urlString : String?

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString)
            {
                let request = URLRequest(url: url)
                  uiView.load(request)
                
            }
        }
        
    }
    
    
    
}
