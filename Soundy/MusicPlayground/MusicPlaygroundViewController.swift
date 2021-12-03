//
//  MusicPlaygroundViewController.swift
//  Soundy
//
//  Created by 大西玲音 on 2021/12/03.
//

import UIKit
import AVFoundation

final class MusicPlaygroundViewController: UIViewController {
    
    @IBOutlet private weak var collectionView: UICollectionView!
    
    private let musicPlayers = MusicPlayer.data
    private var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionView()
        
    }
    
    private func playSound(name: String) {
        guard let path = Bundle.main.path(forResource: name, ofType: "mp3") else {
            print("音源ファイルが見つかりません")
            return
        }
        audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
        audioPlayer.play()
    }
    
}

// MARK: - UICollectionViewDelegate
extension MusicPlaygroundViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView,
                        didSelectItemAt indexPath: IndexPath) {
        let musicName = musicPlayers[indexPath.item].name
        playSound(name: musicName)
    }
    
}

// MARK: - UICollectionViewDataSource
extension MusicPlaygroundViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        musicPlayers.count
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCustomCell(
            with: MusicCollectionViewCell.self,
            indexPath: indexPath
        )
        let musicPlayer = musicPlayers[indexPath.row]
        cell.configure(with: musicPlayer)
        return cell
    }
    
}

// MARK: - UICollectionViewDelegateFlowLayout
extension MusicPlaygroundViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let horizontalSpace: CGFloat = 20
        let cellSize: CGFloat = collectionView.frame.width / 3 - horizontalSpace
        return CGSize(width: cellSize, height: cellSize)
    }
    
}

// MARK: - setup
private extension MusicPlaygroundViewController {
    
    func setupCollectionView() {
        collectionView.backgroundColor = .red
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.registerCustomCell(MusicCollectionViewCell.self)
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 10 * 3 / 4
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.headerReferenceSize = CGSize(width: collectionView.frame.width, height: 50)
        collectionView.collectionViewLayout = layout
    }
    
}

