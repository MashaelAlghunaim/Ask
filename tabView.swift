//
//  tabView.swift
//  Ask
//
//  Created by Mashael Alghunaim on 06/04/1444 AH.
//

import SwiftUI

struct tabView: View {
    var body: some View {
        
        TabView {
                       SwiftUIView()
                           .tabItem {
                               Label("حسابي", systemImage:"person.circle")
                           }
                 
                 SwiftUIView()
                     .tabItem {
                         Label("المفضلة", systemImage: "heart.circle")
                     }

                       SwiftUIView()
                           .tabItem {
                               Label("الرئيسية", systemImage: "house.circle")
                           }
                   }
             
               }
           }


struct tabView_Previews: PreviewProvider {
    static var previews: some View {
        tabView()
    }
}
