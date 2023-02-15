//
//  FeedViewController.swift
//  Navigation
//
//  Created by Василий Васильевич on 14.02.2023.
//

import UIKit

class FeedViewController: UIViewController { // Создание класса FeedViewController, наследующего UIViewController
    private let secondPost = Post(title: "PostViewController") // Создание экземпляра класса Post с заголовком "PostViewController"

    private lazy var button: UIButton = { // Создание ленивого вычисляемого свойства button типа UIButton
        let button = UIButton() // Создание экземпляра класса UIButton
        button.setTitle("Перейти к посту", for: .normal) // Установка текста на кнопке
        button.setTitleColor(.blue, for: .normal) // Установка цвета текста на кнопке
        button.addTarget(self, action: #selector(tapButton), for: .touchUpInside) // Добавление метода tapButton как действия на нажатие кнопки
        button.translatesAutoresizingMaskIntoConstraints = false // Отключение автоматического определения констрейнтов для кнопки
        return button // Возврат созданной кнопки
    }()

    override func viewDidLoad() { // Переопределение метода viewDidLoad для настройки внешнего вида контроллера после загрузки
        super.viewDidLoad() // Вызов родительского метода
        setupViews() // Вызов метода для настройки отображения элементов на экране
        setupConstraints() // Вызов метода для настройки констрейнтов элементов
    }

    private func setupViews() { // Определение метода для настройки отображения элементов на экране
        view.addSubview(button) // Добавление кнопки на экран
    }

    private func setupConstraints() { // Определение метода для настройки констрейнтов элементов
        NSLayoutConstraint.activate([ // Активация массива констрейнтов
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor), // Констрейнт по центру по горизонтали
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)]) } // Констрейнт по центру по вертикали

    @objc private func tapButton() { // Определение метода tapButton для реакции на нажатие кнопки
        let postVC = PostViewController() // Создание экземпляра класса PostViewController
        postVC.post = secondPost // Присвоение второго поста переменной post экземпляра класса PostViewController
        navigationController?.pushViewController(postVC, animated: true) // Переход к PostViewController и анимирование перехода
    }
}
