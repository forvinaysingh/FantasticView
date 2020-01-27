//
//  FantasticView.swift
//  FantasticView
//
//  Created by Vinay Singh on 27/01/20.
//  Copyright © 2020 Vinay Singh. All rights reserved.
//

import Foundation
import UIKit

class FantasticView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let colors : [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
        var colorCounter = 0
        
        let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in  //1
            UIView.animate(withDuration: 2.0) {  //2
                self.layer.backgroundColor = colors[colorCounter % 6].cgColor  //3
                colorCounter+=1  //4
            }
        }
        
        scheduledColorChanged.fire()  //5
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
