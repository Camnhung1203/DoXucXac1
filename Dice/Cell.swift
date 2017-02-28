//
//  Cell.swift
//  Dice
//
//  Created by Cam Nhung on 1/15/17.
//  Copyright © 2017 Cam Nhung. All rights reserved.
//

import Foundation
import UIKit
// TẠO CLASS ĐỂ QUẢN TRỊ CHO TABLEVIEW (có thể tạo từ file swift riêng, code tay thì dùng init bên dưới.
@available(iOS 9.0, *)
class Cell: BaseTableViewCell{
    // thêm label trong code, bỏ vô chỗ class của Cell
    let lblplayer:UILabel = {
        let lbl = UILabel()
        lbl.textColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
        lbl.textAlignment = .center
        // auto layout cho label co giãn theo số chữ trong đó: bước 1 cho numberOfLines = 0, bước 2 vô override init set leftAnchor greaterThan như bên dưới. Bước 3: neo dưới đáy hoặc ở top. Bước 4: gõ 2 dòng lệnh ở table view để xoá kích thước mặc định của table.
        lbl.numberOfLines = 1
        lbl.translatesAutoresizingMaskIntoConstraints = false
        
        return lbl
    }()
    let lbldiem:UILabel = {
        let lbl = UILabel()
        lbl.textColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
        lbl.textAlignment = .center
        // auto layout cho label co giãn theo số chữ trong đó: bước 1 cho numberOfLines = 0, bước 2 vô override init set leftAnchor greaterThan như bên dưới. Bước 3: neo dưới đáy hoặc ở top. Bước 4: gõ 2 dòng lệnh ở table view để xoá kích thước mặc định của table.
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        
        return lbl
    }()
    

    override func setup() {
        super.setup()
       
        // auto layout cho label:
        self.addSubview(lblplayer)
        self.addSubview(lbldiem)
       // lblplayer.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        lblplayer.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        //bước 2 của set label co giãn theo số chữ trong đó
        lblplayer.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        // set kích thước tối thiểu cho label
       lblplayer.widthAnchor.constraint(equalToConstant: 250).isActive = true
        //lblplayer.widthAnchor.constraint(greaterThanOrEqualToConstant: 100).isActive = true
        // neo dưới bottom
        lblplayer.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        lbldiem.topAnchor.constraint(equalTo: lblplayer.topAnchor).isActive = true
        lbldiem.leftAnchor.constraint(equalTo: lblplayer.rightAnchor).isActive = true
        lbldiem.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        lbldiem.bottomAnchor.constraint(equalTo: lblplayer.bottomAnchor).isActive = true
    }
}

