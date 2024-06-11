//
//  Item.swift
//  AppMemorize
//
//  Created by Wei Zeng on 2024-06-11.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
