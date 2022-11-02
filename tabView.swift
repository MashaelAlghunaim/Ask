//
//  tabView.swift
//  Ask
//
//  Created by Mashael Alghunaim on 06/04/1444 AH.
//

import SwiftUI

struct tabView: View {
    @State var selection: Int = 0
    var body: some View {
        
        TabView {
            profilePage()
                .tabItem {
                    Label("حسابي", systemImage:"person.circle")
                    
                }
                .toolbar(.visible, for: .tabBar)
            
                .toolbarBackground(Color("veryLightGray"),for: .tabBar)
            favorites()
                .tabItem {
                    Label("المفضلة", systemImage: "heart.circle")
                }
                .toolbar(.visible, for: .tabBar)
            
                .toolbarBackground(Color("veryLightGray"),for: .tabBar)
        
            homePage()
                .tabItem {
                    Label("الرئيسية", systemImage: "house.circle")
                }
                .toolbar(.visible, for: .tabBar)
            
                .toolbarBackground(Color("veryLightGray"),for: .tabBar)
        }
    }
    
struct tabView_Previews: PreviewProvider {
    static var previews: some View {
        tabView()
    }
}
}

