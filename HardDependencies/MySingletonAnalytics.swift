//
//  MySingletonAnalytics.swift
//  HardDependencies
//
//  Created by Hassim, Muhammad Hanis on 28/08/2024.
//

import Foundation

class MySingletonAnalytics {
    static let shared = MySingletonAnalytics()
    
    func track(event: String) {
        Analytics.shared.track(event: event) // Wrap to call the original Analtyics class
        
        if self !== MySingletonAnalytics.shared {
            print(">> Not the MySingletonAnalytics singleton")
        }
    }
}
