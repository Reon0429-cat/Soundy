//
//  MusicPlayer.swift
//  Soundy
//
//  Created by 大西玲音 on 2021/12/03.
//

import Foundation

protocol MusicPlayerable {
    var id: Int { get }
    var name: String { get }
    var isSelected: Bool { get }
}

// 音源 https://otologic.jp/free/se/instruments01.html

struct MusicPlayer: MusicPlayerable {
    let id: Int
    let name: String
    let isSelected: Bool
}

extension MusicPlayer {
    
    static var data: [MusicPlayerable] = [
        MusicPlayer(id: 1, name: "MusicBox", isSelected: false),
        MusicPlayer(id: 2, name: "Flexatone", isSelected: false),
        MusicPlayer(id: 3, name: "Vibraslap", isSelected: false),
        MusicPlayer(id: 4, name: "Glocken", isSelected: false),
        MusicPlayer(id: 5, name: "Xylophone", isSelected: false),
        MusicPlayer(id: 6, name: "Hyoshigi", isSelected: false),
        MusicPlayer(id: 7, name: "Horagai", isSelected: false),
        MusicPlayer(id: 8, name: "Shinkansen", isSelected: false),
        MusicPlayer(id: 9, name: "Ambulance", isSelected: false),
        MusicPlayer(id: 10, name: "Warbler", isSelected: false),
        MusicPlayer(id: 11, name: "Cat", isSelected: false),
        MusicPlayer(id: 12, name: "Cow", isSelected: false),
        MusicPlayer(id: 13, name: "Mosquito", isSelected: false),
        MusicPlayer(id: 14, name: "Sparrow", isSelected: false),
        MusicPlayer(id: 15, name: "BicycleHorn", isSelected: false),
        MusicPlayer(id: 16, name: "CameraFilm", isSelected: false),
        MusicPlayer(id: 17, name: "CashRegisterDrawer", isSelected: false),
        MusicPlayer(id: 18, name: "CellPhoneRingtone", isSelected: false),
        MusicPlayer(id: 19, name: "ClockSecondHand", isSelected: false),
        MusicPlayer(id: 20, name: "Curtain", isSelected: false),
        MusicPlayer(id: 21, name: "Eraser", isSelected: false),
        MusicPlayer(id: 22, name: "Hurooke", isSelected: false),
        MusicPlayer(id: 23, name: "Pencil", isSelected: false),
        MusicPlayer(id: 24, name: "PooPooCushion", isSelected: false),
        MusicPlayer(id: 25, name: "QuizBuzzer", isSelected: false),
        MusicPlayer(id: 26, name: "RotaryPhoneRingtone", isSelected: false),
    ]
    
}

