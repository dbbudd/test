//
//  ViewController.swift
//  test
//
//  Created by Daniel Budd on 27/06/2016.
//  Copyright © 2016 Daniel Budd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let hint = HintView(size: CGSize(width: 290, height: 150))
        
        let hintView = hint.viewWith(point: CGPoint(x: 10, y: 100), hintText: "Changing the text to something else to test this")
        
        self.view.addSubview(hintView)
        
        let hintView2 = hint.viewWith(point: CGPoint(x: 10, y: 300), hintText: "This is more text")
        
        self.view.addSubview(hintView2)
        
        
    }
    
    
}

