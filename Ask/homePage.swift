//
//  homePage.swift
//  Ask
//
//  Created by Mashael Alghunaim on 01/04/1444 AH.
//    ZStack{
//Circle().frame(width: 80, height: 80).foregroundColor(Color("darkBlue")).position(x: 60, y: 155)
//Image(systemName: "plus").foregroundColor(.white).position(x: 60, y: 155)
//
//}

import SwiftUI

struct homePage: View {
    @State var searchText = ""
    @State var scrollViewContentSize: CGSize = .zero
    var body: some View {
        NavigationView{
            VStack{
                Text("آخر المنشورات").foregroundColor(Color("mediumGray"))
                Spacer()
                Text(searchText).searchable(text: $searchText, prompt: "البحث")
                Divider()
                ScrollView(.horizontal){
                    HStack( spacing: 0){
                        //ForEach(0..<8){_ in
                        
                        RoundedRectangle(cornerRadius: 360).fill(Color("darkBlue")).frame(width: 130, height: 20).overlay(HStack(){
                            Text("الجميع").foregroundColor(.white).fontWeight(.bold).frame(maxWidth: .infinity, alignment: .center).padding()
                        })
                        .position(x: 10, y: 10).frame(alignment: .trailing)
                        
                        RoundedRectangle(cornerRadius: 360).fill(Color("lightBlue")).frame(width: 130, height: 20).overlay(HStack(){
                            Text("الصحة العامة").foregroundColor(.white).fontWeight(.bold).frame(maxWidth: .infinity, alignment: .center).padding()
                        })
                        .position(x: 20, y: 10).frame(alignment: .trailing)
                        
                        RoundedRectangle(cornerRadius: 360).fill(Color("lightBlue")).frame(width: 130, height: 20).overlay(HStack(){
                            Text("العظام و المفاصل").foregroundColor(.white).fontWeight(.bold).frame(maxWidth: .infinity, alignment: .center).padding()
                        })
                        .position(x: 30, y: 10).frame(alignment: .trailing)
                        
                        RoundedRectangle(cornerRadius: 360).fill(Color("lightBlue")).frame(width: 130, height: 20).overlay(HStack(){
                            Text("الجهاز الهضمي").foregroundColor(.white).fontWeight(.bold).frame(maxWidth: .infinity, alignment: .center).padding()
                        })
                        .position(x: 40, y: 10).frame(alignment: .trailing)
                        
                        RoundedRectangle(cornerRadius: 360).fill(Color("lightBlue")).frame(width: 130, height: 20).overlay(HStack(){
                            Text("الطب الشعبي").foregroundColor(.white).fontWeight(.bold).frame(maxWidth: .infinity, alignment: .center).padding()
                        })
                        .position(x: 50, y: 10).frame(alignment: .trailing)
                        
                        RoundedRectangle(cornerRadius: 360).fill(Color("lightBlue")).frame(width: 130, height: 20).overlay(HStack(){
                            Text("الجهاز التنفسي").foregroundColor(.white).fontWeight(.bold).frame(maxWidth: .infinity, alignment: .center).padding()
                        })
                        .position(x: 60, y: 10).frame(alignment: .trailing)
                        RoundedRectangle(cornerRadius: 360).fill(Color("lightBlue")).frame(width: 130, height: 20).overlay(HStack(){
                            Text("العلاج الطبيعي").foregroundColor(.white).fontWeight(.bold).frame(maxWidth: .infinity, alignment: .center).padding()
                        })
                        .position(x: 70, y: 10).frame(alignment: .trailing)
                        RoundedRectangle(cornerRadius: 360).fill(Color("lightBlue")).frame(width: 130, height: 20).overlay(HStack(){
                            Text("الجلدية").foregroundColor(.white).fontWeight(.bold).frame(maxWidth: .infinity, alignment: .center).padding()
                        })
                        .position(x: 80, y: 10).frame(alignment: .trailing)
                        RoundedRectangle(cornerRadius: 360).fill(Color("lightBlue")).frame(width: 130, height: 20).overlay(HStack(){
                            Text("النساء و الولادة").foregroundColor(.white).fontWeight(.bold).frame(maxWidth: .infinity, alignment: .center).padding()
                        })
                        .position(x: 90, y: 10).frame(alignment: .trailing)
                        
                    }
                    .padding()
                    Spacer()
                }
                
            }
        }
        
        
        
        
    }
    
}






struct homePage_Previews: PreviewProvider {
    static var previews: some View {
        homePage()
    }
}
