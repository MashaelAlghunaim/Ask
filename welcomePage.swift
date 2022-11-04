//
//  welcomePage.swift
//  Ask
//
//  Created by Mashael Alghunaim on 08/04/1444 AH.
//

import SwiftUI

struct welcomePage: View {
    @State private var isPresentedFullScreenCover = true
    @State private var presentClipboardView = false
    let time = 1.0
    var body: some View {
        ZStack{
            VStack{
            NavigationLink(destination: sign_up() ){
                Image(systemName: "house.fill")
                    .resizable()
                    .frame(width: 400,height: 400)
                
                
            }
            .padding()
            
                Text("اسأل سؤالك").font(.title)
            
            
        }
         
            
        }
        
    }
    
    
}

struct welcomePage_Previews: PreviewProvider {
    static var previews: some View {
        welcomePage()
    }
}

