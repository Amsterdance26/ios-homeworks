//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Василий Васильевич on 22.02.2023.
//

import UIKit

class ProfileHeaderView: UIView {
    let avatarImageView = UIImageView()

    override init(frame: CGRect) {
        super.init(frame: frame)

        // Set up avatar image view
        let avatarImage = UIImage(named: "Cat")
        avatarImageView.image = avatarImage
        avatarImageView.contentMode = .scaleAspectFill
        avatarImageView.layer.masksToBounds = true
        avatarImageView.layer.borderWidth = 3
        avatarImageView.layer.borderColor = UIColor.white.cgColor

        // Add avatar image view as subview
        addSubview(avatarImageView)
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
        let avatarSize = min(bounds.width - safeArea.left - safeArea.right * inset, bounds.height - safeArea.top - safeArea.bottom * inset, 2000)
        let avatarOrigin = CGPoint(x: safeArea.left + inset, y: safeArea.top + inset)
        avatarImageView.layer.cornerRadius = avatarSize / 2

        avatarImageView.frame = CGRect(origin: avatarOrigin, size: CGSize(width: avatarSize, height: avatarSize))
        avatarImageView.layer.borderWidth = borderWidth
    }
}
