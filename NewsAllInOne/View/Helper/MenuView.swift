//
//  MenuView.swift
//  NewsAllInOne
//
//  Created by Emre Topçu on 5.01.2022.
//

import SwiftUI

struct MenuView: View {
    
    @State var isNavigationBarHidden = true
    
    var body: some View {
        GeometryReader { geometry in
            
            // if there are much more items, vstack can be embedded in scrollview.
            // if not, it seems nicer without scrollview.
            
            VStack(alignment: .leading) {
                ForEach(menuItems) { item in
                    NavigationLink(destination: CategoryView(category: item.category)){
                        HStack {
                            Image(item.image)
                                .resizable()
                                .renderingMode(.template)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30, alignment: .center)
                                .padding(.trailing)
                                .foregroundColor(.white)
                            Text(item.category)
                                .foregroundColor(.white)
                                .font(.system(size: 17))
                                .font(.headline)
                        }
                        .padding(.top, 15)
                        .padding(.bottom, 15)
                    }
                    .transition(.move(edge: .trailing))
                }
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .leading)
            .background(Color("DarkerGray"))
            .edgesIgnoringSafeArea(.all)
        }
        .onAppear {
            isNavigationBarHidden = true
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
