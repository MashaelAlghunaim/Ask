//
//  ContentViewTab.swift
//  Ask
//
//  Created by Aljwhra Alnasser on 05/04/1444 AH.
//

import SwiftUI

struct ContentViewTab: View {
    var body: some View {
        TabView{
            
            
            
            ProfileView()
                .tabItem{
                    Image(systemName: "person.crop.circle")
                    Text("حسابي")
                }
            
            SwiftUIView()
                .tabItem{
                    Image(systemName: "house.circle")
                    Text("الرئيسية")
                }
            
            
        }
        .accentColor(.orange)
    }
}

struct ContentViewTab_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewTab()
    }
}
