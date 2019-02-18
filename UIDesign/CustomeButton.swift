//
//  CustomeButton.swift
//  UIDesign
//
//  Created by wflogin on 18/02/19.
//  Copyright © 2019 Winfashion. All rights reserved.
//

import Foundation
import UIKit
class CustomeButton: UIButton {
    //intialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCustomBtn()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupCustomBtn()
    }
    //
   private func setupCustomBtn()  {
        layer.cornerRadius = 20
        layer.masksToBounds = true
        clipsToBounds = true
        
       
    }
    func setupFBCustomBtn()  {
         backgroundColor = Colors.fbBgColor
        titleLabel!.text = "Facebook"
        setTitle("Facebook", for: .normal)
        setTitleColor(.white, for: .normal)
       // titleLabel?.font = Fontz.fbTitleFont
    }
    func setupGoogleCustomBtn()  {
        backgroundColor = Colors.googleBgColor
        setTitle("Google", for: .normal)
        //titleLabel!.text = "Google"
        setTitleColor(.white, for: .normal)
        titleLabel?.font = Fontz.googleTitleFont
    }
    func setupWithEmailBtn()  {
        backgroundColor = Colors.fbBgColor
        titleLabel!.text = "Continue with Email"
        setTitle("Continue with Email", for: .normal)
        setTitleColor(.white, for: .normal)
    }
    
    func shake() {
        let shake           = CABasicAnimation(keyPath: "position")
        shake.duration      = 0.1
        shake.repeatCount   = 2
        shake.autoreverses  = true
        
        let fromPoint       = CGPoint(x: center.x - 8, y: center.y)
        let fromValue       = NSValue(cgPoint: fromPoint)
        
        let toPoint         = CGPoint(x: center.x + 8, y: center.y)
        let toValue         = NSValue(cgPoint: toPoint)
        
        shake.fromValue     = fromValue
        shake.toValue       = toValue
        
        layer.add(shake, forKey: "position")
    }
}
