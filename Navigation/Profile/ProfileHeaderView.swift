//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Василий Васильевич on 22.02.2023.
//

import UIKit

    class ProfileHeaderView: UIView {

        private let avatarImageView: UIImageView = {
            let imageView = UIImageView()
            imageView.image = UIImage(named: "Cat")
            imageView.contentMode = .scaleAspectFill
            imageView.layer.cornerRadius = 30
            imageView.layer.masksToBounds = true
            imageView.layer.borderWidth = 3
            imageView.layer.borderColor = UIColor.white.cgColor
            imageView.translatesAutoresizingMaskIntoConstraints = false
            return imageView
        }()

        private let fullNameLabel: UILabel = {
            let label = UILabel()
            label.text = "White Cat"
            label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
            label.textColor = .black
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()

        private let statusLabel: UILabel = {
            let label = UILabel()
            label.text = "Waiting for something..."
            label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
            label.textColor = .gray
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()

        private let statusTextField: UITextField = {
            let textField = UITextField()
            textField.placeholder = "Enter new status"
            textField.borderStyle = .roundedRect
            textField.translatesAutoresizingMaskIntoConstraints = false
            return textField
        }()

        private let setStatusButton: UIButton = {
            let button = UIButton()
            button.backgroundColor = .systemBlue
            button.setTitle("Set status", for: .normal)
            button.layer.cornerRadius = 4
            button.layer.masksToBounds = false
            button.layer.shadowOffset = CGSize(width: 4, height: 4)
            button.layer.shadowRadius = 4
            button.layer.shadowColor = UIColor.black.cgColor
            button.layer.shadowOpacity = 0.7
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()

        override init(frame: CGRect) {
            super.init(frame: frame)
            setupSubviews()
        }

        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

        private func setupSubviews() {
            addSubview(avatarImageView)
            addSubview(fullNameLabel)
            addSubview(statusLabel)
            addSubview(statusTextField)
            addSubview(setStatusButton)

            NSLayoutConstraint.activate([
                avatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
                avatarImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
                avatarImageView.widthAnchor.constraint(equalToConstant: 60),
                avatarImageView.heightAnchor.constraint(equalToConstant: 60),

                fullNameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 16),
                fullNameLabel.topAnchor.constraint(equalTo: avatarImageView.topAnchor),

                statusLabel.leadingAnchor.constraint(equalTo: fullNameLabel.leadingAnchor),
                statusLabel.topAnchor.constraint(equalTo: fullNameLabel.bottomAnchor, constant: 8),

                statusTextField.leadingAnchor.constraint(equalTo: statusLabel.leadingAnchor),
                statusTextField.trailingAnchor.constraint(equalTo: setStatusButton.leadingAnchor, constant: -8),
                statusTextField.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 8),

                setStatusButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
                setStatusButton.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 8),
                setStatusButton.widthAnchor.constraint(equalToConstant: 80),
                setStatusButton.heightAnchor.constraint(equalToConstant: 36)
            ])

            setStatusButton.addTarget(self, action: #selector(setStatus), for: .touchUpInside)
        }

        @objc private func setStatus() {
            guard let newStatus = statusTextField.text else { return }
            statusLabel.text = newStatus
            statusTextField.text = ""
        }
    }
