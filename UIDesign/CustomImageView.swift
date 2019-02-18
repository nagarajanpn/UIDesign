//
//  CustomImageView.swift
//  UIDesign
//
//  Created by wflogin on 18/02/19.
//  Copyright © 2019 Winfashion. All rights reserved.
//

import Foundation
import UIKit
class CustomImageView: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    func setupImageView()  {
        layer.cornerRadius = 13.0
        layer.masksToBounds = true
        clipsToBounds = true
        addingShadow()
    }
    private func addingShadow() {
        layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
        layer.shadowRadius = 5
        layer.shadowOpacity = 0.5 
    }
    func setupImageViewCornerRadius(val:CGFloat)  {
        layer.cornerRadius = val
        layer.masksToBounds = true
        clipsToBounds = true
    }
}
