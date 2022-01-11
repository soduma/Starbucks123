//
//  Sample.swift
//  Starbucks
//
//  Created by 장기화 on 2022/01/11.
//

import SwiftUI

struct Sample: View {
    struct Number: Identifiable {
        let value: Int
        var id: Int { value }
    }
    let numbers: [Number] = (0...100).map { Number(value: $0) }
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                HStack { //10개 까지만 가능
                    Text("HStack 알아보깅")
                    Text("HStack 알아보깅")
                    Text("HStack 알아보깅")
                    Text("HStack 알아보깅")
                    Text("HStack 알아보깅")
                    Text("HStack 알아보깅")
                    Text("HStack 알아보깅")
                    Text("HStack 알아보깅")
                }
                .foregroundColor(.green)
            }
            
            ScrollView(.horizontal) {
                LazyHStack { //31개까지 먼저 그려주고 나머지는 필요할때
                    ForEach(numbers) { number in
                        Text("\(number.value)")
                    }
                }
                .foregroundColor(.red)
            }
            .frame(width: UIScreen.main.bounds.width, height: 50, alignment: .leading)
            
            ScrollView(.horizontal) {
                LazyHGrid(rows: [GridItem(.fixed(10)),
                                 GridItem(.fixed(20)),
                                 GridItem(.fixed(30))
                                ]) {
                    ForEach(numbers) { number in
                        Text("\(number.value)")
                    }
                }
                                .foregroundColor(.yellow)
            }
            
            List { //tableView와 비슷
                Section(header: Text("Header")) {
                    ForEach(numbers) { number in
                        Text("\(number.value)")
                    }
                }
                .foregroundColor(.blue)
                
                Section(header: Text("ㅎㅇㅎㅇ"), footer: Text("ㅂㅇㅂㅇ")) {
                    ForEach(numbers) { number in
                        Text("\(number.value)")
                    }
                }
                .foregroundColor(.purple)
            }
            .listStyle(.inset)
        }
    }
}

struct Sample_Previews: PreviewProvider {
    static var previews: some View {
        Sample()
    }
}
