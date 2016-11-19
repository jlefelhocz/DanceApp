//
//  functions.swift
//  DanceApp
//
//  Created by Julianne Lefelhocz on 11/19/16.
//  Copyright © 2016 JulianneLefelhocz. All rights reserved.
//

import Foundation
import UIKit



public class shape {
    
    var points: [point] = []
    var nextPoint: Int = 0
    var lastPoint: Int = 0
    
    func reset() {
        for point in points {
            point.hasBeenHit = false
        }
        nextPoint = 0
    }
    
   
    
    func getNext() {
        
    }
    
    
}

public class point {
    var x: Double = 0.0
    var y: Double = 0.0
    var hasBeenHit = false

    func getDistance(Point: point) -> Double {
        return sqrt(pow((self.x-Point.x),2)+pow((self.y-Point.y),2))
    }
    
    func checkHit(realPoint: point) -> Bool {
        if (self.getDistance(Point: getLocation()) < 0.1) {
            return true
        }
        
        return false
    }
    
}

