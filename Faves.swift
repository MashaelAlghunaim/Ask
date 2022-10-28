//
//  Faves.swift
//  Ask
//
//  Created by Alaa Alabdullah on 27/10/2022.
//

import SwiftUI

struct Faves: View {
    @State private var selectedTab = 0
    var body: some View {
        
        ZStack{
            TabView(selection: $selectedTab, content: {
                Text("tab content 1").tabItem{ Text("label 1")}.tag(0)
                Text("tab content 2").tabItem{ Text("label 2")}.tag(2)
            })
        }
        
        
        
//        NavigationView {
//            NavigationLink(destination: Text("Second View")){
//                Text("Hello, World!")
//            }
//            .navigationTitle("Favorites")
//            .navigationBarTitleDisplayMode(.inline)
//        }
    }
}

struct PostView: View {
    let post: Post
    var body: some View {
        HStack(alignment: .top){
            Image(systemName: "person.crop.circle.fill")
                .font(.system(size: 55))
                .padding(.top)
                .padding(.trailing, 5)
                .foregroundColor(.blue)
            
            VStack(alignment: .leading){
                HStack{
                    Text(post.authorName)
                        .bold()
                        .lineLimit(1)
                    Text("\(post.authorName)•\(post.timestampText)")
                        .lineLimit(1)
                        .truncationMode(.middle)
                        .foregroundColor(.gray)
                }
                .padding(.top, 5)
                
                Text(post.text)
                    .lineLimit(nil)
                    .multilineTextAlignment(.leading)
                
            }
            
        }
    }
}

struct PostActionViews: View {
    let post: Post
    var body: some View {
        HStack {
            Button(action: {}){
                Image(systemName: "message")
            }
            Text(post.numberOfLikes > 0 ? "\(post.numberOfLikes)" : "")
            Spacer()
            
            Button(action: {}){
                Image(systemName: "square.and.arrow.up")
            }
            Spacer()
            Button(action: {}){
                Image(systemName: "heart")
            }
        }
    }
}

struct Faves_Previews: PreviewProvider {
    static var previews: some View {
        Faves()
    }
}
