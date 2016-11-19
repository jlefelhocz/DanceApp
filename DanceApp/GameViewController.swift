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

class GameViewController: UIViewController {
    
    @IBOutlet weak var levelNum: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        levelNum.text = "\(level)"
    }

}
