//
//  PostWithStruct.swift
//  Navigation
//
//  Created by Василий Васильевич on 04.04.2023.
//

import UIKit

class PostVC: UIViewController {

    var titlePost: String = "Posts"
    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(buttonPressed))
        navigationItem.rightBarButtonItem = button
        setupView()
    }
    @objc func buttonPressed(_sender: UIButton) {
        let infoViewController = InfoVC()
        infoViewController.modalTransitionStyle = .flipHorizontal
        infoViewController.modalPresentationStyle = .pageSheet
        present(infoViewController, animated: true)
    }
    func setupView() {
        self.view.backgroundColor = .lightGray
        self.navigationItem.title = titlePost
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
