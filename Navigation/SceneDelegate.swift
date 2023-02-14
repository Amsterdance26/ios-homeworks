//
//  SceneDelegate.swift
//  Navigation
//
//  Created by Василий Васильевич on 14.02.2023.
//

// Импортируем основной модуль UIKit
import UIKit

// Определяем класс делегата сцены и реализуем протокол UIWindowSceneDelegate
class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    // Определяем метод, который вызывается при подключении сцены
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        // Проверяем, является ли переданная сцена объектом UIWindowScene, иначе возвращаемся
        guard let windowScene = (scene as? UIWindowScene) else { return }

        // Создаем экземпляры контроллеров экранов для трех вкладок таб-бара
        let feedViewController = FeedViewController()
        let profileViewController = ProfileViewController()
        let postViewController = PostViewController()

        // Создаем экземпляры навигационных контроллеров для каждого из контроллеров экранов
        let feedNavigationController = UINavigationController(rootViewController: feedViewController)
        feedNavigationController.tabBarItem = UITabBarItem(title: "Лента", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill"))
        let profileNavigationController = UINavigationController(rootViewController: profileViewController)
        profileNavigationController.tabBarItem = UITabBarItem(title: "Профиль", image: UIImage(systemName: "person"), selectedImage: UIImage(systemName: "person.fill"))
        let postNavigationController = UINavigationController(rootViewController: postViewController)
        postNavigationController.tabBarItem = UITabBarItem(title: "Пост", image: UIImage(systemName: "message.fill"), selectedImage: UIImage(systemName: "message.fill"))

        // Создаем экземпляр поста и присваиваем его свойству postViewController.post
        let myPost = Post(title: "Мой новый пост")
        postViewController.post = myPost

        // Создаем экземпляр таб-бар контроллера и добавляем три навигационных контроллера в массив его представлений
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [feedNavigationController, profileNavigationController, postNavigationController]
        tabBarController.tabBar.backgroundColor = UIColor.white

        // Создаем экземпляр окна с переданной сценой, устанавливаем корневой контроллер окна в качестве таб-бар контроллера и делаем окно видимым
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = tabBarController
        self.window = window
        window.makeKeyAndVisible()
    }
}
