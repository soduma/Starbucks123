//
//  Sample2.swift
//  Starbucks
//
//  Created by 장기화 on 2022/01/12.
//

import SwiftUI

struct Sample2: View {
    @State private var currentText = ""
    @State private var isDisabled = true
    var body: some View {
        VStack {
            TextField("텍스트를 입력해주세요", text: $currentText)
            Text(currentText)
        }
        VStack {
            Toggle(isOn: $isDisabled, label: { Text("버튼을 비활성화 시키겠습니까?")})
            Button("버튼", action: {})
                .disabled(isDisabled)
        }
    }
}

//struct Sample2_Previews: PreviewProvider {
//    static var previews: some View {
//        Sample2()
//    }
//}
