//
//  SwiftUIView2Shoug.swift
//  Ask
//
//  Created by Shouq Turki Bin Tuwaym on 05/04/1444 AH.
//

import SwiftUI

struct SwiftUIView2Shoug: View {
    var body: some View {
        VStack (spacing: 40) {
            Text("مرحبًا بك في اسأل\r\nماهو نوع سؤالك")
                .multilineTextAlignment(.center).lineSpacing(22)
            VStack(spacing: 7){
                HStack(spacing: 7) {
                    Button(action:{ () -> Void in}){
                        VStack{
                            Image(systemName: "figure.walk").foregroundColor(.white)
                                .padding(5)
                            Text("العظام والمفاصل").foregroundColor(.white)
                        }
                        .padding()
                        .frame(
                            minWidth: 0,
                            maxWidth: .infinity,
                            alignment: .center
                        )
                        .frame(height: 100)
                        .background(Color.init(red: 46/255, green: 144/255, blue:183/255))
                        .cornerRadius(10)
                        .padding(0)
                    }
                    
                    Button(action:{ () -> Void in}){
                        VStack{
                            Image(systemName: "list.clipboard.fill").foregroundColor(.white)
                                .padding(5)
                            Text(("الصحة العامة")).foregroundColor(.white)
                        }
                        .padding()
                        .frame(
                            minWidth: 0,
                            maxWidth: .infinity,
                            alignment: .center
                        )
                        .frame(height: 100)
                        .background(Color.init(red: 46/255, green: 144/255, blue:183/255))
                        .cornerRadius(10)
                        .padding(0)
                    }
                }.padding(0)
                
                HStack(spacing: 7) {
                    Button(action:{ () -> Void in}){
                        VStack{
                            Image(systemName: "bubbles.and.sparkles.fill").foregroundColor(.white)
                                .padding(5)
                            Text("الطب الشعبي ").foregroundColor(.white)
                        }
                        .padding()
                        .frame(
                            minWidth: 0,
                            maxWidth: .infinity,
                            alignment: .center
                        )
                        .frame(height: 100)
                        .background(Color.init(red: 46/255, green: 144/255, blue:183/255))
                        .cornerRadius(10)
                        .padding(0)
                    }
                    Button(action:{ () -> Void in}){
                        VStack{
                            Image(systemName: "heart.text.square.fill").foregroundColor(.white)
                                .padding(5)
                            Text("أمراض الباطنية ").foregroundColor(.white)
                        }
                        .padding()
                        .frame(
                            minWidth: 0,
                            maxWidth: .infinity,
                            alignment: .center
                        )
                        .frame(height: 100)
                        .background(Color.init(red: 46/255, green: 144/255, blue:183/255))
                        .cornerRadius(10)
                        .padding(0)
                    }
                }.padding(0)
                
                HStack(spacing: 7) {
                    Button(action:{ () -> Void in}){
                        VStack{
                            Image(systemName: "figure.strengthtraining.functional").foregroundColor(.white)
                                .padding(5)
                            Text("العلاج الطبيعي").foregroundColor(.white)
                        }
                        .padding()
                        .frame(
                            minWidth: 0,
                            maxWidth: .infinity,
                            alignment: .center
                        )
                        .frame(height: 100)
                        .background(Color.init(red: 46/255, green: 144/255, blue:183/255))
                        .cornerRadius(10)
                        .padding(0)
                    }
                    Button(action:{ () -> Void in}){
                        VStack{
                            Image(systemName: "lungs.fill").foregroundColor(.white)
                                .padding(5)
                            Text("أمراض الجهاز التنفسي").foregroundColor(.white)
                        }
                        .padding()
                        .frame(
                            minWidth: 0,
                            maxWidth: .infinity,
                            alignment: .center
                        )
                        .frame(height: 100)
                        .background(Color.init(red: 46/255, green: 144/255, blue:183/255))
                        .cornerRadius(10)
                        .padding(0)
                    }
                }.padding(0)
                
                HStack(spacing: 7) {
                    Button(action:{ () -> Void in}){
                        VStack{
                            Image("Girl")
                                .resizable()
                                .frame(width:13, height:24)
                                .padding(5)
                            Text("النساء والولادة").foregroundColor(.white)
                        }
                        .padding()
                        .frame(
                            minWidth: 0,
                            maxWidth: .infinity,
                            alignment: .center
                        )
                        .frame(height: 100)
                        .background(Color.init(red: 46/255, green: 144/255, blue:183/255))
                        .cornerRadius(10)
                        .padding(0)
                    }
                    Button(action:{ () -> Void in}){
                        VStack{
                            Image(systemName: "allergens.fill").foregroundColor(.white)
                                .padding(5)
                            Text("الجلدية").foregroundColor(.white)
                        }
                        .padding()
                        .frame(
                            minWidth: 0,
                            maxWidth: .infinity,
                            alignment: .center
                        )
                        .frame(height: 100)
                        .background(Color.init(red: 46/255, green: 144/255, blue:183/255))
                        .cornerRadius(10)
                        .padding(0)
                    }
                }.padding(0)
            }.padding(14)
            
//          navigationBarBackButtonHidden(false)
        }
    }
}


struct SwiftUIView2Shoug_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView2Shoug()
    }
}
