//
//  GradientView.swift
//  Tips
//
//  Created by Anton Novoselov on 01/01/2018.
//  Copyright © 2018 Anton Novoselov. All rights reserved.
//

import UIKit

@IBDesignable class GradientView: UIView {
    @IBInspectable var startColor: UIColor = .white
    @IBInspectable var endColor: UIColor = .black
    
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        (layer as! CAGradientLayer).colors = [startColor.cgColor, endColor.cgColor]
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        layoutSubviews()
    }
}
