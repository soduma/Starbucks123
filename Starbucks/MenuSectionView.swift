//
//  MenuSectionView.swift
//  Starbucks
//
//  Created by 장기화 on 2022/01/11.
//

import SwiftUI

struct MenuSectionView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(Menu.sample) { menu in
                    MenuItemView(menu: menu)
                }
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
