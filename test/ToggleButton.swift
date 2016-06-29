//
//  hintButton.swift
//  test
//
//  Created by Daniel Budd on 29/06/2016.
//  Copyright © 2016 Daniel Budd. All rights reserved.
//

import UIKit

class ToggleButton: UIButton {
    
    var itemsHidden = false
    
    convenience init(x:CGFloat, y: CGFloat, title: String) {
        
        self.init(frame: CGRect(x:x, y:y, width:60, height:40))
        
        self.backgroundColor = UIColor.cyan()
        self.layer.cornerRadius=15
        self.setTitle(title, for: [])
        self.titleLabel?.font = UIFont(name: "Helvetica", size:18)
        self.addTarget(self, action:#selector(ToggleButton.buttonTapped(sender:)), for: .touchUpInside)
    }
    
    @objc func buttonTapped(sender:UIButton){
        if let view = sender.superview {
            view.toggleSubviews(shouldHide: !self.itemsHidden, ignoreView: sender)
            self.itemsHidden = !self.itemsHidden
        }
    }

}

//Could also do extension but you probably wouldn't do it on this
