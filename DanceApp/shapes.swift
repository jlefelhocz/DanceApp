//
//  functions.swift
//  DanceApp
//
//  Created by Julianne Lefelhocz on 11/19/16.
//  Copyright © 2016 JulianneLefelhocz. All rights reserved.
//

import Foundation
import UIKit



/*
public class shape {

    
    var points: [point] = []
    var nextPoint: Int = 0
    var lastPoint: Int = 0
    var currentPoint: point;
    
    func reset() {
        for point in points {
            point.hasBeenHit = false
        }
        nextPoint = 0
    }
    
    func getNext(realPoint: point) {
        points[nextPoint].checkHit(realPoint: realPoint);
        if(points[nextPoint].hasBeenHit) {
            nextPoint += 1;
        }
    }
    
    func compShape() {
        
    }
   
    
    init(points: [point]) {
        self.points = points
        currentPoint = points[0]
    }
    
    init(pointsA: [[Double]]) {
        for i in 0...(pointsA.count-1) {
            points.append(point(x: pointsA[i][0], y: pointsA[i][1]))
        }
        lastPoint = points.count-1
        currentPoint = points[0]
    }
    
    
    
}
 */

public class Path {
    
    init() {
        addPoints(numberOfPoints: 10)
    }
    
    var points : [Path] = []
    
    func addPoints(numberOfPoints: Int) {
        for var i in 0...(numberOfPoints - 1) {
            var newX =
            var newY = Point(points.last)
//            points.append(newElement: )
        }
    }
}

<<<<<<< HEAD
public class Point {
=======

public class point {
>>>>>>> bc0fbac43fe6a9bc71a8f81c75d749fabb4ae7a8
    var x: Double = 0.0
    var y: Double = 0.0
    var hasBeenHit = false
    
    func getDistance(Point: Point) -> Double {
        return sqrt(pow((self.x-Point.x),2)+pow((self.y-Point.y),2))
    }
    
<<<<<<< HEAD
    func checkHit(realPoint: Point) {
        if (self.getDistance(Point: phoneLocation) < 0.06) {
=======
    func checkHit(realPoint: point) {
        if (self.getDistance(Point: phoneLocation) < 50) {
            print("Congrats!")
>>>>>>> bc0fbac43fe6a9bc71a8f81c75d749fabb4ae7a8
            self.hasBeenHit = true
        }
    }
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
    
}

