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
var phoneLocation: Point = Point(x: 0,y: 0)
var velX: Double = 0
var velY: Double = 0
var motionManager: CMMotionManager!
var lastTime = (NSDate()).timeIntervalSince1970


func startTracking() {
    activelyTracking = true;
    phoneLocation = Point(x: 0,y: 0);
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
            
            velX += accelerometerData.acceleration.x * dt * 500;
            velY -= accelerometerData.acceleration.y * dt * 500;
            
            
            phoneLocation = Point(x: phoneLocation.x + velX * dt, y: phoneLocation.y + velY * dt)
            
            
            let maxPosX: Double = 320
            let maxPosY: Double = 540
            var xVal = phoneLocation.x
            var yVal = phoneLocation.y
            if(xVal > maxPosX) {
                xVal = maxPosX
                velX = 0
            }
            if(xVal < 0) {
                xVal = 0
                velX = 0
            }
            if(yVal > maxPosY) {
                yVal = maxPosY
                velY = 0
            }
            if(yVal < 0) {
                yVal = 0;
                velY = 0
            }
            phoneLocation = Point(x: xVal, y: yVal)
            
            
            let maxVel: Double = 50
            xVal = velX
            yVal = velY
            if(abs(xVal) > maxVel) {
                xVal = xVal / abs(xVal) * maxVel
            }
            if(abs(yVal) > maxVel) {
                yVal = yVal / abs(yVal) * maxVel
            }
            velX = xVal
            velY = yVal
            
            
            
            lastTime = (NSDate()).timeIntervalSince1970
            
            
            print("accX :: \(accelerometerData.acceleration.x * 9.8)")
            print("accY :: \(accelerometerData.acceleration.y * 9.8)")
            print("velX :: \(velX)")
            print("velY :: \(velY)")
            print("posX :: \(phoneLocation.x)")
            print("posY :: \(phoneLocation.y)")
        }
    }
}
