//
//  Menu.swift
//  Starbucks
//
//  Created by 장기화 on 2022/01/11.
//

import SwiftUI

struct Menu: Identifiable {
    let id = UUID()
    let image: Image // UIImage
    let name: String
    
    static let sample: [Menu] = [
    Menu(image: Image("abc"), name: "아메리카노"),
    Menu(image: Image("abc"), name: "아이스 아메리카노"),
    Menu(image: Image("abc"), name: "민트 초콜릿 칩 블렌디드"),
    Menu(image: Image("abc"), name: "카페라떼"),
    Menu(image: Image("abc"), name: "아이스 카페라떼"),
    Menu(image: Image("abc"), name: "오늘의커피")
    ]
}
