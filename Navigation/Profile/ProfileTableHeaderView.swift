//
//  ProfileTableHeaderView.swift
//  Navigation
//
//  Created by Василий Васильевич on 17.04.2023.
//

import UIKit

class ProfileTableHeaderView: UIView {
    private let headerView: ProfileHeaderView = {
        let view = ProfileHeaderView()
        view.backgroundColor = .white
        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private func commonInit() {
        backgroundColor = .lightGray
        setupHeaderView()
        setupConstraints()
    }

    private func setupHeaderView() {
        addSubview(headerView)
    }

    private func setupConstraints() {
        headerView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            headerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            headerView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 220)
        ])
    }
}
