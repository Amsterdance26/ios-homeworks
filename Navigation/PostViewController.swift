//
//  PostViewController.swift
//  Navigation
//
//  Created by Василий Васильевич on 14.02.2023.
//

import UIKit

class PostViewController: UIViewController {
var post: Post? // определение переменной для хранения поста

    override func viewDidLoad() {
        super.viewDidLoad()

        // Добавление кнопки "Инфо" на навигационную панель
        let infoButton = UIBarButtonItem(title: "Инфо", style: .plain, target: self, action: #selector(infoButtonTapped))
        navigationItem.rightBarButtonItem = infoButton

        // Установка цвета фона
        view.backgroundColor = UIColor.red
    }

    @objc func infoButtonTapped() {
        // Создание и отображение InfoViewController в модальном режиме
        let infoViewController = InfoViewController()
        let navController = UINavigationController(rootViewController: infoViewController)
        navController.modalPresentationStyle = .fullScreen
        present(navController, animated: true, completion: nil)
    }
}
