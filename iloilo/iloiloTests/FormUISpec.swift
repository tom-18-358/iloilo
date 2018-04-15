//
//  FormUISpec.swift
//  iloiloTests
//
//  Created by Tomooki on 2018/03/18.
//  Copyright © 2018年 tom-18-358. All rights reserved.
//

import Quick
import EarlGrey

class FormUISpec: XCTestCase {
    
    var grey_accessibilityIDType = { (id: AccessibilityIDType) in
        return grey_accessibilityID(id.rawValue)
    }

    func testTypeText() {
        let word = "test word"
        
        EarlGrey
            .selectElement(with: grey_accessibilityIDType(.formTextField))
            .perform(grey_tap())
        
        EarlGrey
            .selectElement(with: grey_accessibilityIDType(.formTextField))
            .perform(grey_typeText(word + "\n"))

        EarlGrey
            .selectElement(with: grey_accessibilityIDType(.confirmButton))
            .perform(grey_tap())
        
        EarlGrey
            .selectElement(with: grey_anyOf([grey_accessibilityIDType(.resultLabel), grey_text(word)]))
            .atIndex(0)
            .assert(grey_sufficientlyVisible())

    }
}
