//
//  MenuSectionView.swift
//  Starbucks
//
//  Created by 장기화 on 2022/01/11.
//

import SwiftUI

struct MenuSectionView: View {
    var body: some View {
        VStack {
            Text("\(User.shared.userName)님을 위한 추천 메뉴")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(Menu.sample) { menu in
                        MenuItemView(menu: menu)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct MenuItemView: View {
    let menu: Menu
    var body: some View {
        VStack {
            menu.image
                .resizable()
                .clipShape(Circle()) //.cornerRadius(50)
                .frame(width: 100, height: 100)
            Text(menu.name)
                .font(.caption)
        }
    }
}

struct MenuSectionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuSectionView()
    }
}
