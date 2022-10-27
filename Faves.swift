//
//  Faves.swift
//  Ask
//
//  Created by Alaa Alabdullah on 27/10/2022.
//

import SwiftUI

struct Faves: View {
    @State private var selectedTab = 0
    var body: some View {
        
        ZStack{
            TabView(selection: $selectedTab, content: {
                Text("tab content 1").tabItem{ Text("label 1")}.tag(1)
                Text("tab content 2").tabItem{ Text("label 2")}.tag(2)
            })
        }
        
        
        
//        NavigationView {
//            NavigationLink(destination: Text("Second View")){
//                Text("Hello, World!")
//            }
//            .navigationTitle("Favorites")
//            .navigationBarTitleDisplayMode(.inline)
//        }
    }
}

struct Faves_Previews: PreviewProvider {
    static var previews: some View {
        Faves()
    }
}
