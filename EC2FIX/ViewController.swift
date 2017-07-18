//
//  ViewController.swift
//  EC2FIX
//
//  Created by Nihal Ismail K on 06/07/17.
//  Copyright © 2017 EC2FIX. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
  
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let statWindow = UIApplication.shared.value(forKey:"statusBarWindow") as! UIView
        let statusBar = statWindow.subviews[0] as UIView
        statusBar.backgroundColor = UIColorFromRGB(rgbValue: 0x0078ff) //your required color
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

 
}

