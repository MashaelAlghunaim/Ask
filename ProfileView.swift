//
//  ProfileView.swift
//  Ask
//
//  Created by Aljwhra Alnasser on 05/04/1444 AH.
//

import SwiftUI

struct ProfileView: View {
    
//    @State var title:String="This is my titile"
    
    var body: some View {
        
        VStack{
            
            
            ZStack{
                
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 94,height: 94)
                    .foregroundColor(Color("lightGray"))
                    .background(Color("lightBlue"))
                    .cornerRadius(360)
                    .padding(.top, 120.0)
                    .padding(.leading,260.0)
            }
            
            .frame(maxWidth: .infinity ,maxHeight: 160)
            .background(Color("mediumBlue"))
            
          
            VStack{
                
                HStack{
                    Spacer()
                    Text("منيرة      " )
                        .foregroundColor(Color("mediumBlue"))
                        .bold()
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
                
                
                
                Button(action: {
                    
//                    self.title = "Button #2 was pressed"
                }, label: {
                    Text("تسجيل الخروج")
                })
                
                .foregroundColor(Color.white)
                .frame(width: 300, height: 50)
                .background(Color.red)
                .cornerRadius(10)
                .padding(.top, 40.0)
               
                
                
                
            }
            
            .padding(.top, 70.0)
           
            
            VStack(spacing: 15){
                
                
                Text("تغيير كلمة المرور")
                    .foregroundColor(.blue)
                Text("حذف الحساب")
                
                    .foregroundColor(.red)
                 
                
            }
            .underline()
            .fontWeight(.bold)
            .padding()
            .padding(.leading, 230.0)
            
            
            
            Spacer()
        }
        
        
        
       
    }
    
    
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
    
    
}
