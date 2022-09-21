//
//  CountHookObject.swift
//  CountSwiftUI
//
//  Created by Yosuke Fujii on 2022/09/21.
//  Copyright © 2022 Goodpatch. All rights reserved.
    

import SwiftUI

final class CountHookObject: ObservableObject {
    @Published private(set) var count: Int

    init(count: Int = 0) {
        self.count = count
    }

    func increment() {
        count = count + 1
    }

    func decrement() {
        count = count - 1
    }

    func reset(resetValue: Int = 0) {
        count = resetValue
    }
}
