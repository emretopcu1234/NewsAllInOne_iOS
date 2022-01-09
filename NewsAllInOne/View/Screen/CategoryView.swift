//
//  CategoryView.swift
//  NewsAllInOne
//
//  Created by Emre Topçu on 6.01.2022.
//

import SwiftUI

struct CategoryView: View {
    
    let category: String
    
    @State var showMenu = false

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
            ZStack(alignment: .topLeading) {
                ScrollView {
                    Divider()
                        .background(.white)
                        .padding(.top)
                    if category == "Favorites" {
                        ForEach(favoriteWebsites) { item in
                            WebsiteRowView(image: item.image, title: item.id, url: item.url, category: category)
                            Divider()
                                .background(.white)
                        }
                    }
                    else {
                        ForEach(websiteItems) { item in
                            if item.category == category {
                                WebsiteRowView(image: item.image, title: item.id, url: item.url, category: item.category)
                                Divider()
                                    .background(.white)
                            }
                        }
                    }
                }
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
                    withAnimation {
                        showMenu.toggle()
                    }
                }) {
                    Image(systemName: "line.horizontal.3")
                        .scaleEffect(1.5)
                }
            }
        }
        .toolbar {
            ToolbarItemGroup(placement: .principal) {
                Text(category)
                    .font(.title2)
                    .foregroundColor(.white)
            }
        }
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(true)
    }
}

struct CategoryView_Previews: PreviewProvider {
    
    static var previews: some View {
        CategoryView(category: "News")
    }
}
