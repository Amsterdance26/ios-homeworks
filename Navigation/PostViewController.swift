//
//  PostViewController.swift
//  Navigation
//
//  Created by Василий Васильевич on 14.02.2023.
//

import UIKit

class PostViewController: UIViewController {
    var post: Post?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let postTitle = post?.title {
            title = postTitle
        }
        view.backgroundColor = UIColor.red
    }
}
