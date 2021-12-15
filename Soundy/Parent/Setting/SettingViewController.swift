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
    
    @IBAction private func changeThemeColorButtonDidTapped(_ sender: Any) {
        
    }
    
    @IBAction private func changeMusicSourceButtonDidTapped(_ sender: Any) {
        let musicSourceControlVC = MusicSourceControlViewController.instantiate()
        present(musicSourceControlVC, animated: true)
    }
    
    @IBAction private func backButtonDidTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
