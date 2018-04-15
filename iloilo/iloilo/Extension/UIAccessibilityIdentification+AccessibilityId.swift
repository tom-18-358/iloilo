//
//  UIAccessibilityIdentification+AccessibilityId.swift
//  iloilo
//
//  Created by Tomooki on 2018/04/15.
//  Copyright © 2018年 tom-18-358. All rights reserved.
//

import UIKit

enum AccessibilityIDType: String {
    case resultLabel
    case formTextField
    case confirmButton
}

extension UIAccessibilityIdentification {
    
    func set(accessibilityIDType type: AccessibilityIDType) {
        accessibilityIdentifier = type.rawValue
    }
}
