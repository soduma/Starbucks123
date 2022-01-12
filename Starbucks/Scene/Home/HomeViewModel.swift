//
//  HomeViewModel.swift
//  Starbucks
//
//  Created by 장기화 on 2022/01/12.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var isNeedToReload = false {
        didSet { // isNeedToReload이 변경이 된 후 자동으로 불림 (willSet은 변경되기 직전에!)
            guard isNeedToReload else { return }
            menu.shuffle()
            event.shuffle()
            isNeedToReload = false
        }
    }
    
    @Published var menu: [Menu] = [
        Menu(image: Image("abc"), name: "아메리카노"),
        Menu(image: Image("abc"), name: "아이스 아메리카노"),
        Menu(image: Image("abc"), name: "민트 초콜릿 칩 블렌디드"),
        Menu(image: Image("abc"), name: "카페라떼"),
        Menu(image: Image("abc"), name: "아이스 카페라떼"),
        Menu(image: Image("abc"), name: "오늘의커피")
    ]
    
    @Published var event: [Event] = [
        Event(image: Image("def"), title: "맛좀보시라요", description: "100만원 입니다."),
        Event(image: Image("ghi"), title: "겨울한정메뉴", description: "겨울엔 아아")
    ]
}
