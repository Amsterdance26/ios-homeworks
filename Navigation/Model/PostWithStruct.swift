//
//  PostWithStruct.swift
//  Navigation
//
//  Created by Василий Васильевич on 04.04.2023.
//

import UIKit

struct Post {
    let title: String
    let description: String
    let image: String
    let likes: Int
    let views: Int
}
struct Posts {
    static var posts: [Post] = [Post(title: "", description: "", image: "", likes: 0, views: 0),
                            Post(title: "", description: "", image: "", likes: 0, views: 0)]
}
