//
//  ViewController.swift
//  HelloWorldAccessibility-2017-06-22
//
//  Created by Dan on 6/22/17.
//  Copyright © 2017 Daniel Rosenstark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var outerButton: UIButton!
    let button2 = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = outerButton
//         button.isAccessibilityElement = false
        button.addSubview(button2)
        button.addTarget(self, action: #selector(what), forControlEvents: .TouchUpInside)
        button2.addTarget(self, action: #selector(what), forControlEvents: .TouchUpInside)
        button2.accessibilityLabel = "this is two"
        button2.accessibilityIdentifier = "this is his ID"
        button2.setTitle("✸", forState: .Normal)
        var frame = button.bounds
        frame.size.width = frame.size.width * 0.5
        button2.frame = frame
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func what(sender: UIView) {
        print("what it is \(sender.accessibilityLabel)")
        outerButton.accessibilityElements = [button2]
    
    }


}

