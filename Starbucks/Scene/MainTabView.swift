//
//  MainTabView.swift
//  Starbucks
//
//  Created by 장기화 on 2022/01/11.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Tab.home.imageItem
                    Tab.home.textItem
                }
            OtherView()
                .tabItem {
                    Tab.other.imageItem
                    Tab.other.textItem
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
