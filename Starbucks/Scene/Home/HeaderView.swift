//
//  HeaderView.swift
//  Starbucks
//
//  Created by 장기화 on 2022/01/11.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(spacing: 16) {
            HStack {
                Text("""
                \(User.shared.userName)님 즐거운
                하루 보내세요😡
                """)
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
//                    .fixedSize(horizontal: false, vertical: true)
                
//                Button(action: {}, label: {
//                    Image(systemName: "arrow.2.circlepath")
//                        .foregroundColor(.green)
//                })
            }
            
            HStack {
                Button(action: {}, label: {
                    Image(systemName: "mail")
                    Text("What's New")
                        .font(.system(size: 16, weight: .semibold, design: .default))
                })
                Button(action: {}, label: {
                    Image(systemName: "ticket")
                    Text("Coupon")
                        .font(.system(size: 16, weight: .semibold, design: .default))
                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "bell")
                })
            }
            .foregroundColor(.secondary)
        }
        .frame(height: 200)
        .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
