//
//  Event.swift
//  Starbucks
//
//  Created by 장기화 on 2022/01/11.
//

import SwiftUI

struct Event: Identifiable {
    let id = UUID()
    let image: Image
    let title: String // Text로 하지않는 이유는 uikit에서 UILable로 하는 느낌이라 어색
    let description: String
}
