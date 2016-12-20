//
//  DeepstreamService.swift
//  PizzaTracker
//
//  Created by Akram Hussein on 30/09/2016.
//  Copyright © 2016 deepstreamHub GmbH. All rights reserved.
//

import Foundation

public final class DeepstreamService {
    
    static let sharedInstance = DeepstreamService()
    
    fileprivate (set) var deepstreamClient : DeepstreamClient!
    
    /*
        NOTE:
        
        This will throw a SIGUSR2 error when debugging when it fails to connect.
        Either run this on a real device or set a symbolic breakpoint on UIApplicationMation
        that will continue irrespective.
    
        See: http://stackoverflow.com/a/10456557
    */
    init() {
        self.deepstreamClient = DeepstreamClient("0.0.0.0:6020")
    }
}
