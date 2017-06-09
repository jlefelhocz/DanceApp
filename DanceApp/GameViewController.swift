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


<<<<<<< HEAD
var testShape = shape(points: [Point(x: 100, y: 100), Point(x: 200, y:300), Point(x: 330, y: 500), Point(x:100, y:400)])
var activeShape = testShape;//shapes[level]
=======
var testShape = shape(points: [point(x: 100, y: 100), point(x: 200, y:300), point(x: 330, y: 500), point(x:100, y:400)])
var activeShape = shapes[0]
>>>>>>> bc0fbac43fe6a9bc71a8f81c75d749fabb4ae7a8

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
<<<<<<< Updated upstream
=======
        
>>>>>>> Stashed changes
        print("test")
        
        updateLocation()
        drawingSpace.setNeedsDisplay()
        
        activeShape.currentPoint.checkHit(realPoint: phoneLocation)
        
        activeShape.getNext(realPoint: activeShape.currentPoint)
        
        for point in activeShape.points {
            var count = -1
            if(point.hasBeenHit == true) {
                count += 1
            }
            if(count == activeShape.lastPoint){
                print("WINNER WINNER CHICKEN DINNER")
                //level += 1
            }
        }

    }
    
}

class DrawUIView: UIView {
    
    override func draw(_ rect: CGRect) {
        
        let aPath = UIBezierPath()
        
<<<<<<< Updated upstream
        
        activeShape = shapes[0]
=======
    
        
>>>>>>> Stashed changes
        
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

