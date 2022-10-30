//
//  Post.swift
//  Ask
//
//  Created by Alaa Alabdullah on 27/10/2022.
//

import Foundation

struct  Post : Identifiable {
    let id = UUID()
    let authorName: String
    let timestampText: String
    let text: String
    let numberOfLikes: Int
    let title: String
    let category: String
    
}
