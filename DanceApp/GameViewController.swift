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


var testShape = shape(points: [Point(x: 100, y: 100), Point(x: 200, y:300), Point(x: 330, y: 500), Point(x:100, y:400)])
var activeShape = testShape;//shapes[level]

class GameViewController: UIViewController {
    
    @IBOutlet weak var levelNum: UILabel!
    
    @IBOutlet var drawingSpace: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        levelNum.text = "\(level)"
        
        _ = Timer.scheduledTimer(timeInterval: 0.015, target: self, selector: #selector(self.update), userInfo: nil, repeats: true);
        
        startTracking()
        
    }
    
    @objc func update() {
        print("test")
        
        updateLocation()
        drawingSpace.setNeedsDisplay()
    }
    
}

class DrawUIView: UIView {
    
    override func draw(_ rect: CGRect) {
        
        let aPath = UIBezierPath()
        
        
        activeShape = shapes[0]
        
        let num: Int = activeShape.points.count-2
        for i in 0...num {
            
            let j = i+1
            
            aPath.move(to: CGPoint(x: activeShape.points[i].x, y: activeShape.points[i].y))
            
            aPath.addLine(to: CGPoint(x: activeShape.points[j].x, y: activeShape.points[j].y))
            
        }
        aPath.close()
        UIColor.white.set()
        aPath.stroke()
        aPath.lineWidth = 1.0
        
        if (activeShape.nextPoint == activeShape.lastPoint) {
            level += 1
        }
        
        let circlePath = UIBezierPath(arcCenter: CGPoint(x: phoneLocation.x, y: phoneLocation.y), radius: CGFloat(20), startAngle: CGFloat(0), endAngle:CGFloat(Double.pi * 2), clockwise: true)
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath
        
        //change the fill color
        shapeLayer.fillColor = UIColor.clear.cgColor
        //you can change the stroke color
        shapeLayer.strokeColor = UIColor.red.cgColor
        //you can change the line width
        shapeLayer.lineWidth = 3.0
        circlePath.stroke()
        circlePath.fill()
//        view.layer.addSublayer(shapeLayer)
        
    }
}

