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

        // Add info button to navigation bar
        let infoButton = UIBarButtonItem(title: "Info", style: .plain, target: self, action: #selector(infoButtonTapped))
        navigationItem.rightBarButtonItem = infoButton

        // Set background color
        view.backgroundColor = UIColor.red
    }

    @objc func infoButtonTapped() {
        // Create and present InfoViewController modally
        let infoViewController = InfoViewController()
        let navController = UINavigationController(rootViewController: infoViewController)
        navController.modalPresentationStyle = .fullScreen
        present(navController, animated: true, completion: nil)
    }
}

class InfoViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Set title
        title = "Info"

        // Set background color
        view.backgroundColor = UIColor.blue
    }
}
