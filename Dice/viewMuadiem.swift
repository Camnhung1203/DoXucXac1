//
//  viewMuadiem.swift
//  Dice
//
//  Created by Cam Nhung on 1/14/17.
//  Copyright © 2017 Cam Nhung. All rights reserved.
//

import Foundation
import UIKit

@available(iOS 9.0, *)
class viewMuadiem:UIView{
    
    var lblthongbao:UILabel = {
        let lblcm = UILabel()
        lblcm.textColor = #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)
        lblcm.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblcm.translatesAutoresizingMaskIntoConstraints = false
        return lblcm
    }()
    let abtnchoilai:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Thử lại vận may!", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()

    let nomoneyimg:UIImageView = {
        let img = UIImageView ()
        img.image = UIImage(named: "nomoney1")
        img.contentMode = .scaleAspectFill
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(lblthongbao)
        self.addSubview(abtnchoilai)
        self.addSubview(nomoneyimg)
        addContrainWithVS(format: "V:|-10-[v0]-10-[v1]-10-[v2]", views: lblthongbao,abtnchoilai,nomoneyimg)
        lblthongbao.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        abtnchoilai.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        nomoneyimg.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
