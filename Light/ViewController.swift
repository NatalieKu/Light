//
//  ViewController.swift
//  Light
//
//  Created by MEI KU on 2017/7/2.
//  Copyright © 2017年 Natalie KU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    var lightOn = true
    
    @IBOutlet weak var bg: UIImageView!
    
    let imageName = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"]
    var index = 0
    let picCount = 13
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        index = Int(arc4random_uniform(UInt32(picCount)))
        
        updateUI()
    }
        
        func updateUI() {
            
            bg.image = UIImage(named: "\(index)")
            
        }
    
    
    
    @IBAction func btnPressed(_ sender: AnyObject) {
        
        index += 1
         if index == picCount {
            index = 0
        }
        
        updateUI()
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

