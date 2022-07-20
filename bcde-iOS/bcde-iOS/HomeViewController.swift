//
//  HomeViewController.swift
//  bcde-iOS
//
//  Created by 안현주 on 2022/07/20.
//

import UIKit

class HomeViewController: UIViewController {

    lazy var uiLabel: UILabel = {
        let label = UILabel()
        label.text = "Home"
        return label
    } ()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(uiLabel)
        uiLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
//        self.view.backgroundColor = .red
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
