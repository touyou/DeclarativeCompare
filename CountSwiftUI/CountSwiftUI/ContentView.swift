//
//  ContentView.swift
//  CountSwiftUI
//
//  Created by emp-mac-yosuke-fujii on 2022/01/05.
//

import SwiftUI

struct ContentView: View {
    @State private var count: Int = 0

    var body: some View {
        VStack(alignment: .center) {
            Text(String(count)).font(.largeTitle).fontWeight(.semibold)
            VStack {
                LongButton("Plus") {
                    count = count + 1
                }
                LongButton("Minus") {
                    count = count - 1
                }
                LongButton("Reset", role: .destructive) {
                    count = 0
                }
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            .padding()
        }
    }

    func LongButton(_ text: String, role: ButtonRole? = nil, action: @escaping ()->Void) -> some View {
        Button(role: role, action: action) {
            Text(text)
                .font(.body)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
