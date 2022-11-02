//
//  welcomePage.swift
//  Ask
//
//  Created by Mashael Alghunaim on 08/04/1444 AH.
//

import SwiftUI

struct welcomePage: View {
    var body: some View {
        NavigationView{
            
           
                
                
                NavigationLink(destination:
                               sign_up() ){
                    Image(systemName: "house")
                        .resizable()
                        .frame(width: 550,height: 600)
                }

           
        }
    }
}

struct welcomePage_Previews: PreviewProvider {
    static var previews: some View {
        welcomePage()
    }
}

