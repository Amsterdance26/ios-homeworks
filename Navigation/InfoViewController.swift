//
//  InfoViewController.swift
//  Navigation
//
//  Created by Василий Васильевич on 15.02.2023.
//

import UIKit

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
