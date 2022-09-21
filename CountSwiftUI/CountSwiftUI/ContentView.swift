//
//  ContentView.swift
//  CountSwiftUI
//
//  Created by emp-mac-yosuke-fujii on 2022/01/05.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var countHook: CountHookObject = .init()

    var body: some View {
        VStack(alignment: .center) {
            Text(String(countHook.count)).font(.largeTitle).fontWeight(.semibold)
            VStack {
                LongButton("Plus") {
                    countHook.increment()
                }
                LongButton("Minus") {
                    countHook.decrement()
                }
                LongButton("Reset", role: .destructive) {
                    countHook.reset()
                }
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            .padding()
        }
    }

    private func LongButton(
        _ text: String,
        role: ButtonRole? = nil,
        action: @escaping ()->Void
    ) -> some View {
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
