//
//  ShapeArray.swift
//  DanceApp
//
//  Created by Julianne Lefelhocz on 11/20/16.
//  Copyright © 2016 JulianneLefelhocz. All rights reserved.
//

import Foundation

var shapes: [shape] = [];

func setShapes() {
shapes[0] = shape(points: [point(x: 0, y: 0), point(x: 200, y:200), point(x: 100, y: 100), point(x: 10, y:0)])

shapes[1] = shape(points: [point(x: 10, y: 0), point(x: 100, y:0), point(x: 100, y: 100), point(x:300, y:0)])

shapes[2] = shape(points: [point(x: 10, y: 10), point(x: 100, y:0), point(x: 100, y: 100), point(x:0, y:0)])

}
