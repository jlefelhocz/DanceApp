//
//  GameViewController.swift
//  DanceApp
//
//  Created by Julianne Lefelhocz on 11/19/16.
//  Copyright © 2016 JulianneLefelhocz. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit


var testShape = shape(points: [point(x: 100, y: 100), point(x: 200, y:300), point(x: 330, y: 500), point(x:100, y:400)])
var activeShape = testShape;//shapes[level]

class GameViewController: UIViewController {
    
    @IBOutlet weak var levelNum: UILabel!
    
    @IBOutlet var drawingSpace: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        levelNum.text = "\(level)"
        //testshape.drawlines(rect: CGRect(x: 0, y: 0, width: 100, height: 100));
        
        var timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.update), userInfo: nil, repeats: true);
        
        startTracking()
        
    }
    func update() {
        print("test")
        
        updateLocation()
    }
    
    
}

class DrawUIView: UIView {
    override func draw(_ rect: CGRect) {
        
        let aPath = UIBezierPath()
        
        
        let num: Int = activeShape.points.count-2
        for i in 0...num {
            
            let j = i+1
            
            aPath.move(to: CGPoint(x: activeShape.points[i].x, y: activeShape.points[i].y))
            
            aPath.addLine(to: CGPoint(x: activeShape.points[j].x, y: activeShape.points[j].y))
            
        }
        aPath.close()
        UIColor.white.set()
        aPath.stroke()
        
        if (activeShape.nextPoint == activeShape.lastPoint) {
            level += 1
        }
        
    }
}
    
