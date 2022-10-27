//
//  SwiftUIView Shoug.swift
//  Ask
//
//  Created by Shouq Turki Bin Tuwaym on 05/04/1444 AH.
//

import SwiftUI

struct SwiftUIView_Shoug: View {
    
        @State var givenText: String = ""
        @State var sentMessages: String = ""
        
        var body: some View {
            NavigationView{
                VStack {
                    Text("").frame(height: 5)
                    
                    Divider()
                    
                    Form{
                        Section{
                            Text(sentMessages)
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .multilineTextAlignment(.trailing)
                        }
                    }.scrollContentBackground(.hidden)
                    
                    Spacer()
                    
                    
                    HStack{
                        
                        HStack (alignment: .center) {
                            Button(action:{
                                
                                sentMessages +=  givenText + "\r\n"
                                givenText = ""
                            }){
                                Image(systemName:"arrow.up.circle.fill")
                                    .resizable()
                                    .frame(width: 30, height: 30, alignment: .center)
                                    .foregroundColor(.gray)
                            }
                            
                            TextField(
                                "اكتب سؤالك هنا"                   ,
                                text: $givenText, axis: .vertical
                            )
                            .lineLimit(6)
                            .multilineTextAlignment(.trailing)
                            
                        }
                        .padding()
                        .background(
                            RoundedRectangle(
                                cornerRadius: 10
                            )
                            .stroke(
                                Color.init(
                                    red:230/255,
                                    green:230/255,
                                    blue: 230/255
                                ),
                                lineWidth:1
                            )
                        )
                        .background(
                            RoundedRectangle(
                                cornerRadius: 10
                            )
                            .fill(
                                Color.init(
                                    red:250/255,
                                    green:250/255,
                                    blue: 250/255
                                )
                            )
                        )
                        .offset(x: 0, y: -20)
                        
                    } .padding()
                }
            }
            
            }
        }


struct SwiftUIView_Shoug_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView_Shoug()
    }
}
