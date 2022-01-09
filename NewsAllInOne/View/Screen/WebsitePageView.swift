//
//  WebsitePageView.swift
//  NewsAllInOne
//
//  Created by Emre Topçu on 6.01.2022.
//

import SwiftUI
import WebKit

struct WebsitePageView: View {
    
    let id: String
    let url: String
    let image: String
    let category: String
    
    @State var showMenu = false
    @State var isFavorite = false
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(entity: FavoriteWebsiteItem.entity(), sortDescriptors: [])
    var favoriteWebsites: FetchedResults<FavoriteWebsiteItem>
    
    var body: some View {
        
        let dragGesture = DragGesture()
            .onEnded {
                if $0.translation.width < -100 {
                    withAnimation {
                        showMenu = false
                    }
                }
            }
        
        return GeometryReader { geometry in
            ZStack(alignment: .leading) {
                WebView(urlString: url)
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
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarLeading) {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    HStack {
                        Image(systemName: "chevron.left")
                        Text(category)
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .font(.headline)
                    }
                }
            }
        }
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                Button(action: {
                    withAnimation {
                        isFavorite.toggle()
                        if isFavorite {
                            let newFavoriteWebsiteItem = FavoriteWebsiteItem(context: viewContext)
                            newFavoriteWebsiteItem.id = id
                            newFavoriteWebsiteItem.url = url
                            newFavoriteWebsiteItem.image = image
                            do {
                                try viewContext.save()
                            } catch {
                                print(error.localizedDescription)
                            }
                        }
                        else {
                            for favoriteWebsiteItem in favoriteWebsites {
                                if id == favoriteWebsiteItem.id {
                                    viewContext.delete(favoriteWebsiteItem)
                                    break
                                }
                            }
                            do {
                                try viewContext.save()
                            } catch {
                                print(error.localizedDescription)
                            }
                        }
                    }
                }) {
                    if isFavorite {
                        Image(systemName: "star.fill")
                            .foregroundColor(.white)
                    }
                    else {
                        Image(systemName: "star")
                            .foregroundColor(.white)
                    }
                }
            }
        }
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(true)
        .onAppear {
            for favoriteWebsiteItem in favoriteWebsites {
                if id == favoriteWebsiteItem.id {
                    isFavorite = true
                    break
                }
            }
        }
    }
}

struct WebsitePageView_Previews: PreviewProvider {
    static var previews: some View {
        WebsitePageView(id: "Apple News", url: "https://www.apple.com/apple-news/", image: "apple news", category: "News")
    }
}
