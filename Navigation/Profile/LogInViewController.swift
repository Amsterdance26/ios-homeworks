//
//  LogInViewController.swift
//  Navigation
//
//  Created by Василий Васильевич on 16.03.2023.
//

import UIKit

class LogInViewController: UIViewController {

    let scrollView = UIScrollView()
    let contentView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.isHidden = true

        view.backgroundColor = .white

        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)

        let imageView = UIImageView(image: UIImage(named: "Logo"))
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(imageView)

        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.borderWidth = 0.5
        textField.layer.cornerRadius = 10
        textField.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        textField.backgroundColor = UIColor.systemGray6
        textField.autocapitalizationType = .none
        textField.placeholder = "Email or phone"
        contentView.addSubview(textField)

        let passwordField = UITextField()
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.layer.borderColor = UIColor.lightGray.cgColor
        passwordField.layer.borderWidth = 0.5
        passwordField.layer.cornerRadius = 10
        passwordField.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        passwordField.backgroundColor = UIColor.systemGray6
        passwordField.autocapitalizationType = .none
        passwordField.placeholder = "Password"
        contentView.addSubview(passwordField)

        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),

            contentView.widthAnchor.constraint(equalTo: view.widthAnchor),

            imageView.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 120),
            imageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 100),
            imageView.heightAnchor.constraint(equalToConstant: 100),

            textField.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 120),
            textField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            textField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            textField.heightAnchor.constraint(equalToConstant: 50),

            passwordField.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 0),
            passwordField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            passwordField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            passwordField.heightAnchor.constraint(equalToConstant: 50),
            passwordField.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor, constant: -16)
        ])
    }
}
