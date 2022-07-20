//
//  MainTabBarController.swift
//  bcde-iOS
//
//  Created by 안현주 on 2022/07/20.
//

import UIKit

class MainTabBarController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let tabHome = generateNavController(vc: HomeViewController(), title: "Home", image: UIImage.init(systemName: "house"), image_selected: UIImage.init(systemName: "house"))
        let tabSurvey = generateNavController(vc: SurveyViewController(), title: "Survey", image: UIImage.init(systemName: "message"), image_selected: UIImage.init(systemName: "message"))
        let tabProfile = generateNavController(vc: ProfileViewController(), title: "Profile", image: UIImage.init(systemName: "person"), image_selected: UIImage.init(systemName: "person"))
        
        self.viewControllers = [tabHome, tabSurvey, tabProfile]
    }
    
    private func generateNavController(vc : UIViewController, title : String, image: UIImage?, image_selected : UIImage?) -> UINavigationController {
        let navController = UINavigationController(rootViewController: vc)
        
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        navController.tabBarItem.selectedImage = image_selected
        
        let backItem = UIBarButtonItem()
        backItem.title = "뒤로"
        vc.navigationItem.backBarButtonItem = backItem
        
//        vc.navigationItem.title = title
        
        return navController
    }
    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        var tabFrame = self.tabBar.frame
//        tabFrame.size.height = CGFloat(100)
//        tabFrame.origin.y = self.view.frame.size.height - CGFloat(100)
//        self.tabBar.frame = tabFrame
//    }
}
