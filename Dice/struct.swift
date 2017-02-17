//
//  struct.swift
//  Dice
//
//  Created by Cam Nhung on 2/16/17.
//  Copyright © 2017 Cam Nhung. All rights reserved.
//

import Foundation

struct Player {
//    let id:Int
    let ten:String
    let diem:Int
    init(object:Dictionary<String,AnyObject>){
//        id = object["idPlayer"] as! Int
        ten = object["tenPlayer"] as! String
        diem = object["diemPlayer"] as! Int
    }
}
