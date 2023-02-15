//
//  InfoViewController.swift
//  Navigation
//
//  Created by Василий Васильевич on 15.02.2023.
//

import UIKit

class InfoViewController: UIViewController { // Создание класса InfoViewController, наследующего UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView() // настройка отображения
    }
    
    private func setupView() {
        setTitle() // установка заголовка
        setBackgroundColor() // установка цвета фона
        addButton() // добавление кнопки
    }
    
    private func setTitle() {
        title = "Инфо" // установка заголовка окна
    }
    
    private func setBackgroundColor() {
        view.backgroundColor = UIColor.blue // установка цвета фона view
    }
    
    private func addButton() {
        let showAlertButton = UIButton(type: .system) // создание кнопки
        showAlertButton.setTitle("Показать оповещение", for: .normal) // установка заголовка для кнопки
        showAlertButton.addTarget(self, action: #selector(showAlert), for: .touchUpInside) // добавление обработчика для нажатия кнопки
        view.addSubview(showAlertButton) // добавление кнопки на view
        addConstraints(to: showAlertButton) // добавление ограничений для кнопки
    }
    
    private func addConstraints(to button: UIButton) {
        button.translatesAutoresizingMaskIntoConstraints = false // отключение автоматической установки ограничений
        NSLayoutConstraint.activate([
            button.widthAnchor.constraint(equalToConstant: 200), // установка ширины кнопки
            button.heightAnchor.constraint(equalToConstant: 50), // установка высоты кнопки
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor), // установка горизонтального центра кнопки
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor) // установка вертикального центра кнопки
        ])
    }
    
    @objc private func showAlert() {
        let alertController = UIAlertController(title: "Оповещение", message: "Это сообщение оповещения", preferredStyle: .alert) // создание UIAlertController
        
        let cancelAction = UIAlertAction(title: "Отмена", style: .cancel) { _ in // создание действия "Отмена"
            print("Нажата кнопка 'Отмена'")
        }
        
        let okAction = UIAlertAction(title: "ОК", style: .default) { _ in // создание действия "ОК"
            print("Нажата кнопка 'ОК'")
        }
        
        alertController.addAction(cancelAction) // добавление действия "Отмена" в UIAlertController
        alertController.addAction(okAction) // добавление действия "ОК" в UIAlertController
        
        present(alertController, animated: true, completion: nil) // отображение UIAlertController
    }
}
