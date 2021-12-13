//
//  ParentControlUseCase.swift
//  Soundy
//
//  Created by 大西玲音 on 2021/12/13.
//

import Foundation

final class ParentControlUseCase {
    
    private let repository: ParentControlRepositoryProtocol
    
    init(repository: ParentControlRepositoryProtocol) {
        self.repository = repository
    }
    
    func shuffleCards() {
        repository.shuffleCards()
    }
    
}
