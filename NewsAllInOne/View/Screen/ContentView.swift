//
//  ContentView.swift
//  NewsAllInOne
//
//  Created by Emre Topçu on 3.01.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        OpeningPageView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
