//
//  HomeView.swift
//  Starbucks
//
//  Created by 장기화 on 2022/01/11.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            HeaderView()
            MenuSectionView()
            EventSectionView()
            Spacer(minLength: 50)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
