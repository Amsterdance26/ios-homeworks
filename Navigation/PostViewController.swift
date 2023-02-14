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

        // Add button to show alert controller
        let showAlertButton = UIButton(type: .system)
        showAlertButton.setTitle("Show Alert", for: .normal)
        showAlertButton.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        showAlertButton.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        showAlertButton.center = view.center
        view.addSubview(showAlertButton)
    }

    @objc func showAlert() {
        let alertController = UIAlertController(title: "Alert", message: "This is an alert message", preferredStyle: .alert)

        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { _ in
            print("Cancel button tapped")
        }

        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            print("OK button tapped")
        }

        alertController.addAction(cancelAction)
        alertController.addAction(okAction)

        present(alertController, animated: true, completion: nil)
    }
}


