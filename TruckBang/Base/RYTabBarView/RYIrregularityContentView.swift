//
//  RYIrregularityBasicContentView.swift
//  RYSwift
//
//  Created by Ryan on 2018/11/7.
//  Copyright © 2018 Ryan. All rights reserved.
//

import UIKit

import ESTabBarController_swift

class RYIrregularityBasicContentView: RYBouncesContentView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        textColor = UIColor.init(white: 175.0 / 255.0, alpha: 1.0)
        highlightTextColor = CTHEMEColor
        
        iconColor = UIColor.init(white: 175.0 / 255.0, alpha: 1.0)
        highlightIconColor = CTHEMEColor
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class RYIrregularityContentView: ESTabBarItemContentView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.imageView.backgroundColor = UIColor.white
        self.imageView.layer.borderWidth = 2.0
        self.imageView.layer.borderColor = UIColor.white.cgColor
        self.imageView.layer.cornerRadius = 25
        self.insets = UIEdgeInsets(top: -KSP(V: 40), left: 0, bottom: 0, right: 0)
        let transform = CGAffineTransform.identity
        self.imageView.transform = transform
        
        self.superview?.bringSubviewToFront(self)
        
        textColor = UIColor.init(white: 175.0 / 255.0, alpha: 1.0)
        highlightTextColor = CTHEMEColor
        iconColor = CTHEMEColor
        highlightIconColor = CTHEMEColor
        backdropColor = .clear
        highlightBackdropColor = .clear
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        let p = CGPoint.init(x: point.x - imageView.frame.origin.x, y: point.y - imageView.frame.origin.y)
        return sqrt(pow(imageView.bounds.size.width / 2.0 - p.x, 2) + pow(imageView.bounds.size.height / 2.0 - p.y, 2)) < imageView.bounds.size.width / 2.0
    }

    override func updateLayout() {
        super.updateLayout()
        self.imageView.sizeToFit()
        self.imageView.center = CGPoint.init(x: self.bounds.size.width / 2.0, y: self.bounds.size.height / 2.0)
    }
}
