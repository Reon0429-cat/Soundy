//
//  MusicSourceControlCollectionViewCell.swift
//  Soundy
//
//  Created by 大西玲音 on 2021/12/15.
//

import UIKit

final class MusicSourceControlCollectionViewCell: UICollectionViewCell {

    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var checkButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(with model: MusicPlayerable) {
        imageView.image = UIImage(named: model.name)
        let buttonImage: UIImage? = {
            if model.isSelected {
                return UIImage(systemName: "circle")?.setColor(.green)
            }
            return UIImage(systemName: "xmark")?.setColor(.red)
        }()
        checkButton.setImage(buttonImage, for: .normal)
    }

    @IBAction private func checkButtonDidTapped(_ sender: Any) {
        
    }
    
}
