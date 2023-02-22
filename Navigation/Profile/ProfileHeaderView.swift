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

    override init(frame: CGRect) {
        super.init(frame: frame)

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

        // Set up name label
        nameLabel.text = "White Cat"
        nameLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        nameLabel.textColor = .white

        // Add name label as subview
        addSubview(nameLabel)

        // Set up status label
        statusLabel.text = "Waiting for something..."
        statusLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        statusLabel.textColor = .gray

        // Add status label as subview
        addSubview(statusLabel)

        
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

        

    }
}
