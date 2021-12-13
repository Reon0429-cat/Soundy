//
//  ParentControlRepository.swift
//  Soundy
//
//  Created by 大西玲音 on 2021/12/13.
//

import Foundation

protocol ParentControlRepositoryProtocol {
    func shuffleCards()
}

final class ParentControlRepository: ParentControlRepositoryProtocol {
    
    private let dataStore = ParentControlDataStore()
    
    func shuffleCards() {
        dataStore.shuffleCards()
    }
    
}
