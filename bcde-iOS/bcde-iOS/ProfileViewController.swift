//
//  ProfileViewController.swift
//  bcde-iOS
//
//  Created by 안현주 on 2022/07/20.
//

import UIKit

class ProfileViewController: UIViewController {

    lazy var uiLabel: UILabel = {
        let label = UILabel()
        label.text = "Profile"
        return label
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(uiLabel)
        uiLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }

//        self.view.backgroundColor = .blue
        // Do any additional setup after loading the view.
    }

}
