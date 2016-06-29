//
//  ViewController.swift
//  test
//
//  Created by Daniel Budd on 27/06/2016.
//  Copyright © 2016 Daniel Budd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let container = UIView(frame: CGRect(x:0, y:150, width:290, height:150))
    let button = UIButton(frame: CGRect(x:0,y:0,width:60,height:40))
    let hint = UILabel()
    let hintText = "Changing the text to something else to test the borders"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createHint()
    }
    
    func createHint(){
        //CREATE CONTAINER
        var Y_Co = (self.view.frame.size.height - container.frame.height) - 50
        var X_Co = self.view.frame.size.width - container.frame.width - 10
        let X_Width = self.view.frame.size.width
        container.frame = CGRect(x:X_Co, y:Y_Co, width:X_Width, height:150)
        container.backgroundColor = UIColor.clear()
        
        self.view.addSubview(container)
        
        //CREATE HINT TEXT
        hint.frame = CGRect(x:5, y:5, width:280, height:120)
        hint.backgroundColor = UIColor.white()
        hint.alpha = 0.8
        hint.layer.cornerRadius = 10
        hint.clipsToBounds = true
        hint.textAlignment = NSTextAlignment.center
        hint.numberOfLines = 5
        hint.text = hintText
        hint.font = UIFont(name: "Helvetica", size:14)
        
        container.addSubview(hint)
        
        //CREATE BUTTON
        Y_Co = (self.view.frame.size.height - button.frame.height) - 10
        X_Co = self.view.frame.size.width - button.frame.width - 10
        
        button.frame = CGRect(x:X_Co,y:Y_Co,width:60,height:40)
        button.backgroundColor = UIColor.cyan()
        button.layer.cornerRadius=15
        button.setTitle("hint", for: [])
        button.titleLabel?.font = UIFont(name: "Helvetica", size:18)
        button.addTarget(self, action:#selector(buttonAction), for: UIControlEvents.touchUpInside)
        
        self.view.addSubview(button)
    }
    
    
    func fadeOutSubviews(passView: UIView){
        for view in passView.subviews{
            UIView.animate(withDuration: 0.1, animations: {
                view.alpha = 0
                }, completion: {
                    _ in view.isHidden = true
            })
        }
    }
    
    func fadeInSubviews(passView: UIView){
        for view in passView.subviews{
            UIView.animate(withDuration: 0.1, animations: {
                view.alpha = 1
                }, completion: {
                        _ in view.isHidden = false
            })
        }
    }
    
    func buttonAction(){
        if hint.isHidden == false{
            fadeOutSubviews(passView: container)
        } else {
            fadeInSubviews(passView: container)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

