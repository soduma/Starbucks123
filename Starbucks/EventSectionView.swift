//
//  EventSectionView.swift
//  Starbucks
//
//  Created by 장기화 on 2022/01/11.
//

import SwiftUI

struct EventSectionView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 16) {
                ForEach(Event.sample) { event in
                    EventItemView(event: event)
                }
            }
            .padding(.horizontal, 16)
        }.onAppear {
            UIScrollView.appearance().isPagingEnabled = true
        }
    }
}

struct EventItemView: View {
    let event: Event
    
    var body: some View {
        VStack {
            event.image
                .resizable() // 전체 순서 중요, 리사이저블 먼저 하기
                .scaledToFill()
                .frame(height: 150)
                .clipped()
                .cornerRadius(20)
            Text(event.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.headline)
            Text(event.description)
                .lineLimit(1)
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .font(.callout)
        }
        .frame(width: UIScreen.main.bounds.width - 32)
    }
}

struct EventSectionView_Previews: PreviewProvider {
    static var previews: some View {
        EventSectionView()
    }
}
