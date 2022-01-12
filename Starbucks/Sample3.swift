//
//  Sample3.swift
//  Starbucks
//
//  Created by 장기화 on 2022/01/12.
//

import SwiftUI

struct ParentView: View {
    @State private var isDisabled = true
    
    var body: some View {
        Sample3(isDisabled: $isDisabled)
    }
}

//childView
struct Sample3: View {
    @Binding var isDisabled: Bool
    var body: some View {

        VStack {
            Toggle(isOn: $isDisabled, label: { Text("버튼을 비활성화 시키겠습니까?")})
            Button("버튼", action: {})
                .disabled(isDisabled)
        }
    }
}

struct Sample3_Previews: PreviewProvider {
    static var previews: some View {
        ParentView()
    }
}
