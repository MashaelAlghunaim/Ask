//
//  Faves.swift
//  Ask
//
//  Created by Alaa Alabdullah on 27/10/2022.
//

import SwiftUI

struct Faves: View {
    var body: some View {
        
        NavigationView {
            NavigationLink(destination: Text("Second View")){
                Text("Hello, World!")
            }

            .navigationTitle("Favorites")
        }
    }
}
struct Faves_Previews: PreviewProvider {
    static var previews: some View {
        Faves()
    }
}
