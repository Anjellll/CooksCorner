//
//  MainTabBarController.swift
//  CooksCorner
//
//  Created by anjella on 14/3/24.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.view.backgroundColor = .white
    }

    private func setupTabBar() {
        let homeViewModel = HomeViewModel()
        let homeViewController = HomeViewController(viewModel: homeViewModel)
        homeViewController.tabBarItem.image = UIImage(named: "homeIcon")
        homeViewController.tabBarItem.selectedImage = UIImage(named: "homeSelectedIcon")?.withRenderingMode(.alwaysOriginal)
        
        let searchViewModel = SearchViewModel()
        let searchViewController = SearchViewController(viewModel: searchViewModel)
        searchViewController.tabBarItem.image = UIImage(named: "searchIcon")
        searchViewController.tabBarItem.selectedImage = UIImage(named: "searchSelectedIcon")?.withRenderingMode(.alwaysOriginal)

        let profileViewModel = ProfileViewModel()
        let profileViewController = ProfileViewController(viewModel: profileViewModel)
        profileViewController.tabBarItem.image = UIImage(named: "accountIcon")
        profileViewController.tabBarItem.selectedImage = UIImage(named: "accountSelectedIcon")?.withRenderingMode(.alwaysOriginal)

        viewControllers = [homeViewController, searchViewController, profileViewController]
        selectedIndex = 0
        tabBar.isTranslucent = false
        tabBar.clipsToBounds = true
        
        let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithDefaultBackground()
        tabBarAppearance.backgroundColor = .white
        UITabBar.appearance().standardAppearance = tabBarAppearance
    }
}
