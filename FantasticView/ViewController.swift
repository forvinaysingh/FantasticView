//
//  ViewController.swift
//  FantasticView
//
//  Created by Vinay Singh on 27/01/20.
//  Copyright © 2020 Vinay Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let fantasticView = FantasticView(frame: self.view.bounds)
        self.view.addSubview(fantasticView)
    }

}

