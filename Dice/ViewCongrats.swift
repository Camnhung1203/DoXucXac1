//
//  ViewCongrats.swift
//  Dice
//
//  Created by Cam Nhung on 1/12/17.
//  Copyright © 2017 Cam Nhung. All rights reserved.
//

import Foundation
import UIKit

@available(iOS 9.0, *)
class UIViewCongrats:UIView{
   
    var lblchucmung:UILabel = {
        let lblcm = UILabel()
        lblcm.textColor = #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)
        lblcm.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblcm.translatesAutoresizingMaskIntoConstraints = false
        return lblcm
    }()
    let abtnOkie:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Chơi tiếp", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnLuudiem:UIButton = {
        let abtnLuu = UIButton()
        abtnLuu.setTitle("Lưu điểm", for: UIControlState.normal)
        abtnLuu.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnLuu.translatesAutoresizingMaskIntoConstraints = false
        return abtnLuu
    }()
    let abtnkhoangtrong:UIButton = {
        let abtnLuu = UIButton()
        abtnLuu.setTitle("", for: UIControlState.normal)
        abtnLuu.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnLuu.translatesAutoresizingMaskIntoConstraints = false
        return abtnLuu
    }()
    let moneyimg:UIImageView = {
        let img = UIImageView ()
        img.image = UIImage(named: "money5")
        img.contentMode = .scaleAspectFit
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(lblchucmung)
        self.addSubview(abtnOkie)
        self.addSubview(abtnLuudiem)
        self.addSubview(abtnkhoangtrong)
        self.addSubview(moneyimg)
        addContrainWithVS(format: "V:|-10-[v0]-10-[v1]-10-[v2]", views: lblchucmung,abtnOkie,moneyimg)
        lblchucmung.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        abtnkhoangtrong.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        abtnkhoangtrong.widthAnchor.constraint(equalToConstant: 100).isActive = true
        abtnOkie.rightAnchor.constraint(equalTo: abtnkhoangtrong.leftAnchor).isActive = true
        abtnOkie.topAnchor.constraint(equalTo: abtnkhoangtrong.topAnchor).isActive = true
        
        abtnLuudiem.leftAnchor.constraint(equalTo: abtnkhoangtrong.rightAnchor).isActive = true
        abtnLuudiem.topAnchor.constraint(equalTo: abtnkhoangtrong.topAnchor).isActive = true
        moneyimg.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
