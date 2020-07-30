//
//  DetailView.swift
//  H4XOR News
//
//  Created by Rohit sahu on 26/07/20.
//  Copyright © 2020 sha_since1999. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url : String?
    var body: some View {
        WebView(urlString : url )
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
    
}
