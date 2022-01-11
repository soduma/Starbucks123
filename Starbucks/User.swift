//
//  User.swift
//  Starbucks
//
//  Created by 장기화 on 2022/01/11.
//

import Foundation

struct User {
    let userName: String
    let account: String
    
    static let shared = User(userName: "댕댕", account: "soduma")
}
