//
//  RoundImage.swift
//  Proy IOS
//
//  Created by P on 11/19/19.
//  Copyright © 2019 JSTech. All rights reserved.
//

import UIKit

class RoundImage: UIImageView {
    
    @IBInspectable var cornerRadius : CGFloat = 0 {
        didSet{
            self.cornerRadius = 25
        }
    }
    @IBInspectable var borderWidth : CGFloat = 0 {
        didSet{
            self.borderWidth = 1
        }
    }
    @IBInspectable var borderColor : UIColor = UIColor.clear {
        didSet{
            self.borderColor = UIColor.white
        }
    }
}
