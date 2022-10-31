//
//  infoView.swift
//  Ask
//
//  Created by Mashael Alghunaim on 06/04/1444 AH.
//

import SwiftUI

struct infoView: View {
    var body: some View {
        VStack(spacing: -10){
            RoundedRectangle(cornerRadius: 25).fill(Color("darkBlue")).frame( height: 75).overlay(HStack(){
                Text("آخر المنشورات").foregroundColor(.white).fontWeight(.bold).frame(maxWidth: .infinity, alignment: .trailing).padding()
            })
            .padding(.all)
            RoundedRectangle(cornerRadius: 25).fill(Color("mediumBlue")).frame( height: 75).overlay(HStack{
                Text("اسأل سؤالك").foregroundColor(.white).fontWeight(.bold).frame(maxWidth: .infinity, alignment: .trailing).padding()
            })
            .padding(.all)
            RoundedRectangle(cornerRadius: 25).fill(Color("mediumBlue")).frame( height: 75).overlay(HStack{
                Text("جميع أسئلتي").foregroundColor(.white).fontWeight(.bold).frame(maxWidth: .infinity, alignment: .trailing)
                    .padding()
            })
            .padding(.all)
            
        }

    }
}

struct infoView_Previews: PreviewProvider {
    static var previews: some View {
        infoView()
    }
}
