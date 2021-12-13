//
//  ParentControlViewController.swift
//  Soundy
//
//  Created by 大西玲音 on 2021/12/13.
//

import UIKit

final class ParentControlViewController: UIViewController {
    
    private let useCase = ParentControlUseCase(
        repository: ParentControlRepository()
    )

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction private func shuffleButtonDidTapped(_ sender: Any) {
        useCase.shuffleCards()
    }
    
    @IBAction private func settingButtonDidTapped(_ sender: Any) {
        
    }
    
}
