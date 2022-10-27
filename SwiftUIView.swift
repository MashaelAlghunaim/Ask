//
//  SwiftUIView.swift
//  Ask
//
//  Created by Mashael Alghunaim on 01/04/1444 AH.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20){
                Text("آخر المنشورات")
                Text("اسال سؤال")
                Text("جميع أسئلتي")
                
            }
            .font(.subheadline)
            .fontWeight(.heavy)
            .padding()
            .frame(maxWidth: .infinity)
            .foregroundColor(.white)
            .background(Color("lightBlue"))
            .cornerRadius(15)
                    }
    }
    }

    

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
