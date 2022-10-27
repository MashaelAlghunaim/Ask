//
//  Aljwhra1.swift
//  Ask
//
//  Created by Aljwhra Alnasser on 02/04/1444 AH.
//

import SwiftUI

struct Aljwhra1: View {
    var body: some View {
        
        HStack {
            
            
            VStack(alignment: .leading){
                
                HStack{
                    Text("منيرة")
                        .foregroundColor(Color.blue)
                    
                    Image("Image")
                             .resizable()
                             .frame(width: 50,height: 50)
                             
                    
                }
              
                

                Text("هل  الإكثار من شرب الماء له أضرار صحية؟")
                    .font(.title3)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.trailing)
                    
                Text("٢٢ / ١٠ / ١٤٤٤هـ")
                    .font(.callout)
                    .foregroundColor(Color.gray)
                    
                
            }
            
            
            
            
        }
        .padding()
        .frame(maxWidth: .infinity)
        .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
        
        
        
        VStack{
            Text("الرد على منيرة")
                .multilineTextAlignment(.trailing)
                .padding()
            
        }
        
        }
        
    }


struct Aljwhra1_Previews: PreviewProvider {
    static var previews: some View {
        Aljwhra1()
    }
}
