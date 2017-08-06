//
//  ViewController.swift
//  Labels
//
//  Created by iOS Café on 06/08/2017.
//  Copyright © 2017 iOS Café. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setNeedsStatusBarAppearanceUpdate()
        
        scrollView.contentLayoutGuide.bottomAnchor.constraint(equalTo: label.bottomAnchor).isActive = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override var prefersStatusBarHidden: Bool{
        return true
    }

}

