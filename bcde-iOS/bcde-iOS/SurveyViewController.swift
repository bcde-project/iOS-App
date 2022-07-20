//
//  SurveyViewController.swift
//  bcde-iOS
//
//  Created by 안현주 on 2022/07/20.
//

import UIKit

class SurveyViewController: UIViewController {

    lazy var uiLabel: UILabel = {
        let label = UILabel()
        label.text = "Survey"
        return label
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(uiLabel)
        uiLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }

//        self.view.backgroundColor = .green
        // Do any additional setup after loading the view.
    }
    
}
