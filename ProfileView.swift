//
//  ProfileView.swift
//  Ask
//
//  Created by Aljwhra Alnasser on 05/04/1444 AH.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        VStack{
            
            
            ZStack{
                
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 94,height: 94)
                    .foregroundColor(Color("lightGray"))
                    //.background(Color("lightBlue"))
                    .padding(.top, 120.0)
                    .padding(.leading,260.0)
            }
            
            .frame(maxWidth: .infinity ,maxHeight: 160)
            .background(Color("mediumBlue"))
            
          
            VStack{
                
                HStack{
                    Spacer()
                    Text("منيره      " )
                    Text("  الاسم")
                    

                }
                
                .padding()
//                .frame(maxWidth: .infinity,maxHeight: 70)
//                .border(Color("lightGray"), width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
               
                
                HStack{
                    
                    Image(systemName: "chevron.down")
                    Spacer()
                    Text("تاريخ الميلاد")
                   
                }
                .padding()
                .frame(maxWidth: .infinity,maxHeight: 70)
                .border(Color("lightGray"), width: 1)
                
                HStack{
                    
                    Image(systemName: "chevron.down")
                    Spacer()
                    Text("الجنس")
                }
                .padding()

                HStack{
                    Spacer()

                    Image(systemName: "ellipsis")
                    Image(systemName: "ellipsis")
                    Text("كلمة المرور")
                    
                    
                }
                .padding()
                .frame(maxWidth: .infinity,maxHeight: 70)
                .border(Color("lightGray"), width: 1)
                
                
                
            }
            
            .padding(.top, 70.0)
            Spacer()
            
            
            
        }
        
        
        
       
    }
    
    
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
    
    
}
