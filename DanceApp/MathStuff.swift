//
//  MathStuff.swift
//  DanceApp
//
//  Created by Julianne Lefelhocz on 11/19/16.
//  Copyright © 2016 JulianneLefelhocz. All rights reserved.
//

import Foundation
import CoreMotion


var activelyTracking: Bool = false;
var phoneLocation: point = point(x: 0,y: 0)
var velX: Double = 0
var velY: Double = 0
var motionManager: CMMotionManager!
var lastTime = (NSDate()).timeIntervalSince1970


func startTracking() {
    activelyTracking = true;
    phoneLocation = point(x: 0,y: 0);
    velX = 0
    velY = 0
    motionManager = CMMotionManager()
    motionManager.startAccelerometerUpdates()
    lastTime = (NSDate()).timeIntervalSince1970
}

func stopTracking() {
    activelyTracking = false;
    
}

func updateLocation() {
    print("hello")
    if(activelyTracking == true) {
        if let accelerometerData = motionManager.accelerometerData {
            let dt = (NSDate()).timeIntervalSince1970 - lastTime;
            velX += accelerometerData.acceleration.x * dt;
            velY += accelerometerData.acceleration.y * dt;
            phoneLocation = point(x: phoneLocation.x + velX * dt, y: phoneLocation.y + velY * dt)
            print("accX :: \(accelerometerData.acceleration.x)")
            print("accY :: \(accelerometerData.acceleration.y)")
            print("velX :: \(velX)")
            print("velY :: \(velY)")
            print("posX :: \(phoneLocation.x)")
            print("posY :: \(phoneLocation.y)")
        }
    }
}
