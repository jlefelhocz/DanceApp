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


var testshape = shape(points: [point(x: 0, y: 0), point(x: 100, y:0), point(x: 100, y: 100), point(x:0, y:0)], nextPoint: 0, lastPoint: 3)


class GameViewController: UIViewController {
    
    @IBOutlet weak var levelNum: UILabel!
    
    @IBOutlet var drawingSpace: UIView!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        levelNum.text = "\(level)"
        //testshape.drawlines(rect: CGRect(x: 0, y: 0, width: 100, height: 100));
        
       
    }
    
   
}

class DrawUIView: UIView {
    override func draw(_ rect: CGRect) {
        
        let aPath = UIBezierPath()
        
        let num: Int = testshape.points.count-2
        for i in 0...num {
            
            let j = i+1
            
            aPath.move(to: CGPoint(x: testshape.points[i].x, y: testshape.points[i].y))
            
            aPath.addLine(to: CGPoint(x: testshape.points[j].x, y: testshape.points[j].y))
            
        }
        aPath.close()
        UIColor.white.set()
        aPath.stroke()

    }
}
