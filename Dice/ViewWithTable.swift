//
//  ViewWithTable.swift
//  Dice
//
//  Created by Cam Nhung on 1/17/17.
//  Copyright © 2017 Cam Nhung. All rights reserved.
//

import Foundation
import UIKit

@available(iOS 9.0, *)
class ViewWithTable:UIView{
    
    var lblthongbao2:UILabel = {
        let lblcm = UILabel()
        lblcm.textColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        lblcm.text = "BẢNG XẾP HẠNG TOP 10 NGƯỜI CHƠI"
        lblcm.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblcm.translatesAutoresizingMaskIntoConstraints = false
        return lblcm
    }()
    var lblTitlePlayer:UILabel = {
        let lblTP = UILabel()
        lblTP.textColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        lblTP.text = "NGƯỜI CHƠI"
        lblTP.textAlignment = .center
        lblTP.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblTP.translatesAutoresizingMaskIntoConstraints = false
        return lblTP
    }()
    var lblTScorePlayer:UILabel = {
        let lblSP = UILabel()
        lblSP.textColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        lblSP.text = "ĐIỂM SỐ"
        lblSP.textAlignment = .center
        
        lblSP.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblSP.translatesAutoresizingMaskIntoConstraints = false
        return lblSP
    }()
    let abtnDong:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đóng cửa sổ", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
     var Bangdiem:UITableView = {
//        let tbl = UITableView(frame: CGRect.zero, style: UITableViewStyle.grouped)
        let tbl = UITableView(frame: UIScreen.main.bounds, style: UITableViewStyle.grouped)
        tbl.register(Cell.self, forCellReuseIdentifier: "Cell")
        tbl.translatesAutoresizingMaskIntoConstraints = false
        //bước 4 của auto layout tự co giãn label theo chữ: huỷ kích thước mặc định của table bằng 2 dòng lệnh bên dưới:
        tbl.estimatedRowHeight = 100
        tbl.rowHeight = UITableViewAutomaticDimension
        return tbl
    }()
    let viewbackground:UIImageView = {
        let img = UIImageView ()
        img.image = UIImage(named: "Dicebg3")
        img.contentMode = .scaleAspectFit
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(viewbackground)
        self.addSubview(lblthongbao2)
        self.addSubview(Bangdiem)
        self.addSubview(lblTitlePlayer)
        self.addSubview(lblTScorePlayer)
       self.addSubview(abtnDong)
        
        addContrainWithVS(format: "V:|-10-[v0]-10-[v1]-10-[v2]|", views: lblthongbao2,Bangdiem,abtnDong)
        lblthongbao2.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        Bangdiem.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        Bangdiem.widthAnchor.constraint(equalToConstant: 400).isActive = true
        
        lblTitlePlayer.topAnchor.constraint(equalTo: Bangdiem.topAnchor).isActive = true
        lblTitlePlayer.leftAnchor.constraint(equalTo: Bangdiem.leftAnchor).isActive = true
        lblTitlePlayer.widthAnchor.constraint(equalToConstant: 250).isActive = true
        lblTitlePlayer.heightAnchor.constraint(equalToConstant: 40).isActive = true
        lblTScorePlayer.topAnchor.constraint(equalTo: Bangdiem.topAnchor).isActive = true
        lblTScorePlayer.leftAnchor.constraint(equalTo: lblTitlePlayer.rightAnchor).isActive = true
        lblTScorePlayer.rightAnchor.constraint(equalTo: Bangdiem.rightAnchor).isActive = true
        lblTScorePlayer.heightAnchor.constraint(equalToConstant: 40).isActive = true
        abtnDong.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        viewbackground.topAnchor.constraint(equalTo: topAnchor).isActive = true
        viewbackground.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        viewbackground.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        viewbackground.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
}
}
