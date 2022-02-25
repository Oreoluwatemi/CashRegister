//
//  customButton.swift
//  CashRegister
//
//  Created by Oreoluwa Lawal on 2022-02-17.
//

import UIKit

class customButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    //Design the border the buttons
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        layer.cornerRadius = layer.frame.height/5
    }

}
