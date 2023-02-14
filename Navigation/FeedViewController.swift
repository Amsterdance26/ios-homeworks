//
//  FeedViewController.swift
//  Navigation
//
//  Created by Василий Васильевич on 14.02.2023.
//

import UIKit

class FeedViewController: UIViewController {

    private let secondPost = Post(title: "PostViewController")

    override func viewDidLoad() {
        super.viewDidLoad()

        // Создаем кнопку
        let button = UIButton()

        // Устанавливаем текст на кнопке и цвет текста
        button.setTitle("Перейти к посту", for: .normal)
        button.setTitleColor(.blue, for: .normal)

        // Устанавливаем обработчик нажатия на кнопку
        button.addTarget(self, action: #selector(tapButton), for: .touchUpInside)

        // Отключаем автоматически сгенерированные констрейнты для кнопки
        button.translatesAutoresizingMaskIntoConstraints = false

        // Добавляем кнопку на экран
        view.addSubview(button)

        // Устанавливаем констрейнты для кнопки (центрируем ее на экране)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    // Обработчик нажатия на кнопку
    @objc private func tapButton() {
            let postVC = PostViewController()
            postVC.post = secondPost
            navigationController?.pushViewController(postVC, animated: true)
        }

}
