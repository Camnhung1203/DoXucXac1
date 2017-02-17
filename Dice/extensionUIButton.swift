//
//  extensionUIButton.swift
//  Dice
//
//  Created by Cam Nhung on 1/3/17.
//  Copyright © 2017 Cam Nhung. All rights reserved.
//

import Foundation
import UIKit

extension UIButton{
    func dinhdang(doRongVien:CGFloat?,mauSacVien:CGColor?,doBoTron:CGFloat,mauSacChu:UIColor,mauNen:UIColor){
        //viền: độ rộng viền và màu sắc viền
        self.layer.borderWidth = doRongVien!
        self.layer.borderColor = mauSacVien
        //độ bo tròn
        self.layer.cornerRadius = doBoTron
        // màu sắc chữ
        self.tintColor = mauSacChu
        // màu nền
        self.backgroundColor = mauNen
    }
    func dinhdang(){
        
    }
    
}
