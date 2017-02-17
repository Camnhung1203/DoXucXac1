//
//  extensionLayout.swift
//  Dice
//
//  Created by Cam Nhung on 12/29/16.
//  Copyright © 2016 Cam Nhung. All rights reserved.
//

import Foundation
import UIKit

extension UIView{
    func addContrainWithVS(format:String, views: UIView...){
        var dic:Dictionary<String,Any> = [:]
        for (index,value) in views.enumerated(){
            value.translatesAutoresizingMaskIntoConstraints = false
            dic["v\(index)"] = value
        }
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: dic))
        
    }
}
