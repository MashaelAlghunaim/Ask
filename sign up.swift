//
//  sign up.swift
//  Ask
//
//  Created by Afnan Alshrif on 05/04/1444 AH.
//

import SwiftUI

struct sign_up: View {
    @State private var email = ""
    @State private var password = ""
    @State private var wrongEmail = 0
    @State private var wrongPassword = 0
    @State private var fullName = ""
    @State private var wrongFullName = 0
    @State private var showingLoginScreen = false
    @State private var rewritePassword = ""
    
    var body: some View {
        NavigationView {
            
            
            VStack {
                Text("إنشاء حساب ")
                    .font(.largeTitle)
                    .padding()
                TextField("الاسم الكامل " , text: $fullName)
                    .multilineTextAlignment(.trailing)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .border(.red, width: CGFloat(wrongFullName))
                TextField("عنوان البريد الإلكتروني  " , text: $email)
                    .multilineTextAlignment(.trailing)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .border(.red, width: CGFloat(wrongEmail))
                
                
                SecureField(" كلمة المرور " , text: $password)
                    .multilineTextAlignment(.trailing)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .border(.red, width: CGFloat(wrongPassword))
                SecureField(" إعادة كتابة كلمة المرور" , text: $rewritePassword)
                    .multilineTextAlignment(.trailing)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .border(.red, width: CGFloat(wrongPassword))
                
                
                Button("إنشاء حساب  ") {
                    
                }
                .foregroundColor(.white)
                .frame(width: 300, height: 50)
                .background(Color("lightBlue"))
                .cornerRadius(10)
                NavigationLink(destination: Text("you are logged in @\(email)"), isActive: $showingLoginScreen) {
                    EmptyView()
                }
                HStack{
                    
                    
                    Button("تسجيل الدخول ") {
                        
                    }
                    Text("لديك حساب؟")
                        
                } .padding()
                
            }
            
        }
    }
    
}

struct sign_up_Previews: PreviewProvider {
    static var previews: some View {
        sign_up()
    }
}
