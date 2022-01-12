//
//  SettingView.swift
//  Starbucks
//
//  Created by 장기화 on 2022/01/12.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        List {
            Section {
                SettingFirstSectionView()
            } header: {
                Text("")
            }
            
            Section {
                NavigationLink(destination: { Text("회원정보 수정") },
                               label: { Text("회원정보 수정") }
                )
                NavigationLink(destination: { Text("회원탈퇴") },
                               label: { Text("회원탈퇴") }
                )
            } header: {
                Text("")
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("설정")
        .listStyle(.inset)
    }
}

struct SettingFirstSectionView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text(User.shared.userName)
                    .font(.title)
                Text(User.shared.account)
                    .font(.caption)
            }
            Spacer()
            Button(action: {}) {
                Text("로그아웃")
                    .foregroundColor(.green)
                    .font(.system(size: 14, weight: .bold, design: .default))
            }
            .padding(8)
            .overlay(Capsule().stroke(Color.green))
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
