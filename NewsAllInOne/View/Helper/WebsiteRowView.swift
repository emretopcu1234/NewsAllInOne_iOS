//
//  WebsiteRowView.swift
//  NewsAllInOne
//
//  Created by Emre Topçu on 6.01.2022.
//

import SwiftUI

struct WebsiteRowView: View {
    
    let image: String
    let title: String
    let url: String
    let category: String
    
    var body: some View {
        
        NavigationLink(destination: WebsitePageView(id: title, url: url, image: image, category: category)) {
            HStack {
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 80, alignment: .center)
                    .padding(.trailing)
                Text(title)
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                    .font(.headline)
                Spacer()
                Image(systemName: "chevron.right")
                    .scaleEffect(1.5)
            }
            .frame(height: 50, alignment: .leading)
            .padding()
        }
    }
}

struct WebsiteRowView_Previews: PreviewProvider {
    static var previews: some View {
        let item = websiteItems[0]
        WebsiteRowView(image: item.image, title: item.id, url: item.url, category: item.category)
    }
}
