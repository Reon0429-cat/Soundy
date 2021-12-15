//
//  MusicSourceControlViewController.swift
//  Soundy
//
//  Created by 大西玲音 on 2021/12/15.
//

import UIKit

final class MusicSourceControlViewController: UIViewController {

    @IBOutlet private weak var collectionView: UICollectionView!
    private let musicPlayers = MusicPlayer.data
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupCollectionView()
        
    }
    
}

// MARK: - UICollectionViewDelegate
extension MusicSourceControlViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView,
                        didSelectItemAt indexPath: IndexPath) {
    }
    
}

// MARK: - UICollectionViewDataSource
extension MusicSourceControlViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        musicPlayers.count
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCustomCell(
            with: MusicSourceControlCollectionViewCell.self,
            indexPath: indexPath
        )
        let musicPlayer = musicPlayers[indexPath.row]
        cell.configure(with: musicPlayer)
        return cell
    }
    
}

// MARK: - UICollectionViewDelegateFlowLayout
extension MusicSourceControlViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let horizontalSpace: CGFloat = 20
        let cellSize: CGFloat = collectionView.frame.width / 3 - horizontalSpace
        return CGSize(width: cellSize, height: cellSize)
    }
    
}

// MARK: - setup
private extension MusicSourceControlViewController {
    
    func setupCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.registerCustomCell(MusicSourceControlCollectionViewCell.self)
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 10 * 3 / 4
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.headerReferenceSize = CGSize(width: collectionView.frame.width, height: 50)
        collectionView.collectionViewLayout = layout
    }
    
}

