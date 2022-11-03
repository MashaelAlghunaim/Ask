//
//  Afnan log in.swift
//  Ask
//
//  Created by Afnan Alshrif on 02/04/1444 AH.
//

import SwiftUI

struct Afnan_log_in: View {
    @State private var email = ""
    @State private var password = ""
    @State private var wrongEmail = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    var body: some View {
        NavigationView {
            
            
            VStack {
                Text("مرحبًا مجددًا !")
                    .font(.largeTitle)
                Text("تسجيل دخول ")
                    .font(.largeTitle)
                TextField("عنوان البريد الإلكتروني " , text: $email)
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
                
                NavigationLink(destination: homePage()){
                
                Button("تسجيل الدخول ") {
                    
                }
                .foregroundColor(.white)
                .bold()
                .frame(width: 300, height: 50)
                .background(Color("lightBlue"))
                .cornerRadius(10)
                }
//                NavigationLink(destination: Text("you are logged in @\(email)"), isActive: $showingLoginScreen) {
//                    EmptyView()
//                }
                Button( " نسيت كلمة المرور؟") {
                    
                }.padding([.top, .bottom])
                HStack {
                    NavigationLink(destination:
                                    sign_up() ){
                        Button("إنشاء حساب") {
                            
                        }
                    }
                    Text("ليس لديك حساب؟")
                        .multilineTextAlignment(.trailing)
                        .padding(2)
                }
                NavigationLink(destination:
                                    homePage() ){
                    Button(" الدخول كزائر") {
                        
                    }
                }
            }
        }
            
        }
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                Afnan_log_in()
            }
        }
    }
