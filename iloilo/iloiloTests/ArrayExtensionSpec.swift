//
//  ArrayExtensionSpec.swift
//  iloiloTests
//
//  Created by Tomooki on 2018/03/18.
//  Copyright © 2018年 tom-18-358. All rights reserved.
//

import Foundation
import Quick

class ArrayExtensionSpec: QuickSpec {
 
    override func spec() {
        describe("Arrayを安全に取り出す") {
            let array = [10,11]
            context("存在してる物を取り出す") {
                it("index0に10が入ってる") {
                    XCTAssert(array.safe(pick: 0) == 10)
                }
                it("index1に10が入ってる") {
                    XCTAssert(array.safe(pick: 1) == 11)
                }
            }
            context("存在しない物を取り出す場合落ちない") {
                it("index2はないのでnil") {
                    XCTAssertNil(array.safe(pick: 2))
                }
            }
        }
    }
    
}
