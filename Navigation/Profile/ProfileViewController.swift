//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Василий Васильевич on 22.02.2023.
//

import UIKit

class ProfileViewController: UIViewController {

    let headerView = ProfileHeaderView()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(headerView)
        self.view.backgroundColor = UIColor.lightGray
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        let headerViewHeight: CGFloat = 220.0
        let headerViewFrame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: headerViewHeight)
        headerView.frame = headerViewFrame
    }
}

