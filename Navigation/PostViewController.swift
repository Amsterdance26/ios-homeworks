//
//  PostViewController.swift
//  Navigation
//
//  Created by Василий Васильевич on 14.02.2023.
//

import UIKit

class PostViewController: UIViewController { // Создание класса PostViewController, наследующего UIViewController
    var post: Post? // определение переменной для хранения поста
    
    override func viewDidLoad() {
        super.viewDidLoad() // вызов метода viewDidLoad() суперкласса
        
        // Добавление кнопки "Инфо" на навигационную панель
        let infoButton = UIBarButtonItem(title: "Инфо", style: .plain, target: self, action: #selector(infoButtonTapped))
        navigationItem.rightBarButtonItem = infoButton
        
        // Установка цвета фона
        view.backgroundColor = UIColor.red // устанавливаем красный цвет для фона view
    }
    
    @objc func infoButtonTapped() {
        // Создание и отображение InfoViewController в модальном режиме
        let infoViewController = InfoViewController() // создаем экземпляр InfoViewController
        let navController = UINavigationController(rootViewController: infoViewController) // создаем UINavigationController и устанавливаем InfoViewController как корневой контроллер
        navController.modalPresentationStyle = .fullScreen // устанавливаем стиль отображения UINavigationController
        present(navController, animated: true, completion: nil) // отображаем UINavigationController в модальном режиме
    }
}
