//
//  Model.swift
//  Navigation
//
//  Created by Василий Васильевич on 14.02.2023.
//

import Foundation

struct Post {
    var title: String
}

func main() {

    let myPost = Post(title: "Мой новый пост")
    let postViewController = PostViewController()
    postViewController.post = myPost
}
