//
//  Tab.swift
//  Starbucks
//
//  Created by 장기화 on 2022/01/11.
//

import SwiftUI

enum Tab {
    case home
    case other
    
    //associated value
    var textItem: Text {
        switch self {
        case .home: return Text("Home")
        case .other: return Text("Other")
        }
    }
    
    var imageItem: Image {
        switch self {
        case .home: return Image(systemName: "house.fill")
        case .other: return Image(systemName: "ellipsis")
        }
    }
}
