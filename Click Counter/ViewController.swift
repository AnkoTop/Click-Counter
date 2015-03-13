//
//  ViewController.swift
//  Click Counter
//
//  Created by Anko Top on 13/03/15.
//  Copyright (c) 2015 Anko Top. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var label: UILabel!
    var mirrorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //label
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        
        self.view.addSubview(label)
        self.label = label
        
        //mirror label
        var mirrorLabel = UILabel()
        mirrorLabel.frame = CGRectMake(250, 150, 60, 60)
        mirrorLabel.text = "0"
        
        self.view.addSubview(mirrorLabel)
        self.mirrorLabel = mirrorLabel

    
        //increment button
        var buttonIncrement = UIButton()
        buttonIncrement.frame = CGRectMake(100, 250, 100, 60)
        buttonIncrement.setTitle("Increment", forState: .Normal)
        buttonIncrement.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(buttonIncrement)
        
        buttonIncrement.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        buttonIncrement.addTarget(self, action: "toggleBackgroundColor", forControlEvents: UIControlEvents.TouchUpInside)
        
        //decrement button
        var buttonDecrement = UIButton()
        buttonDecrement.frame = CGRectMake(200, 250, 100, 60)
        buttonDecrement.setTitle("Decrement", forState: .Normal)
        buttonDecrement.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(buttonDecrement)
        
        buttonDecrement.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        buttonDecrement.addTarget(self, action: "toggleBackgroundColor", forControlEvents: UIControlEvents.TouchUpInside)

    }

    func incrementCount() {
        self.count++
        self.label.text = "\(self.count)"
        self.mirrorLabel.text = "\(self.count)"
        if self.count < 0 {
            self.label.textColor = UIColor.redColor()
            self.mirrorLabel.textColor = UIColor.redColor()
        } else {
            self.label.textColor = UIColor.blackColor()
            self.mirrorLabel.textColor = UIColor.blackColor()
        }
    }
    
    func decrementCount() {
        self.count--
        self.label.text = "\(self.count)"
        self.mirrorLabel.text = "\(self.count)"
        if self.count < 0 {
            self.label.textColor = UIColor.redColor()
            self.mirrorLabel.textColor = UIColor.redColor()
        } else {
            self.label.textColor = UIColor.blackColor()
            self.mirrorLabel.textColor = UIColor.blackColor()
        }
    }
    
    func toggleBackgroundColor(){
        if self.view.backgroundColor == UIColor.lightGrayColor() {
            self.view.backgroundColor = UIColor.whiteColor()
        } else {
            self.view.backgroundColor = UIColor.lightGrayColor()
        }
    }
}

