//
//  HomeView.swift
//  Starbucks
//
//  Created by 장기화 on 2022/01/11.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel = HomeViewModel()
    
    var body: some View {
        ScrollView {
            HeaderView(isNeedToReload: $viewModel.isNeedToReload)
            MenuSectionView(menu: $viewModel.menu)
            EventSectionView(event: $viewModel.event)
            Spacer(minLength: 32)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
