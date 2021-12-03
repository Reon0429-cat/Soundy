//
//  NSObjectProtocol+Extension.swift
//  Soundy
//
//  Created by 大西玲音 on 2021/12/03.
//

import Foundation

extension NSObjectProtocol {

    static var className: String {
        return String(describing: self)
    }

}
