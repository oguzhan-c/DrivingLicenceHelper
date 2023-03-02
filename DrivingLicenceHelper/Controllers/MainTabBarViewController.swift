//
//  ViewController.swift
//  DrivingLicenceHelper
//
//  Created by Oğuzhan Can on 2.03.2023.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        
        configureViews()
    }
    
    private func configureViews(){
        let vcHome = UINavigationController(rootViewController:
            HomeViewController())
        let vcQuection = UINavigationController(rootViewController: QuestionViewController())
        let vcEducation = UINavigationController(rootViewController: EdicationViewController())
        
        vcHome.tabBarItem.image = UIImage(systemName: "house.circle")
        vcQuection.tabBarItem.image = UIImage(systemName: "pencil.circle")
        vcEducation.tabBarItem.image = UIImage(systemName: "book.circle.fill")
        
        setViewControllers([
            vcHome,
            vcQuection,
            vcEducation
        ],animated: true)
        
        vcHome.title = "Home"
        vcQuection.title = "Quection"
        vcEducation.title = "Education"
        
        tabBar.tintColor = .label
    }
}

