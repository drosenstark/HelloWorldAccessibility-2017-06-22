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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = outerButton
        let button2 = UIButton()
        button.addSubview(button2)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

