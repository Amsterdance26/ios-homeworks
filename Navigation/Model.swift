//
//  Model.swift
//  Navigation
//
//  Created by Василий Васильевич on 14.02.2023.
//

import Foundation

// Определяем структуру "Post" с одним свойством "title" типа String
struct Post {
    var title: String
}

// Главная функция
func main() {

    // Создаем экземпляр "myPost" структуры "Post" с заголовком "Мой новый пост"
    let myPost = Post(title: "Мой новый пост")

    // Создаем экземпляр контроллера "postViewController" типа "PostViewController"
    let postViewController = PostViewController()

    // Присваиваем свойству "post" контроллера "postViewController" значение "myPost"
    postViewController.post = myPost
}
