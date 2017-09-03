//
//  ViewController.swift
//  VerticalAlignmentLabel
//
//  Created by YukiKuroda on 09/03/2017.
//  Copyright (c) 2017 YukiKuroda. All rights reserved.
//

import UIKit
import VerticalAlignmentLabel

class ViewController: UIViewController {

    @IBOutlet weak var label: VerticalAlignmentLabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changedVerticalAlignSegment(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            label.verticalTextAlignment = .top
        case 1:
            label.verticalTextAlignment = .center
        case 2:
            label.verticalTextAlignment = .bottom
        default:
            break
        }
    }

}

