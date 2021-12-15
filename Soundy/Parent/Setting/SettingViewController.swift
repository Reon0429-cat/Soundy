//
//  SettingViewController.swift
//  Soundy
//
//  Created by 大西玲音 on 2021/12/15.
//

import UIKit

final class SettingViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction private func backButtonDidTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
