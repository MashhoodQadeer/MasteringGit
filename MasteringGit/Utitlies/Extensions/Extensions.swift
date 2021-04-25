//  Extensions.swift
//  MasteringGit
//  Created by Mashhood Qadeer on 25/04/2021.

import UIKit
import Foundation

extension UIView {
    
     open func round(with radius: CGFloat, corners: UIRectCorner) {
        let roundedPath = UIBezierPath(roundedRect: bounds,
                                       byRoundingCorners: corners,
                                       cornerRadii: CGSize(width: radius, height: radius))
        let maskLayer = CAShapeLayer()
        maskLayer.path = roundedPath.cgPath
        layer.mask = maskLayer
    }
    
}
