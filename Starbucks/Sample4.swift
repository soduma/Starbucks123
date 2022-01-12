//
//  Sample4.swift
//  Starbucks
//
//  Created by 장기화 on 2022/01/12.
//

import SwiftUI

class ButtonModel: ObservableObject {
    @Published var isDisabled = true
}

struct ParentView2: View {
    @ObservedObject var buttonModel = ButtonModel()
    
    var body: some View {
        Sample4(isDisabled: $buttonModel.isDisabled)
    }
}

//childView
struct Sample4: View {
    @Binding var isDisabled: Bool
    var body: some View {

        VStack {
            Toggle(isOn: $isDisabled, label: { Text("버튼을 비활성화 시키겠습니까?")})
            Button("버튼", action: {})
                .disabled(isDisabled)
        }
    }
}

struct Sample4_Previews: PreviewProvider {
    static var previews: some View {
        ParentView()
    }
}
