//
//  viewMuadiem.swift
//  Dice
//
//  Created by Cam Nhung on 1/14/17.
//  Copyright © 2017 Cam Nhung. All rights reserved.
//

import Foundation
import UIKit
import GoogleMobileAds
@available(iOS 9.0, *)
class viewMuadiem:UIView{
    
    let abtnchoilai:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("MUA THÊM ĐIỂM!", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let AdNative: GADNativeExpressAdView = {
    let AdN = GADNativeExpressAdView()
        AdN.translatesAutoresizingMaskIntoConstraints = false
        return AdN
    }()
    
    let nomoneyimg:UIImageView = {
        let img = UIImageView ()
        img.image = UIImage(named: "Dicebg3")
        img.contentMode = .scaleAspectFit
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    func setup(){
        backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        self.addSubview(nomoneyimg)
        self.addSubview(abtnchoilai)
        self.addSubview(AdNative)
        
        
        addContrainWithVS(format: "V:|-10-[v0(40)]-10-[v1]-100-|", views: abtnchoilai,AdNative)
        abtnchoilai.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        AdNative.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
//        AdNative.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        AdNative.widthAnchor.constraint(equalToConstant: 400).isActive = true
        nomoneyimg.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        nomoneyimg.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        nomoneyimg.topAnchor.constraint(equalTo: topAnchor).isActive = true
        nomoneyimg.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        nomoneyimg.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        nomoneyimg.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
