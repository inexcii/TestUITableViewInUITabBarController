//
//  ViewController.swift
//  TestTableViewInTabBarController0606
//
//  Created by Yuan Zhou on 2019/06/06.
//  Copyright © 2019 BCKK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func plusButtonTapped(_ sender: Any) {
        SecondViewController.data.append("newString")
        SecondViewController.data2.append("newString")
    }
    
}

