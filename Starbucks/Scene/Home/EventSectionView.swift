//
//  EventSectionView.swift
//  Starbucks
//
//  Created by 장기화 on 2022/01/11.
//

import SwiftUI

struct EventSectionView: View {
    @Binding var event: [Event]
    
    var body: some View {
        VStack {
            HStack{
                Text("Events")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Button("See All") {}
                .font(.subheadline)
                .accentColor(.green)
            }
            .padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 16) {
                    ForEach(event) { event in
                        EventItemView(event: event)
                    }
                }
                .padding(.horizontal)
//                .frame(maxWidth: .infinity, minHeight: 220, maxHeight: .infinity)
            }.onAppear {
//                UIScrollView.appearance().isPagingEnabled = true
            }
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
            Spacer(minLength: 20)
            
            Text(event.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size: 20, weight: .bold, design: .default))
            Spacer(minLength: 5)
            
            Text(event.description)
                .lineLimit(1)
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .font(.callout)
        }
        .frame(width: UIScreen.main.bounds.width - 32)
    }
}

//struct EventSectionView_Previews: PreviewProvider {
//    static var previews: some View {
//        EventSectionView()
//    }
//}
