//
//  OpeningPageView.swift
//  NewsAllInOne
//
//  Created by Emre Topçu on 3.01.2022.
//

import SwiftUI
import WebKit

struct OpeningPageView: View {
    
    @State var showMenu = false
    
    var body: some View {
        
        let dragGesture = DragGesture()
            .onEnded {
                if $0.translation.width < -100 {
                    withAnimation {
                        showMenu = false
                    }
                }
            }
        
        NavigationView {
            return GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    WebView(urlString: "https://www.apple.com/apple-news/")
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .offset(x: showMenu ? geometry.size.width/2 : 0)
                        .disabled(showMenu ? true : false)
                        .background(Color("DarkGray"))
                    
                    if showMenu {
                        MenuView()
                            .frame(width: geometry.size.width/2)
                    }
                }
                .gesture(dragGesture)
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarItems(leading: (
                Button(action: {
                    withAnimation {
                        showMenu.toggle()
                    }
                }) {
                    Image(systemName: "line.horizontal.3")
                        .scaleEffect(1.5)
                }
            ))
        }
    }
}

struct OpeningPageView_Previews: PreviewProvider {
    static var previews: some View {
        OpeningPageView()
    }
}
