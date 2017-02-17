//
//  viewLogin.swift
//  Dice
//
//  Created by Cam Nhung on 1/13/17.
//  Copyright © 2017 Cam Nhung. All rights reserved.
//

import Foundation
import UIKit

@available(iOS 9.0, *)
class viewLogin:UIView{
    
    var lblthongbao1:UILabel = {
        let lbl = UILabel()
        lbl.textColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        lbl.text = "Bạn muốn lưu điểm và chơi lại từ đầu?"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    var txtUser:UITextField = {
        let txtU = UITextField()
        txtU.textColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        txtU.placeholder = "Nhập tên hoặc email"
        txtU.borderStyle = .line
        txtU.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        txtU.translatesAutoresizingMaskIntoConstraints = false
        return txtU
    }()
  
    let abtnDongy:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Lưu điểm", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnHuyluudiem:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
   
    let abtnkhoangtrong:UIButton = {
        let abtnTop = UIButton()
        abtnTop.setTitle("", for: UIControlState.normal)
        abtnTop.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnTop.translatesAutoresizingMaskIntoConstraints = false
        return abtnTop
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
       
        self.addSubview(txtUser)
        self.addSubview(abtnDongy)
        self.addSubview(abtnHuyluudiem)
        self.addSubview(lblthongbao1)
        self.addSubview(abtnkhoangtrong)
        self.addSubview(moneyimg)
        addContrainWithVS(format: "V:|-50-[v0]-10-[v1]-10-[v2]-10-[v3]-|", views: lblthongbao1,txtUser,abtnkhoangtrong,moneyimg)
        lblthongbao1.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        txtUser.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        txtUser.widthAnchor.constraint(equalToConstant: 200).isActive = true
        abtnkhoangtrong.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        abtnkhoangtrong.widthAnchor.constraint(equalToConstant: 100).isActive = true
        abtnDongy.rightAnchor.constraint(equalTo: abtnkhoangtrong.leftAnchor).isActive = true
        abtnHuyluudiem.leftAnchor.constraint(equalTo: abtnkhoangtrong.rightAnchor).isActive = true
        
        abtnDongy.topAnchor.constraint(equalTo: abtnkhoangtrong.topAnchor).isActive = true
        abtnHuyluudiem.topAnchor.constraint(equalTo: abtnkhoangtrong.topAnchor).isActive = true
        moneyimg.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
}
}
