//
//  Faves.swift
//  Ask
//
//  Created by Alaa Alabdullah on 27/10/2022.
//

import SwiftUI

struct Faves: View {
    private let posts: [Post] = [
        Post(authorName: "د. محمد", timestampText: "١٤٤٤/١٠/٢٢هـ", text: "من شأن الاكثار من شرب الماء ان يؤدي الى ارتفاع في ضغط الدم لدى الانسان الى جانب انخفاض نبضات...", numberOfLikes: 3, title: "هل الإكثار من شرب الماء له أضرار صحية؟", category: "الصحة العامة"),
        Post(authorName: "د. محمد", timestampText: "١٤٤٤/١٠/٢٢هـ", text: "من شأن الاكثار من شرب الماء ان يؤدي الى ارتفاع في ضغط الدم لدى الانسان الى جانب انخفاض نبضات...", numberOfLikes: 3, title: "هل الإكثار من شرب الماء له أضرار صحية؟", category: "الصحة العامة"),
        Post(authorName: "د. محمد", timestampText: "١٤٤٤/١٠/٢٢هـ", text: "من شأن الاكثار من شرب الماء ان يؤدي الى ارتفاع في ضغط الدم لدى الانسان الى جانب انخفاض نبضات...", numberOfLikes: 3, title: "هل الإكثار من شرب الماء له أضرار صحية؟", category: "الصحة العامة"),
        Post(authorName: "د. محمد", timestampText: "١٤٤٤/١٠/٢٢هـ", text: "من شأن الاكثار من شرب الماء ان يؤدي الى ارتفاع في ضغط الدم لدى الانسان الى جانب انخفاض نبضات...", numberOfLikes: 3, title: "هل الإكثار من شرب الماء له أضرار صحية؟", category: "الصحة العامة")
    ]
    
    @State private var selectedTab = 0
    var body: some View {
        
        ZStack{
            TabView(selection: $selectedTab, content: {
                FeedView(posts: posts).tabItem{ Text("label 1")}.tag(0)
                Text("tab content 2").tabItem{ Text("label 2")}.tag(2)
            })
        
            // New Question Button
            VStack{
                Spacer()
                HStack{
                    
                    NewQButton()
                        .padding(.bottom, 65)
                        .padding(.trailing)
                        .padding(.leading, 30)
                    Spacer()
                     
                }
            }
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
// new q button view
struct NewQButton: View{
    var body: some View{
        Button(action: {}){
//            Image(systemName: "pencil")
//                .font(.largeTitle)
//                .foregroundColor(.white)
//                .padding()
        }
        .background(Color.blue)
        .mask(Circle())
        .shadow(radius: 5)
    }
}

// feed view
struct FeedView: View {
    let posts: [Post]
    
    var body: some View{
        NavigationView{
            List(posts) { post in
                PostView(post: post)
            }
            .listStyle(PlainListStyle())
            .navigationBarTitle("المفضلة", displayMode: .inline)
//            .navigationBarItems(leading: Button(action: {}){
//                Image(systemName: "person.crop.circle.fill")
//                    .foregroundColor(.blue)
//            }, trailing: Button(action: {}){
//                Image(systemName: "moon.stars")
//                    .foregroundColor(.blue)
//            })
        }
    }
}

struct PostView: View {
    let post: Post
    var body: some View {
        VStack(alignment: .trailing){
            
            HStack(alignment: .top){
                
                Text(post.authorName)
                 //   .bold()
                    .lineLimit(1)
                    .padding(.top, 5)
                
                Image(systemName: "person.crop.circle.fill")
                    .font(.system(size: 30))
                    .padding(.trailing, 5)
                    .foregroundColor(.gray)
                
                
            }
                VStack(alignment: .trailing){
                    HStack{
//                        Text(post.authorName)
//                            .bold()
//                            .lineLimit(1)
//                        Text("\(post.authorName)•\(post.timestampText)")
//                            .lineLimit(1)
//                            .truncationMode(.middle)
//                            .foregroundColor(.gray)
                    }
                    .padding(.top, 5)
                    
                    Text(post.title)
                        .font(.title3)
                        .bold()
                        .lineLimit(nil)
                        .padding(.bottom, 5)
                        .multilineTextAlignment(.leading)
                    
                    Text(post.text)
                        .foregroundColor(.gray)
                        .lineLimit(nil)
                        .multilineTextAlignment(.leading)
                    HStack{
                        
                        Text(post.timestampText)
                            .foregroundColor(.gray)
                            .font(.system(size: 12))
                            .padding(3)
                        Spacer()
                    }
                    Divider()
                    PostActionViews(post: post)
                        .foregroundColor(.gray)
                       // .padding([.bottom, .top], 10)
                        .padding(.trailing, 30)
                }
                
            }
    }
}

struct PostActionViews: View {
    let post: Post
    var body: some View {
        HStack {
            
            Button(action: {}){
                Image(systemName: "square.and.arrow.up")
            }
            .padding(.leading)
            Spacer()
            
            Button(action: {}){
                Image(systemName: "heart")
            }
            Spacer()
            
            Text(post.numberOfLikes > 0 ? "\(post.numberOfLikes)" : "")
            Button(action: {}){
                
                Image(systemName: "hand.thumbsup")
            }
            Spacer()
            Spacer()
            Spacer()
            
                Text(post.category)
                    .foregroundColor(.blue)
                    .padding([.top, .bottom],3)
                    .padding([.leading, .trailing])
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.blue, lineWidth: 1)
                    )
            
        }
    }
}

struct Faves_Previews: PreviewProvider {
    static var previews: some View {
        Faves()
    }
}
