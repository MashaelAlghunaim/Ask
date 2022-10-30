//
//  Aljwhra1.swift
//  Ask
//
//  Created by Aljwhra Alnasser on 02/04/1444 AH.
//

import SwiftUI

struct Aljwhra1: View {
    var body: some View {
        
        VStack{
            
            HStack {
                
                
                VStack(alignment: .leading){
                    
                    HStack{
                        Spacer()
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
                        .padding(.top, -2.0)
                    
                }
                
                
            }
            .padding()
            .frame(maxWidth: .infinity)
            .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            
            
            
            VStack{
                
                HStack{
                    Spacer()
                    Text("منيرة")
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color.blue)
                        .fontWeight(.bold)
                    Text("الرد على")
                        .font(.title3)
                        .fontWeight(.bold)
                }
                .padding([.top, .leading, .bottom], 3.0)
              
                
                Text("من شأن الإكثار من شرب الماء أن يؤدي إلى ارتفاع في ضغط الدم لدى الإنسان إلى جانب انخفاض نبضات القلب. و تؤثر كثرة شرب الماء على مادة الصوديوم التي يعتمد عليها الجسم من أجل ضبط توازن السوائل داخل الخلايا و خارجه.")
                
                    .multilineTextAlignment(.trailing)
                    
                
                HStack{
                    
                    Text("٢٢ / ١٠ / ١٤٤٤هـ")
                        .font(.callout)
                        .foregroundColor(Color.gray)
                    Spacer()
                    Text("د. مشاعل صالح")
                        .foregroundColor(Color.blue)
                    
                    
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 35,height: 35)
                        .foregroundColor(Color.gray)
                    
    
                    
                }
                        
                
            }
            .padding()
            
            
            
        }
        
        
        
    }
        
    }


struct Aljwhra1_Previews: PreviewProvider {
    static var previews: some View {
        Aljwhra1()
    }
}



