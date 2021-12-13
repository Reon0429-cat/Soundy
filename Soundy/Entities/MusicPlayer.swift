//
//  MusicPlayer.swift
//  Soundy
//
//  Created by 大西玲音 on 2021/12/03.
//

import Foundation

protocol MusicPlayerable {
    var name: String { get }
}

// 音源 https://otologic.jp/free/se/instruments01.html

struct MusicPlayer: MusicPlayerable {
    let name: String
}

extension MusicPlayer {
    
    static var data: [MusicPlayerable] = [
        MusicPlayer(name: "MusicBox"),
        MusicPlayer(name: "Flexatone"),
        MusicPlayer(name: "Vibraslap"),
        MusicPlayer(name: "Glocken"),
        MusicPlayer(name: "Xylophone"),
        MusicPlayer(name: "Hyoshigi"),
        MusicPlayer(name: "Horagai"),
        MusicPlayer(name: "Shinkansen"),
        MusicPlayer(name: "Ambulance"),
        MusicPlayer(name: "Warbler"),
        MusicPlayer(name: "Cat"),
        MusicPlayer(name: "Cow"),
        MusicPlayer(name: "Mosquito"),
        MusicPlayer(name: "Sparrow"),
    ]
    
}

