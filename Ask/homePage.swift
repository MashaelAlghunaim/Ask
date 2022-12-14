//
//  homePage.swift
//  Ask
//
//  Created by Mashael Alghunaim on 01/04/1444 AH.

//  Circle().frame(width: 60, height: //60).foregroundColor(Color("darkBlue")).position(x: 50, y: 450)
 // Image(systemName: "plus").foregroundColor(.white).position(x: 50, y: 450
import SwiftUI

struct homePage: View {
    init(){
    @State  var liked = true
        
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(Color("lightGray"))]
        }
//    let postss: [Post] = [
//        Post(authorName: "د. محمد", timestampText: "١٤٤٤/١٠/٢٢هـ", text: "من شأن الاكثار من شرب الماء ان يؤدي الى ارتفاع في ضغط الدم لدى الانسان الى جانب انخفاض نبضات...", numberOfLikes: 4, title: "هل الإكثار من شرب الماء له أضرار صحية؟", category: "الصحة العامة"),
//        Post(authorName: "د. محمد", timestampText: "١٤٤٤/١٠/٢٢هـ", text: "من شأن الاكثار من شرب الماء ان يؤدي الى ارتفاع في ضغط الدم لدى الانسان الى جانب انخفاض نبضات...", numberOfLikes: 3, title: "هل الإكثار من شرب الماء له أضرار صحية؟", category: "الصحة العامة"),
//        Post(authorName: "د. محمد", timestampText: "١٤٤٤/١٠/٢٢هـ", text: "من شأن الاكثار من شرب الماء ان يؤدي الى ارتفاع في ضغط الدم لدى الانسان الى جانب انخفاض نبضات...", numberOfLikes: 3, title: "هل الإكثار من شرب الماء له أضرار صحية؟", category: "الصحة العامة"),
//        Post(authorName: "د. محمد", timestampText: "١٤٤٤/١٠/٢٢هـ", text: "من شأن الاكثار من شرب الماء ان يؤدي الى ارتفاع في ضغط الدم لدى الانسان الى جانب انخفاض نبضات...", numberOfLikes: 3, title: "هل الإكثار من شرب الماء له أضرار صحية؟", category: "الصحة العامة")
//    ]
    let postss: [Post] = [
        Post(authorName: "د. محمد فتحي", timestampText: "١٤٤٤/١٠/٢٢هـ", text: "من شأن الاكثار من شرب الماء ان يؤدي الى ارتفاع في ضغط الدم لدى الانسان الى جانب انخفاض نبضات...", numberOfLikes: 4, title: "هل الإكثار من شرب الماء له أضرار صحية؟", category: "الصحة العامة"),
        Post(authorName: "د. ابراهيم فالح", timestampText: "١٤٤٤/١٠/٢٢هـ",text: "نقص فيتامين (د) قد يؤدي إلى الهشاشة و الإصابة بالعديد من الأامراض الأخرى، مؤكدًا أن فيتامين(د)...", numberOfLikes: 7, title: "هل نقص فيتامين د سبب في هشاشة العظام؟", category: "الصحة العامة"),
        Post(authorName: " د. الاء العبدالله ", timestampText:  "١٤٤٤/١٠/٢٢هـ", text:" القهوة تضر بصحة القلب و تزيد من ضغط الدم و مستوى الكوليسترول في الدم فضلًا عن أنها تزيد من خطر الإصابة...", numberOfLikes: 94, title: "هل كثرة القهوة تضر بصحة القلب؟", category: "الصحة العامة"),
        Post(authorName: "د. الجوهرة الناصر ", timestampText: "١٤٤٤/١٠/٢٢هـ", text:"الأكل غير المناسب لمرضى السكري؟ الأطعمة التي تحتوي على الدقيق الأبيض...", numberOfLikes: 88, title: "ما هي الأطعمة الممنوعة على مرضى السكري؟", category: "الصحة العامة")
        
    ]
        
    @State var searchText = ""
    @State var scrollViewContentSize: CGSize = .zero
    var body: some View {
        NavigationView {
            VStack{
                Spacer()
                Spacer()
                Spacer()
                    .padding()
                //Text("آخر المنشورات").foregroundColor(Color("mediumGray"))
                //                Spacer()
                
                //                Divider()
                Text(searchText).searchable(text: $searchText, prompt: "البحث")
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
                        .position(x: 90, y: 10).frame(alignment: .leading)
                        
                    }
                    .padding()
                    // Spacer()
                    Divider()
                }
                
                
                ZStack{
                    FeedView(posts: postss).frame(height: 600)
                    
                    VStack{
                        
                        
                        
                        ZStack{
                            NavigationLink(destination: SwiftUIView2Shoug()){
                                Image(systemName: "plus")
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .font(.headline)
                                    .frame(width: 100, height: 100)
                                    .frame(width: 150,height: 60)
                                    .background(Color("mediumBlue"))
                                    .clipShape(Circle()).frame(width: 200, height: 200).position(x: 50, y: 450)
                            }
                            
                        }
                        
                    }
                    
                }
            }
            .navigationBarTitle("آخر المنشورات", displayMode: .inline).frame(height: 20)
            
        }
        
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
                        
                    }
                    .padding(.top, 5)
                    
                    Text(post.title)
                        .font(.title3)
                        .scaledToFit()
                        .minimumScaleFactor(0.01)
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
                        .padding(.trailing, 30)
                }
                
            }
        }
    }
    
    struct PostActionViews: View {
        @State private var faved = false
        @State private var liked = true
        let post: Post
        var body: some View {
            HStack {
                
                Button(action: {}){
                    Image(systemName: "square.and.arrow.up")
                }
                .padding(.leading)
                Spacer()
                
                
                
                heartButton(faved: $faved)
                Spacer()
                
                Text(post.numberOfLikes > 0 ? "\(post.numberOfLikes)" : "")
                thumButton(liked: $liked).foregroundColor(Color("darkBlue"))
                
                
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
    
    struct heartButton: View{
        @Binding var faved: Bool
        var body: some View{
            Button(action: {self.faved.toggle()}, label: {
                if !faved {
                    Image(systemName: "heart")
                }else if faved {
                    Image(systemName: "heart.fill")
                        
                }
            })
            
        }
    }
    
    
    struct thumButton: View{
        @Binding var liked: Bool
        
        var body: some View{
            
            Button(action: {self.liked.toggle()}, label: {
                if !liked {
                    Image(systemName: "hand.thumbsup")
                }else if liked {
                    Image(systemName: "hand.thumbsup.fill")
                    
                }
            })
            
        }
    }
    






struct homePage_Previews: PreviewProvider {
    static var previews: some View {
        homePage()
        
        
    }
}
