//
//  Array+SafePick.swift
//  iloilo
//
//  Created by Tomooki on 2018/03/18.
//  Copyright © 2018年 tom-18-358. All rights reserved.
//

import Foundation

extension Array {
    
    func safe(pick row: Int) -> Element? {
        return enumerated().first{ $0.offset == row }?.element        
    }
}
