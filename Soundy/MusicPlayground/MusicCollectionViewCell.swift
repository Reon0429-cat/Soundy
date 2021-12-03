//
//  MusicCollectionViewCell.swift
//  Soundy
//
//  Created by 大西玲音 on 2021/12/03.
//

import UIKit

final class MusicCollectionViewCell: UICollectionViewCell {

    @IBOutlet private weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func configure(with model: MusicPlayerable) {
        imageView.image = UIImage(named: model.name)
    }

}
