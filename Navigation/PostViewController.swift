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

class InfoViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Установка заголовка
        title = "Инфо"
        
        // Установка цвета фона
        view.backgroundColor = UIColor.blue
        
        // Добавление кнопки для отображения контроллера UIAlertController
        let showAlertButton = UIButton(type: .system)
        showAlertButton.setTitle("Показать оповещение", for: .normal)
        showAlertButton.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        showAlertButton.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        showAlertButton.center = view.center
        view.addSubview(showAlertButton)
    }
    
    @objc func showAlert() {
        let alertController = UIAlertController(title: "Оповещение", message: "Это сообщение оповещения", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Отмена", style: .cancel) { _ in
            print("Нажата кнопка 'Отмена'")
        }
        
        let okAction = UIAlertAction(title: "ОК", style: .default) { _ in
            print("Нажата кнопка 'ОК'")
        }
        
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        
        present(alertController, animated: true, completion: nil)
    }
}
