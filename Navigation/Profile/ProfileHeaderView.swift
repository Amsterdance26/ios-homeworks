//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Василий Васильевич on 22.02.2023.
//

import UIKit

class ProfileHeaderView: UIView {
    let avatarImageView = UIImageView()
    let nameLabel = UILabel()
    let statusLabel = UILabel()
    let button = UIButton()

    override init(frame: CGRect) {
        super.init(frame: frame)

        // Set up button
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Show status", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = false
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7

        // Add target to button
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)

        // Add button as subview
        addSubview(button)

        // Add button constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            button.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            button.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 34),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])

        // Set up avatar image view
        let avatarImage = UIImage(named: "Cat")
        avatarImageView.image = avatarImage
        avatarImageView.contentMode = .scaleAspectFill
        avatarImageView.layer.cornerRadius = 30
        avatarImageView.layer.masksToBounds = true
        avatarImageView.layer.borderWidth = 3
        avatarImageView.layer.borderColor = UIColor.white.cgColor

        // Add avatar image view as subview
        addSubview(avatarImageView)

        // Add avatar image view constraints
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            avatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            avatarImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            avatarImageView.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -16),
            avatarImageView.widthAnchor.constraint(equalToConstant: 60),
            avatarImageView.heightAnchor.constraint(equalToConstant: 60)
        ])


        // Set up name label
        nameLabel.text = "White Cat"
        nameLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        nameLabel.textColor = .black

        // Add name label as subview
        addSubview(nameLabel)

        // Add constraints to name label
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: nameLabel.topAnchor, constant: 27),
            nameLabel.centerXAnchor.constraint(equalTo: nameLabel.centerXAnchor)
        ])

        // Set up status label
        statusLabel.text = "Waiting for something..."
        statusLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        statusLabel.textColor = .gray

        // Add status label as subview
        addSubview(statusLabel)

        // Add constraints to statusLabel
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            statusLabel.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -34),
            statusLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            statusLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor)
        ])


        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        // Set frame of avatar image view with insets and border width
        let safeArea = self.safeAreaInsets
        let inset: CGFloat = 16
        let borderWidth: CGFloat = 3
        let avatarSize: CGFloat = 60
        let avatarOrigin = CGPoint(x: safeArea.left + inset, y: safeArea.top + inset)
        avatarImageView.frame = CGRect(origin: avatarOrigin, size: CGSize(width: avatarSize, height: avatarSize))
        avatarImageView.layer.borderWidth = borderWidth

        // Set frame of name label
        let nameLabelOrigin = CGPoint(x: avatarImageView.frame.maxX + inset, y: safeArea.top + 27)
        let nameLabelSize = nameLabel.sizeThatFits(CGSize(width: bounds.width - nameLabelOrigin.x - inset, height: bounds.height - nameLabelOrigin.y - inset))
        nameLabel.frame = CGRect(origin: nameLabelOrigin, size: nameLabelSize)

        // Set frame of status label
        let statusLabelOrigin = CGPoint(x: nameLabelOrigin.x, y: nameLabel.frame.maxY + 8)
        let statusLabelSize = statusLabel.sizeThatFits(CGSize(width: bounds.width - statusLabelOrigin.x - inset, height: bounds.height - statusLabelOrigin.y - inset))
        statusLabel.frame = CGRect(origin: statusLabelOrigin, size: statusLabelSize)

        // Set button frame
        let buttonHeight: CGFloat = 50
        let buttonInset: CGFloat = 16
        let buttonWidth = bounds.width - (buttonInset * 2)
        let buttonOrigin = CGPoint(x: buttonInset, y: statusLabel.frame.maxY + buttonInset)
        button.frame = CGRect(origin: buttonOrigin, size: CGSize(width: buttonWidth, height: buttonHeight))


    }

    @objc func buttonPressed() {
            //обработчик нажатия кнопки
        }
}
