//
//  MySingletonAnalytics.swift
//  HardDependencies
//
//  Created by Hassim, Muhammad Hanis on 28/08/2024.
//

import Foundation

class MySingletonAnalytics {
    private static let instance = MySingletonAnalytics()
    static var shared: MySingletonAnalytics {
        #if DEBUG
        if let stubbedInstance = stubbedInstance {
            stubbedInstance
        }
        #endif
        
        return instance
    }
    
    #if DEBUG
    static var stubbedInstance: MySingletonAnalytics?
    #endif
    
    func track(event: String) {
        Analytics.shared.track(event: event) // Wrap to call the original Analtyics class
        
        if self !== MySingletonAnalytics.instance {
            print(">> Not the MySingletonAnalytics singleton")
        }
    }
}
