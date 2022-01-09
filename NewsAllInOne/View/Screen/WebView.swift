//
//  WebView.swift
//  NewsAllInOne
//
//  Created by Emre Topçu on 6.01.2022.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let unwrappedString = urlString {
            if let url = URL(string: unwrappedString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
