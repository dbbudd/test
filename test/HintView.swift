//
//  Hint.swift
//  test
//
//  Created by Daniel Budd on 29/06/2016.
//  Copyright © 2016 Daniel Budd. All rights reserved.
//

import Foundation
import UIKit

struct HintView {
    
    let size: CGSize
    
    //Because this is a var we could set it after
    var hintSize: CGFloat?
    var hintBackgroundColor = UIColor.white()
    
    init(size: CGSize) {
        
        self.size = size

    }
    
    func viewWith(point:CGPoint, hintText: String) -> UIView {
        
        let container = UIView(frame: CGRect(x:point.x, y: point.y, width:size.width, height:size.height))
        
        //CREATE CONTAINER
        container.backgroundColor = UIColor.clear()
        
        let hint = UILabel()
        
        //CREATE HINT TEXT
        hint.frame = CGRect(x:5, y:5, width:size.width, height:size.height)
        hint.backgroundColor = self.hintBackgroundColor
        hint.alpha = 0.8
        hint.layer.cornerRadius = 10
        hint.clipsToBounds = true
        hint.textAlignment = NSTextAlignment.center
        //Number of lines 0 is auto resizing
        hint.numberOfLines = 0
        
        hint.text = hintText
        
        //This is a use of an optional 
        if let hintSize = self.hintSize {
            hint.font = UIFont(name: "Helvetica", size: hintSize)
        }
        
        container.addSubview(hint)
        
        //CREATE BUTTON
        let button = ToggleButton(x: 0, y: 0, title: "hint")
        
        container.addSubview(button)
        
        return container
    }
    
}
