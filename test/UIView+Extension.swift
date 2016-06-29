//
//  UIView+Extension.swift
//  test
//
//  Created by Luke Durrant on 29/06/2016.
//  Copyright © 2016 Daniel Budd. All rights reserved.
//

import Foundation
import UIKit

extension UIView
{
    func animateIsHidden(shouldHide:Bool, duration: TimeInterval = 0.2) {
        
        UIView.animate(withDuration: duration, animations: {
            if shouldHide {
                self.alpha = 0
            } else {
                self.alpha = 1
            }
            }, completion: {
                _ in self.isHidden = shouldHide
        })
    }
    
    func toggleSubviews(shouldHide: Bool, ignoreView: UIView?){
        for view in self.subviews{
            if view != ignoreView {
                view.animateIsHidden(shouldHide: shouldHide)
            }
        }
    }
}
