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

        let infoButton = UIBarButtonItem(title: "Инфо", style: .plain, target: self, action: #selector(infoButtonTapped))
        navigationItem.rightBarButtonItem = infoButton

        view.backgroundColor = UIColor.red
    }
    
    @objc func infoButtonTapped() {
        let infoViewController = InfoViewController()
        let navController = UINavigationController(rootViewController: infoViewController)
        navController.modalPresentationStyle = .pageSheet
        present(navController, animated: true, completion: nil)
    }
}
