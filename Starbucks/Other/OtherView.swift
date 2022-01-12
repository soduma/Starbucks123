//
//  OtherView.swift
//  Starbucks
//
//  Created by 장기화 on 2022/01/11.
//

import SwiftUI

struct OtherView: View {
//    init() {
//        UITableView.appearance().backgroundColor = .systemBackground
//    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(OtherSection.allCases) { section in
                    Section(header: Text(section.title)) {
                        ForEach(section.otherSection, id: \.hashValue) { raw in
                            NavigationLink(raw, destination: Text("\(raw)"))
                        }
                    }
                }
            }
            .listStyle(.inset)
            .navigationTitle("Other")
            .toolbar {
                NavigationLink(destination: SettingView(), label: {
                    Image(systemName: "gear")
                })
            }
        }
    }
}

struct OtherView_Previews: PreviewProvider {
    static var previews: some View {
        OtherView()
    }
}
