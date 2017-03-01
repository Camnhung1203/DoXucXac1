
//
//  ViewController.swift
//  Dice
//
//  Created by Cam Nhung on 12/17/16.
//  Copyright © 2016 Cam Nhung. All rights reserved.
//

import UIKit
import AVFoundation
import Firebase
import GoogleMobileAds
@available(iOS 9.0, *)
class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource,GADInterstitialDelegate, GADBannerViewDelegate, UIAlertViewDelegate, GADNativeExpressAdViewDelegate, GADVideoControllerDelegate {
    var player:AVAudioPlayer!
    let adUnitId = "ca-app-pub-4012719716442350/3160318226"
    var interstitialAd: GADInterstitial?
    var diem:Int = 500
    var DiemCuoc:Int = 0
    var SoDiemCuocChan:Int = 0
    var SoDiemCuocLe:Int = 0
    var SoDiemCuocTai:Int = 0
    var SoDiemCuocXiu:Int = 0
    var SoDiemCuocCap1:Int = 0
    var SoDiemCuocCap2:Int = 0
    var SoDiemCuocCap3:Int = 0
    var SoDiemCuocCap4:Int = 0
    var SoDiemCuocCap5:Int = 0
    var SoDiemCuocCap6:Int = 0
    var SoDiemCuocBa1:Int = 0
    var SoDiemCuocBa2:Int = 0
    var SoDiemCuocBa3:Int = 0
    var SoDiemCuocBa4:Int = 0
    var SoDiemCuocBa5:Int = 0
    var SoDiemCuocBa6:Int = 0
    var SoDiemCuocBa:Int = 0
    var SoDiemCuoc4:Int = 0
    var SoDiemCuoc5:Int = 0
    var SoDiemCuoc6:Int = 0
    var SoDiemCuoc7:Int = 0
    var SoDiemCuoc8:Int = 0
    var SoDiemCuoc9:Int = 0
    var SoDiemCuoc10:Int = 0
    var SoDiemCuoc11:Int = 0
    var SoDiemCuoc12:Int = 0
    var SoDiemCuoc13:Int = 0
    var SoDiemCuoc14:Int = 0
    var SoDiemCuoc15:Int = 0
    var SoDiemCuoc16:Int = 0
    var SoDiemCuoc17:Int = 0
    
    var SoDiemCuocCon12:Int = 0
    var SoDiemCuocCon13:Int = 0
    var SoDiemCuocCon14:Int = 0
    var SoDiemCuocCon15:Int = 0
    var SoDiemCuocCon16:Int = 0
    var SoDiemCuocCon23:Int = 0
    var SoDiemCuocCon24:Int = 0
    var SoDiemCuocCon25:Int = 0
    var SoDiemCuocCon26:Int = 0
    var SoDiemCuocCon34:Int = 0
    var SoDiemCuocCon35:Int = 0
    var SoDiemCuocCon36:Int = 0
    var SoDiemCuocCon45:Int = 0
    var SoDiemCuocCon46:Int = 0
    var SoDiemCuocCon56:Int = 0
    
    var SoDiemCuocCon1:Int = 0
    var SoDiemCuocCon2:Int = 0
    var SoDiemCuocCon3:Int = 0
    var SoDiemCuocCon4:Int = 0
    var SoDiemCuocCon5:Int = 0
    var SoDiemCuocCon6:Int = 0

    
    @IBOutlet weak var viewLe: UIView!
    @IBOutlet weak var viewXiu: UIView!
    @IBOutlet weak var viewCap1: UIView!
    @IBOutlet weak var viewCap2: UIView!
    @IBOutlet weak var viewCap3: UIView!
    @IBOutlet weak var viewBa1: UIView!
    @IBOutlet weak var viewBa2: UIView!
    @IBOutlet weak var viewBa3: UIView!
    @IBOutlet weak var viewBa: UIView!
    @IBOutlet weak var viewBa4: UIView!
    @IBOutlet weak var viewBa5: UIView!
    @IBOutlet weak var viewBa6: UIView!
    @IBOutlet weak var viewCap4: UIView!
    @IBOutlet weak var viewCap5: UIView!
    @IBOutlet weak var viewCap6: UIView!
    @IBOutlet weak var viewChan: UIView!
    @IBOutlet weak var viewTai: UIView!
   
    @IBOutlet weak var viewDiem4: UIView!
    @IBOutlet weak var viewDiem5: UIView!
    @IBOutlet weak var viewDiem6: UIView!
    @IBOutlet weak var viewDiem7: UIView!
    @IBOutlet weak var viewDiem8: UIView!
    @IBOutlet weak var viewDiem9: UIView!
    @IBOutlet weak var viewDiem10: UIView!
    @IBOutlet weak var viewDiem11: UIView!
    @IBOutlet weak var viewDiem12: UIView!
    @IBOutlet weak var viewDiem13: UIView!
    @IBOutlet weak var viewDiem14: UIView!
    @IBOutlet weak var viewDiem15: UIView!
    @IBOutlet weak var viewDiem16: UIView!
    @IBOutlet weak var viewDiem17: UIView!
    
    @IBOutlet weak var view12: UIView!
    @IBOutlet weak var view13: UIView!
    @IBOutlet weak var view14: UIView!
    @IBOutlet weak var view15: UIView!
    @IBOutlet weak var view16: UIView!
    @IBOutlet weak var view23: UIView!
    @IBOutlet weak var view24: UIView!
    @IBOutlet weak var view25: UIView!
    @IBOutlet weak var view26: UIView!
    @IBOutlet weak var view34: UIView!
    @IBOutlet weak var view35: UIView!
    @IBOutlet weak var view36: UIView!
    @IBOutlet weak var view45: UIView!
    @IBOutlet weak var view46: UIView!
    @IBOutlet weak var view56: UIView!
    
    @IBOutlet weak var view123456: UIView!
    
    @IBOutlet weak var AdBanner: GADBannerView!
   
    @IBOutlet weak var testcon1: UIView!
    @IBOutlet weak var lblTongDiemDatCuoc: UILabel!
   
    @IBOutlet weak var lblMoiDatCuoc: UILabel!
    @IBOutlet weak var lblDiemCuoc: UILabel!
    @IBOutlet weak var lblDiem: UILabel!
    @IBOutlet weak var pckview: UIPickerView!
    @IBOutlet weak var btnPlay: UIButton!
    @IBAction func abtnPlay(_ sender: Any) {
       // player.play()
      //  player.numberOfLoops = -1
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.play), userInfo: nil, repeats: true)
    }
    @IBOutlet weak var btnStop: UIButton!
    @IBAction func abtnStop(_ sender: Any) {
        player.stop()
        btnPlay.isHidden = false
        btnStop.isHidden = true
        timer.invalidate()
        lblMoiDatCuoc.isHidden = false
        lblMoiDatCuoc.text = ""
        
        let random0 = arc4random()%UInt32(arrhinh.count * 300) + 0
        let random1 = arc4random()%UInt32(arrhinh.count * 300) + 0
        let random2 = arc4random()%UInt32(arrhinh.count * 300) + 0
        
        pckview.selectRow(Int(random0), inComponent: 0, animated: true)
        pckview.selectRow(Int(random1), inComponent: 1, animated: true)
        pckview.selectRow(Int(random2), inComponent: 2, animated: true)
        
        let rd0 = random0 % UInt32(arrhinh[0].count)
        let rd1 = random1 % UInt32(arrhinh[1].count)
        let rd2 = random2 % UInt32(arrhinh[2].count)

        // Bắt giá trị xúc xắc thứ 1
        let diemxucxac0:Int!
        let value0 = arrhinh[0][Int(rd0)]
        if value0 == "Dice1"{
          diemxucxac0 = 1
        }else if value0 == "Dice2"{
        diemxucxac0 = 2
        }else if value0 == "Dice3"{
            diemxucxac0 = 3
        }else if value0 == "Dice4"{
            diemxucxac0 = 4
        }else if value0 == "Dice5"{
            diemxucxac0 = 5
        }else{
            diemxucxac0 = 6
        }
        // Bắt giá trị xúc xắc thứ 2:
        let diemxucxac1:Int!
        let value1 = arrhinh[1][Int(rd1)]
        if value1 == "Dice1"{
            diemxucxac1 = 1
        }else if value1 == "Dice2"{
            diemxucxac1 = 2
        }else if value1 == "Dice3"{
            diemxucxac1 = 3
        }else if value1 == "Dice4"{
            diemxucxac1 = 4
        }else if value1 == "Dice5"{
            diemxucxac1 = 5
        }else{
            diemxucxac1 = 6
        }
        //Bắt giá trị xúc xắc thứ 3:
        let diemxucxac2:Int!
        let value2 = arrhinh[2][Int(rd2)]
        if value2 == "Dice1"{
            diemxucxac2 = 1
        }else if value2 == "Dice2"{
            diemxucxac2 = 2
        }else if value2 == "Dice3"{
            diemxucxac2 = 3
        }else if value2 == "Dice4"{
            diemxucxac2 = 4
        }else if value2 == "Dice5"{
            diemxucxac2 = 5
        }else{
            diemxucxac2 = 6
        }
        
        // A: SO SÁNH:
        let tongdiemxucxac01:Int = diemxucxac0 + diemxucxac1
        let tongdiem3xucxac:Int = tongdiemxucxac01 + diemxucxac2
        //1: So sánh cược chẵn:
        if (tongdiem3xucxac) % 2 == 0{
            diem = diem + SoDiemCuocChan
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocChan.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocChan.text = String("+\(self.SoDiemCuocChan)")
            }, completion: {(true) in
                self.viewDaCuocChan.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocChan.text = String(self.SoDiemCuocChan)
            })
        }else{
            if (tongdiem3xucxac) % 2 != 0{
                diem = diem - SoDiemCuocChan
                lblDiem.text = String(diem)
                UIView.animate(withDuration: 1, animations: {
                    self.lblSoDiemDaCuocChan.text = String("-\(self.SoDiemCuocChan)")
                    self.viewDaCuocChan.alpha = 0.5
                    self.viewDaCuocChan.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
                }, completion: {(true) in
                    self.lblSoDiemDaCuocChan.text = String(self.SoDiemCuocChan)
                    self.viewDaCuocChan.alpha = 1
                    self.viewDaCuocChan.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
                })
            }
        }
        //2: So sánh cược lẻ:
        if (tongdiem3xucxac) % 2 != 0{
            diem = diem + SoDiemCuocLe
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocLe.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocLe.text = String("+\(self.SoDiemCuocLe)")
            }, completion: {(true) in
                self.viewDaCuocLe.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
               self.lblSoDiemDaCuocLe.text = String(self.SoDiemCuocLe)
            })
        }else{
            if (tongdiem3xucxac) % 2 == 0{
                diem = diem - SoDiemCuocLe
                lblDiem.text = String(diem)
                UIView.animate(withDuration: 1, animations: {
                    self.lblSoDiemDaCuocLe.text = String("-\(self.SoDiemCuocLe)")
                    self.viewDaCuocLe.alpha = 0.5
                    self.viewDaCuocLe.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
                }, completion: {(true) in
                    self.lblSoDiemDaCuocLe.text = String(self.SoDiemCuocLe)
                    self.viewDaCuocLe.alpha = 1
                    self.viewDaCuocLe.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
                })
            }
        }
        //3: So sánh cược Tài:
        if (tongdiem3xucxac) >= 11{
            diem = diem + SoDiemCuocTai
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocTai.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocTai.text = String("+\(self.SoDiemCuocTai)")
            }, completion: {(true) in
                self.viewDaCuocTai.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocTai.text = String(self.SoDiemCuocTai)
            })
        }else{
            if (tongdiem3xucxac) < 11{
                diem = diem - SoDiemCuocTai
                lblDiem.text = String(diem)
                UIView.animate(withDuration: 1, animations: {
                    self.lblSoDiemDaCuocTai.text = String("-\(self.SoDiemCuocTai)")
                    self.viewDaCuocTai.alpha = 0.5
                    self.viewDaCuocTai.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
                }, completion: {(true) in
                    self.lblSoDiemDaCuocTai.text = String(self.SoDiemCuocTai)
                    self.viewDaCuocTai.alpha = 1
                    self.viewDaCuocTai.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
                })
            }
        }
        //4: So sánh cược Xỉu:
        if (tongdiem3xucxac) <= 10{
            diem = diem + SoDiemCuocXiu
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocXiu.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocXiu.text = String("+\(self.SoDiemCuocXiu)")
            }, completion: {(true) in
                self.viewDaCuocXiu.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocXiu.text = String(self.SoDiemCuocXiu)
            })
        }else{
            if (tongdiem3xucxac) > 10{
                diem = diem - SoDiemCuocXiu
                lblDiem.text = String(diem)
                UIView.animate(withDuration: 1, animations: {
                    self.lblSoDiemDaCuocXiu.text = String("-\(self.SoDiemCuocXiu)")
                    self.viewDaCuocXiu.alpha = 0.5
                    self.viewDaCuocXiu.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
                }, completion: {(true) in
                    self.lblSoDiemDaCuocXiu.text = String(self.SoDiemCuocXiu)
                    self.viewDaCuocXiu.alpha = 1
                    self.viewDaCuocXiu.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
                })
            }
        }
        //5: So sánh cược Cặp 1:
        if (diemxucxac0 == 1 && diemxucxac1 == 1) || (diemxucxac0 == 1 && diemxucxac2 == 1) || (diemxucxac1 == 1 && diemxucxac2 == 1){
            diem = diem + 8*SoDiemCuocCap1
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocCap1.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocCap1.text = String("+\(8*self.SoDiemCuocCap1)")
            }, completion: {(true) in
                self.viewDaCuocCap1.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocCap1.text = String(self.SoDiemCuocCap1)
            })
        }else{
                diem = diem - SoDiemCuocCap1
                lblDiem.text = String(diem)
                UIView.animate(withDuration: 1, animations: {
                    self.lblSoDiemDaCuocCap1.text = String("-\(self.SoDiemCuocCap1)")
                    self.viewDaCuocCap1.alpha = 0.5
                    self.viewDaCuocCap1.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
                }, completion: {(true) in
                    self.lblSoDiemDaCuocCap1.text = String(self.SoDiemCuocCap1)
                    self.viewDaCuocCap1.alpha = 1
                    self.viewDaCuocCap1.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
                })
        }
        //6: So sánh cược Cặp 2:
        if (diemxucxac0 == 2 && diemxucxac1 == 2) || (diemxucxac0 == 2 && diemxucxac2 == 2) || (diemxucxac1 == 2 && diemxucxac2 == 2){
            diem = diem + 8*SoDiemCuocCap2
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocCap2.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocCap2.text = String("+\(8*self.SoDiemCuocCap2)")
            }, completion: {(true) in
                self.viewDaCuocCap2.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocCap2.text = String(self.SoDiemCuocCap2)
            })
        }else{
            diem = diem - SoDiemCuocCap2
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocCap2.text = String("-\(self.SoDiemCuocCap2)")
                self.viewDaCuocCap2.alpha = 0.5
                self.viewDaCuocCap2.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocCap2.text = String(self.SoDiemCuocCap2)
                self.viewDaCuocCap2.alpha = 1
                self.viewDaCuocCap2.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //7: So sánh cược Cặp 3:
        if (diemxucxac0 == 3 && diemxucxac1 == 3) || (diemxucxac0 == 3 && diemxucxac2 == 3) || (diemxucxac1 == 3 && diemxucxac2 == 3){
            diem = diem + 8*SoDiemCuocCap3
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocCap3.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocCap3.text = String("+\(8*self.SoDiemCuocCap3)")
            }, completion: {(true) in
                self.viewDaCuocCap3.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocCap3.text = String(self.SoDiemCuocCap3)
            })
        }else{
            diem = diem - SoDiemCuocCap3
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocCap3.text = String("-\(self.SoDiemCuocCap3)")
                self.viewDaCuocCap3.alpha = 0.5
                self.viewDaCuocCap3.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocCap3.text = String(self.SoDiemCuocCap3)
                self.viewDaCuocCap3.alpha = 1
                self.viewDaCuocCap3.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //8: So sánh cược Cặp 4:
        if (diemxucxac0 == 4 && diemxucxac1 == 4) || (diemxucxac0 == 4 && diemxucxac2 == 4) || (diemxucxac1 == 4 && diemxucxac2 == 4){
            diem = diem + 8*SoDiemCuocCap4
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocCap4.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocCap4.text = String("+\(8*self.SoDiemCuocCap4)")
            }, completion: {(true) in
                self.viewDaCuocCap4.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocCap4.text = String(self.SoDiemCuocCap4)
            })
        }else{
            diem = diem - SoDiemCuocCap4
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocCap4.text = String("-\(self.SoDiemCuocCap4)")
                self.viewDaCuocCap4.alpha = 0.5
                self.viewDaCuocCap4.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocCap4.text = String(self.SoDiemCuocCap4)
                self.viewDaCuocCap4.alpha = 1
                self.viewDaCuocCap4.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //9: So sánh cược Cặp 5:
        if (diemxucxac0 == 5 && diemxucxac1 == 5) || (diemxucxac0 == 5 && diemxucxac2 == 5) || (diemxucxac1 == 5 && diemxucxac2 == 5){
            diem = diem + 8*SoDiemCuocCap5
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocCap5.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocCap5.text = String("+\(8*self.SoDiemCuocCap5)")
            }, completion: {(true) in
                self.viewDaCuocCap5.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocCap5.text = String(self.SoDiemCuocCap5)
            })
        }else{
            diem = diem - SoDiemCuocCap5
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocCap5.text = String("-\(self.SoDiemCuocCap5)")
                self.viewDaCuocCap5.alpha = 0.5
                self.viewDaCuocCap5.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocCap5.text = String(self.SoDiemCuocCap5)
                self.viewDaCuocCap5.alpha = 1
                self.viewDaCuocCap5.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //10: So sánh cược Cặp 6:
        if (diemxucxac0 == 6 && diemxucxac1 == 6) || (diemxucxac0 == 6 && diemxucxac2 == 6) || (diemxucxac1 == 6 && diemxucxac2 == 6){
            diem = diem + 8*SoDiemCuocCap6
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocCap6.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocCap6.text = String("+\(8*self.SoDiemCuocCap6)")
            }, completion: {(true) in
                self.viewDaCuocCap6.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocCap6.text = String(self.SoDiemCuocCap6)
            })
        }else{
            diem = diem - SoDiemCuocCap6
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocCap6.text = String("-\(self.SoDiemCuocCap6)")
                self.viewDaCuocCap6.alpha = 0.5
                self.viewDaCuocCap6.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocCap6.text = String(self.SoDiemCuocCap6)
                self.viewDaCuocCap6.alpha = 1
                self.viewDaCuocCap6.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //11: So sánh cược Ô Ba giống nhau bất kỳ:
        if (diemxucxac0 == diemxucxac1) && (diemxucxac1 == diemxucxac2) {
            diem = diem + 24*SoDiemCuocBa
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocBa.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocBa.text = String("+\(24*self.SoDiemCuocBa)")
            }, completion: {(true) in
                self.viewDaCuocBa.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocBa.text = String(self.SoDiemCuocBa)
            })
        }else{
            diem = diem - SoDiemCuocBa
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocBa.text = String("-\(self.SoDiemCuocBa)")
                self.viewDaCuocBa.alpha = 0.5
                self.viewDaCuocBa.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocBa.text = String(self.SoDiemCuocBa)
                self.viewDaCuocBa.alpha = 1
                self.viewDaCuocBa.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //12: So sánh cược Ô Ba 1:
        if (diemxucxac0 == 1) && (diemxucxac1 == 1) && (diemxucxac2 == 1){
            diem = diem + 150*SoDiemCuocBa1
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocBa1.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocBa1.text = String("+\(150*self.SoDiemCuocBa1)")
            }, completion: {(true) in
                self.viewDaCuocBa1.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocBa1.text = String(self.SoDiemCuocBa1)
            })
        }else{
            diem = diem - SoDiemCuocBa1
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocBa1.text = String("-\(self.SoDiemCuocBa1)")
                self.viewDaCuocBa1.alpha = 0.5
                self.viewDaCuocBa1.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocBa1.text = String(self.SoDiemCuocBa1)
                self.viewDaCuocBa1.alpha = 1
                self.viewDaCuocBa1.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //13: So sánh cược Ô Ba 2:
        if (diemxucxac0 == 2) && (diemxucxac1 == 2) && (diemxucxac2 == 2){
            diem = diem + 150*SoDiemCuocBa2
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocBa2.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocBa2.text = String("+\(150*self.SoDiemCuocBa2)")
            }, completion: {(true) in
                self.viewDaCuocBa2.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocBa2.text = String(self.SoDiemCuocBa2)
            })
        }else{
            diem = diem - SoDiemCuocBa2
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocBa2.text = String("-\(self.SoDiemCuocBa2)")
                self.viewDaCuocBa2.alpha = 0.5
                self.viewDaCuocBa2.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocBa2.text = String(self.SoDiemCuocBa2)
                self.viewDaCuocBa2.alpha = 1
                self.viewDaCuocBa2.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //14: So sánh cược Ô Ba 3:
        if (diemxucxac0 == 3) && (diemxucxac1 == 3) && (diemxucxac2 == 3){
            diem = diem + 150*SoDiemCuocBa3
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocBa3.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocBa3.text = String("+\(150*self.SoDiemCuocBa3)")
            }, completion: {(true) in
                self.viewDaCuocBa3.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocBa3.text = String(self.SoDiemCuocBa3)
            })
        }else{
            diem = diem - SoDiemCuocBa3
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocBa3.text = String("-\(self.SoDiemCuocBa3)")
                self.viewDaCuocBa3.alpha = 0.5
                self.viewDaCuocBa3.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocBa3.text = String(self.SoDiemCuocBa3)
                self.viewDaCuocBa3.alpha = 1
                self.viewDaCuocBa3.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        
        //15: So sánh cược Ô Ba 4:
        if (diemxucxac0 == 4) && (diemxucxac1 == 4) && (diemxucxac2 == 4){
            diem = diem + 150*SoDiemCuocBa4
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocBa4.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocBa4.text = String("+\(150*self.SoDiemCuocBa4)")
            }, completion: {(true) in
                self.viewDaCuocBa4.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocBa4.text = String(self.SoDiemCuocBa4)
            })
        }else{
            diem = diem - SoDiemCuocBa4
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocBa4.text = String("-\(self.SoDiemCuocBa4)")
                self.viewDaCuocBa4.alpha = 0.5
                self.viewDaCuocBa4.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocBa4.text = String(self.SoDiemCuocBa4)
                self.viewDaCuocBa4.alpha = 1
                self.viewDaCuocBa4.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //16: So sánh cược Ô Ba 5:
        if (diemxucxac0 == 5) && (diemxucxac1 == 5) && (diemxucxac2 == 5){
            diem = diem + 150*SoDiemCuocBa5
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocBa5.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocBa5.text = String("+\(150*self.SoDiemCuocBa5)")
            }, completion: {(true) in
                self.viewDaCuocBa5.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocBa5.text = String(self.SoDiemCuocBa5)
            })
        }else{
            diem = diem - SoDiemCuocBa5
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocBa5.text = String("-\(self.SoDiemCuocBa5)")
                self.viewDaCuocBa5.alpha = 0.5
                self.viewDaCuocBa5.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocBa5.text = String(self.SoDiemCuocBa5)
                self.viewDaCuocBa5.alpha = 1
                self.viewDaCuocBa5.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //17: So sánh cược Ô Ba 6:
        if (diemxucxac0 == 6) && (diemxucxac1 == 6) && (diemxucxac2 == 6){
            diem = diem + 150*SoDiemCuocBa6
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocBa6.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocBa6.text = String("+\(150*self.SoDiemCuocBa6)")
            }, completion: {(true) in
                self.viewDaCuocBa6.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocBa6.text = String(self.SoDiemCuocBa4)
            })
        }else{
            diem = diem - SoDiemCuocBa6
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocBa6.text = String("-\(self.SoDiemCuocBa6)")
                self.viewDaCuocBa6.alpha = 0.5
                self.viewDaCuocBa6.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocBa6.text = String(self.SoDiemCuocBa6)
                self.viewDaCuocBa6.alpha = 1
                self.viewDaCuocBa6.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //18: So sánh cược ô số 4:
        if tongdiem3xucxac == 4{
            diem = diem + 50*SoDiemCuoc4
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuoc4.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuoc4.text = String("+\(50*self.SoDiemCuoc4)")
            }, completion: {(true) in
                self.viewDaCuoc4.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuoc4.text = String(self.SoDiemCuoc4)
            })
        }else{
            diem = diem - SoDiemCuoc4
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuoc4.text = String("-\(self.SoDiemCuoc4)")
                self.viewDaCuoc4.alpha = 0.5
                self.viewDaCuoc4.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuoc4.text = String(self.SoDiemCuoc4)
                self.viewDaCuoc4.alpha = 1
                self.viewDaCuoc4.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //19: So sánh cược ô số 5:
        if tongdiem3xucxac == 5{
            diem = diem + 18*SoDiemCuoc5
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuoc5.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuoc5.text = String("+\(18*self.SoDiemCuoc5)")
            }, completion: {(true) in
                self.viewDaCuoc5.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuoc5.text = String(self.SoDiemCuoc5)
            })
        }else{
            diem = diem - SoDiemCuoc5
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuoc5.text = String("-\(self.SoDiemCuoc5)")
                self.viewDaCuoc5.alpha = 0.5
                self.viewDaCuoc5.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuoc5.text = String(self.SoDiemCuoc5)
                self.viewDaCuoc5.alpha = 1
                self.viewDaCuoc5.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //20: So sánh cược ô số 6:
        if tongdiem3xucxac == 6{
            diem = diem + 14*SoDiemCuoc6
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuoc6.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuoc6.text = String("+\(14*self.SoDiemCuoc6)")
            }, completion: {(true) in
                self.viewDaCuoc6.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuoc6.text = String(self.SoDiemCuoc6)
            })
        }else{
            diem = diem - SoDiemCuoc6
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuoc6.text = String("-\(self.SoDiemCuoc6)")
                self.viewDaCuoc6.alpha = 0.5
                self.viewDaCuoc6.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuoc6.text = String(self.SoDiemCuoc6)
                self.viewDaCuoc6.alpha = 1
                self.viewDaCuoc6.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //21: So sánh cược ô số 7:
        if tongdiem3xucxac == 7{
            diem = diem + 12*SoDiemCuoc7
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuoc7.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuoc7.text = String("+\(12*self.SoDiemCuoc7)")
            }, completion: {(true) in
                self.viewDaCuoc7.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuoc7.text = String(self.SoDiemCuoc7)
            })
        }else{
            diem = diem - SoDiemCuoc7
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuoc7.text = String("-\(self.SoDiemCuoc7)")
                self.viewDaCuoc7.alpha = 0.5
                self.viewDaCuoc7.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuoc7.text = String(self.SoDiemCuoc7)
                self.viewDaCuoc7.alpha = 1
                self.viewDaCuoc7.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //22: So sánh cược ô số 8:
        if tongdiem3xucxac == 8{
            diem = diem + 8*SoDiemCuoc8
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuoc8.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuoc8.text = String("+\(8*self.SoDiemCuoc8)")
            }, completion: {(true) in
                self.viewDaCuoc8.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuoc8.text = String(self.SoDiemCuoc8)
            })
        }else{
            diem = diem - SoDiemCuoc8
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuoc8.text = String("-\(self.SoDiemCuoc8)")
                self.viewDaCuoc8.alpha = 0.5
                self.viewDaCuoc8.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuoc8.text = String(self.SoDiemCuoc8)
                self.viewDaCuoc8.alpha = 1
                self.viewDaCuoc8.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //23: So sánh cược ô số 9:
        if tongdiem3xucxac == 9{
            diem = diem + 6*SoDiemCuoc9
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuoc9.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuoc9.text = String("+\(6*self.SoDiemCuoc9)")
            }, completion: {(true) in
                self.viewDaCuoc9.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuoc9.text = String(self.SoDiemCuoc9)
            })
        }else{
            diem = diem - SoDiemCuoc9
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuoc9.text = String("-\(self.SoDiemCuoc9)")
                self.viewDaCuoc9.alpha = 0.5
                self.viewDaCuoc9.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuoc9.text = String(self.SoDiemCuoc9)
                self.viewDaCuoc9.alpha = 1
                self.viewDaCuoc9.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //24: So sánh cược ô số 10:
        if tongdiem3xucxac == 10{
            diem = diem + 6*SoDiemCuoc10
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuoc10.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuoc10.text = String("+\(6*self.SoDiemCuoc10)")
            }, completion: {(true) in
                self.viewDaCuoc10.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuoc10.text = String(self.SoDiemCuoc10)
            })
        }else{
            diem = diem - SoDiemCuoc10
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuoc10.text = String("-\(self.SoDiemCuoc10)")
                self.viewDaCuoc10.alpha = 0.5
                self.viewDaCuoc10.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuoc10.text = String(self.SoDiemCuoc10)
                self.viewDaCuoc10.alpha = 1
                self.viewDaCuoc10.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //25: So sánh cược ô số 11:
        if tongdiem3xucxac == 11{
            diem = diem + 6*SoDiemCuoc11
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuoc11.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuoc11.text = String("+\(6*self.SoDiemCuoc11)")
            }, completion: {(true) in
                self.viewDaCuoc11.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuoc11.text = String(self.SoDiemCuoc11)
            })
        }else{
            diem = diem - SoDiemCuoc11
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuoc11.text = String("-\(self.SoDiemCuoc11)")
                self.viewDaCuoc11.alpha = 0.5
                self.viewDaCuoc11.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuoc11.text = String(self.SoDiemCuoc11)
                self.viewDaCuoc11.alpha = 1
                self.viewDaCuoc11.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //26: So sánh cược ô số 12:
        if tongdiem3xucxac == 12{
            diem = diem + 6*SoDiemCuoc12
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuoc12.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuoc12.text = String("+\(6*self.SoDiemCuoc12)")
            }, completion: {(true) in
                self.viewDaCuoc12.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuoc12.text = String(self.SoDiemCuoc12)
            })
        }else{
            diem = diem - SoDiemCuoc12
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuoc12.text = String("-\(self.SoDiemCuoc12)")
                self.viewDaCuoc12.alpha = 0.5
                self.viewDaCuoc12.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuoc12.text = String(self.SoDiemCuoc12)
                self.viewDaCuoc12.alpha = 1
                self.viewDaCuoc12.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //27: So sánh cược ô số 13:
        if tongdiem3xucxac == 13{
            diem = diem + 8*SoDiemCuoc13
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuoc13.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuoc13.text = String("+\(8*self.SoDiemCuoc13)")
            }, completion: {(true) in
                self.viewDaCuoc13.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuoc13.text = String(self.SoDiemCuoc13)
            })
        }else{
            diem = diem - SoDiemCuoc13
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuoc13.text = String("-\(self.SoDiemCuoc13)")
                self.viewDaCuoc13.alpha = 0.5
                self.viewDaCuoc13.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuoc13.text = String(self.SoDiemCuoc13)
                self.viewDaCuoc13.alpha = 1
                self.viewDaCuoc13.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //28: So sánh cược ô số 14:
        if tongdiem3xucxac == 14{
            diem = diem + 12*SoDiemCuoc14
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuoc14.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuoc14.text = String("+\(12*self.SoDiemCuoc14)")
            }, completion: {(true) in
                self.viewDaCuoc14.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuoc14.text = String(self.SoDiemCuoc14)
            })
        }else{
            diem = diem - SoDiemCuoc14
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuoc14.text = String("-\(self.SoDiemCuoc14)")
                self.viewDaCuoc14.alpha = 0.5
                self.viewDaCuoc14.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuoc14.text = String(self.SoDiemCuoc14)
                self.viewDaCuoc14.alpha = 1
                self.viewDaCuoc14.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //29: So sánh cược ô số 15:
        if tongdiem3xucxac == 15{
            diem = diem + 14*SoDiemCuoc15
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuoc15.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuoc15.text = String("+\(14*self.SoDiemCuoc15)")
            }, completion: {(true) in
                self.viewDaCuoc15.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuoc15.text = String(self.SoDiemCuoc15)
            })
        }else{
            diem = diem - SoDiemCuoc15
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuoc15.text = String("-\(self.SoDiemCuoc15)")
                self.viewDaCuoc15.alpha = 0.5
                self.viewDaCuoc15.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuoc15.text = String(self.SoDiemCuoc15)
                self.viewDaCuoc15.alpha = 1
                self.viewDaCuoc15.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //30: So sánh cược ô số 16:
        if tongdiem3xucxac == 16{
            diem = diem + 18*SoDiemCuoc16
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuoc16.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuoc16.text = String("+\(18*self.SoDiemCuoc16)")
            }, completion: {(true) in
                self.viewDaCuoc16.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuoc16.text = String(self.SoDiemCuoc16)
            })
        }else{
            diem = diem - SoDiemCuoc16
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuoc16.text = String("-\(self.SoDiemCuoc16)")
                self.viewDaCuoc16.alpha = 0.5
                self.viewDaCuoc16.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuoc16.text = String(self.SoDiemCuoc16)
                self.viewDaCuoc16.alpha = 1
                self.viewDaCuoc16.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //31: So sánh cược ô số 17:
        if tongdiem3xucxac == 17{
            diem = diem + 50*SoDiemCuoc17
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuoc17.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuoc17.text = String("+\(50*self.SoDiemCuoc17)")
            }, completion: {(true) in
                self.viewDaCuoc17.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuoc17.text = String(self.SoDiemCuoc17)
            })
        }else{
            diem = diem - SoDiemCuoc17
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuoc17.text = String("-\(self.SoDiemCuoc17)")
                self.viewDaCuoc17.alpha = 0.5
                self.viewDaCuoc17.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuoc17.text = String(self.SoDiemCuoc17)
                self.viewDaCuoc17.alpha = 1
                self.viewDaCuoc17.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //32: So sánh cược ô CON 1, 2:
        if (diemxucxac0 + diemxucxac1 == 3) || (diemxucxac0 + diemxucxac2 == 3 || diemxucxac1 + diemxucxac2 == 3){
            diem = diem + 5*SoDiemCuocCon12
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocCon12.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocCon12.text = String("+\(5*self.SoDiemCuocCon12)")
            }, completion: {(true) in
                self.viewDaCuocCon12.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocCon12.text = String(self.SoDiemCuocCon12)
            })
        }else{
            diem = diem - SoDiemCuocCon12
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocCon12.text = String("-\(self.SoDiemCuocCon12)")
                self.viewDaCuocCon12.alpha = 0.5
                self.viewDaCuocCon12.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocCon12.text = String(self.SoDiemCuocCon12)
                self.viewDaCuocCon12.alpha = 1
                self.viewDaCuocCon12.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //33: So sánh cược ô CON 1, 3:
        if (diemxucxac0 == 1 && diemxucxac1 == 3) || (diemxucxac0 == 3 && diemxucxac1 == 1) || (diemxucxac1 == 1 && diemxucxac2 == 3) || (diemxucxac1 == 3 && diemxucxac2 == 1) || (diemxucxac0 == 1 && diemxucxac2 == 3) || (diemxucxac0 == 3 && diemxucxac2 == 1) {
            diem = diem + 5*SoDiemCuocCon13
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocCon13.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocCon13.text = String("+\(5*self.SoDiemCuocCon13)")
            }, completion: {(true) in
                self.viewDaCuocCon13.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocCon13.text = String(self.SoDiemCuocCon13)
            })
        }else{
            diem = diem - SoDiemCuocCon13
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocCon13.text = String("-\(self.SoDiemCuocCon13)")
                self.viewDaCuocCon13.alpha = 0.5
                self.viewDaCuocCon13.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocCon13.text = String(self.SoDiemCuocCon13)
                self.viewDaCuocCon13.alpha = 1
                self.viewDaCuocCon13.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //34: So sánh cược ô CON 1, 4:
        if (diemxucxac0 == 1 && diemxucxac1 == 4) || (diemxucxac0 == 4 && diemxucxac1 == 1) || (diemxucxac1 == 1 && diemxucxac2 == 4) || (diemxucxac1 == 4 && diemxucxac2 == 1) || (diemxucxac0 == 1 && diemxucxac2 == 4) || (diemxucxac0 == 4 && diemxucxac2 == 1) {
            diem = diem + 5*SoDiemCuocCon14
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocCon14.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocCon14.text = String("+\(5*self.SoDiemCuocCon14)")
            }, completion: {(true) in
                self.viewDaCuocCon14.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocCon14.text = String(self.SoDiemCuocCon14)
            })
        }else{
            diem = diem - SoDiemCuocCon14
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocCon14.text = String("-\(self.SoDiemCuocCon14)")
                self.viewDaCuocCon14.alpha = 0.5
                self.viewDaCuocCon14.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocCon14.text = String(self.SoDiemCuocCon14)
                self.viewDaCuocCon14.alpha = 1
                self.viewDaCuocCon14.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //35: So sánh cược ô CON 1, 5:
        if (diemxucxac0 == 1 && diemxucxac1 == 5) || (diemxucxac0 == 5 && diemxucxac1 == 1) || (diemxucxac1 == 1 && diemxucxac2 == 5) || (diemxucxac1 == 5 && diemxucxac2 == 1) || (diemxucxac0 == 1 && diemxucxac2 == 5) || (diemxucxac0 == 5 && diemxucxac2 == 1) {
            diem = diem + 5*SoDiemCuocCon15
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocCon15.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocCon15.text = String("+\(5*self.SoDiemCuocCon15)")
            }, completion: {(true) in
                self.viewDaCuocCon15.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocCon15.text = String(self.SoDiemCuocCon15)
            })
        }else{
            diem = diem - SoDiemCuocCon15
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocCon15.text = String("-\(self.SoDiemCuocCon15)")
                self.viewDaCuocCon15.alpha = 0.5
                self.viewDaCuocCon15.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocCon15.text = String(self.SoDiemCuocCon15)
                self.viewDaCuocCon15.alpha = 1
                self.viewDaCuocCon15.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //36: So sánh cược ô CON 1, 6:
        if (diemxucxac0 == 1 && diemxucxac1 == 6) || (diemxucxac0 == 6 && diemxucxac1 == 1) || (diemxucxac1 == 1 && diemxucxac2 == 6) || (diemxucxac1 == 6 && diemxucxac2 == 1) || (diemxucxac0 == 1 && diemxucxac2 == 6) || (diemxucxac0 == 6 && diemxucxac2 == 1) {
            diem = diem + 5*SoDiemCuocCon16
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocCon16.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocCon16.text = String("+\(5*self.SoDiemCuocCon16)")
            }, completion: {(true) in
                self.viewDaCuocCon16.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocCon16.text = String(self.SoDiemCuocCon16)
            })
        }else{
            diem = diem - SoDiemCuocCon16
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocCon16.text = String("-\(self.SoDiemCuocCon16)")
                self.viewDaCuocCon16.alpha = 0.5
                self.viewDaCuocCon16.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocCon16.text = String(self.SoDiemCuocCon16)
                self.viewDaCuocCon16.alpha = 1
                self.viewDaCuocCon16.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //37: So sánh cược ô CON 2, 3:
        if (diemxucxac0 == 2 && diemxucxac1 == 3) || (diemxucxac0 == 3 && diemxucxac1 == 2) || (diemxucxac1 == 2 && diemxucxac2 == 3) || (diemxucxac1 == 3 && diemxucxac2 == 2) || (diemxucxac0 == 2 && diemxucxac2 == 3) || (diemxucxac0 == 3 && diemxucxac2 == 2) {
            diem = diem + 5*SoDiemCuocCon23
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocCon23.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocCon23.text = String("+\(5*self.SoDiemCuocCon23)")
            }, completion: {(true) in
                self.viewDaCuocCon23.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocCon23.text = String(self.SoDiemCuocCon23)
            })
        }else{
            diem = diem - SoDiemCuocCon23
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocCon23.text = String("-\(self.SoDiemCuocCon23)")
                self.viewDaCuocCon23.alpha = 0.5
                self.viewDaCuocCon23.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocCon23.text = String(self.SoDiemCuocCon23)
                self.viewDaCuocCon23.alpha = 1
                self.viewDaCuocCon23.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //38: So sánh cược ô CON 2, 4:
        if (diemxucxac0 == 2 && diemxucxac1 == 4) || (diemxucxac0 == 4 && diemxucxac1 == 2) || (diemxucxac1 == 2 && diemxucxac2 == 4) || (diemxucxac1 == 4 && diemxucxac2 == 2) || (diemxucxac0 == 2 && diemxucxac2 == 4) || (diemxucxac0 == 4 && diemxucxac2 == 2) {
            diem = diem + 5*SoDiemCuocCon24
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocCon24.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocCon24.text = String("+\(5*self.SoDiemCuocCon24)")
            }, completion: {(true) in
                self.viewDaCuocCon24.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocCon24.text = String(self.SoDiemCuocCon24)
            })
        }else{
            diem = diem - SoDiemCuocCon24
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocCon24.text = String("-\(self.SoDiemCuocCon24)")
                self.viewDaCuocCon24.alpha = 0.5
                self.viewDaCuocCon24.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocCon24.text = String(self.SoDiemCuocCon24)
                self.viewDaCuocCon24.alpha = 1
                self.viewDaCuocCon24.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //39: So sánh cược ô CON 2, 5:
        if (diemxucxac0 == 2 && diemxucxac1 == 5) || (diemxucxac0 == 5 && diemxucxac1 == 2) || (diemxucxac1 == 2 && diemxucxac2 == 5) || (diemxucxac1 == 5 && diemxucxac2 == 2) || (diemxucxac0 == 2 && diemxucxac2 == 5) || (diemxucxac0 == 5 && diemxucxac2 == 2) {
            diem = diem + 5*SoDiemCuocCon25
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocCon25.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocCon25.text = String("+\(5*self.SoDiemCuocCon25)")
            }, completion: {(true) in
                self.viewDaCuocCon25.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocCon25.text = String(self.SoDiemCuocCon25)
            })
        }else{
            diem = diem - SoDiemCuocCon25
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocCon25.text = String("-\(self.SoDiemCuocCon25)")
                self.viewDaCuocCon25.alpha = 0.5
                self.viewDaCuocCon25.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocCon25.text = String(self.SoDiemCuocCon25)
                self.viewDaCuocCon25.alpha = 1
                self.viewDaCuocCon25.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //40: So sánh cược ô CON 2, 6:
        if (diemxucxac0 == 2 && diemxucxac1 == 6) || (diemxucxac0 == 6 && diemxucxac1 == 2) || (diemxucxac1 == 2 && diemxucxac2 == 6) || (diemxucxac1 == 6 && diemxucxac2 == 2) || (diemxucxac0 == 2 && diemxucxac2 == 6) || (diemxucxac0 == 6 && diemxucxac2 == 2) {
            diem = diem + 5*SoDiemCuocCon26
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocCon26.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocCon26.text = String("+\(5*self.SoDiemCuocCon26)")
            }, completion: {(true) in
                self.viewDaCuocCon26.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocCon26.text = String(self.SoDiemCuocCon26)
            })
        }else{
            diem = diem - SoDiemCuocCon26
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocCon26.text = String("-\(self.SoDiemCuocCon26)")
                self.viewDaCuocCon26.alpha = 0.5
                self.viewDaCuocCon26.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocCon26.text = String(self.SoDiemCuocCon26)
                self.viewDaCuocCon26.alpha = 1
                self.viewDaCuocCon26.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //41: So sánh cược ô CON 3, 4:
        if (diemxucxac0 == 3 && diemxucxac1 == 4) || (diemxucxac0 == 4 && diemxucxac1 == 3) || (diemxucxac1 == 3 && diemxucxac2 == 4) || (diemxucxac1 == 4 && diemxucxac2 == 3) || (diemxucxac0 == 3 && diemxucxac2 == 4) || (diemxucxac0 == 4 && diemxucxac2 == 3) {
            diem = diem + 5*SoDiemCuocCon34
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocCon34.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocCon34.text = String("+\(5*self.SoDiemCuocCon34)")
            }, completion: {(true) in
                self.viewDaCuocCon34.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocCon34.text = String(self.SoDiemCuocCon34)
            })
        }else{
            diem = diem - SoDiemCuocCon34
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocCon34.text = String("-\(self.SoDiemCuocCon34)")
                self.viewDaCuocCon34.alpha = 0.5
                self.viewDaCuocCon34.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocCon34.text = String(self.SoDiemCuocCon34)
                self.viewDaCuocCon34.alpha = 1
                self.viewDaCuocCon34.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //42: So sánh cược ô CON 3, 5:
        if (diemxucxac0 == 3 && diemxucxac1 == 5) || (diemxucxac0 == 5 && diemxucxac1 == 3) || (diemxucxac1 == 3 && diemxucxac2 == 5) || (diemxucxac1 == 5 && diemxucxac2 == 3) || (diemxucxac0 == 3 && diemxucxac2 == 5) || (diemxucxac0 == 5 && diemxucxac2 == 3) {
            diem = diem + 5*SoDiemCuocCon35
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocCon35.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocCon35.text = String("+\(5*self.SoDiemCuocCon35)")
            }, completion: {(true) in
                self.viewDaCuocCon35.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocCon35.text = String(self.SoDiemCuocCon35)
            })
        }else{
            diem = diem - SoDiemCuocCon35
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocCon35.text = String("-\(self.SoDiemCuocCon35)")
                self.viewDaCuocCon35.alpha = 0.5
                self.viewDaCuocCon35.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocCon35.text = String(self.SoDiemCuocCon35)
                self.viewDaCuocCon35.alpha = 1
                self.viewDaCuocCon35.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        
        //43: So sánh cược ô CON 3, 6:
        if (diemxucxac0 == 3 && diemxucxac1 == 6) || (diemxucxac0 == 6 && diemxucxac1 == 3) || (diemxucxac1 == 3 && diemxucxac2 == 6) || (diemxucxac1 == 6 && diemxucxac2 == 3) || (diemxucxac0 == 3 && diemxucxac2 == 6) || (diemxucxac0 == 6 && diemxucxac2 == 3) {
            diem = diem + 5*SoDiemCuocCon36
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocCon36.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocCon36.text = String("+\(5*self.SoDiemCuocCon36)")
            }, completion: {(true) in
                self.viewDaCuocCon36.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocCon36.text = String(self.SoDiemCuocCon36)
            })
        }else{
            diem = diem - SoDiemCuocCon36
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocCon36.text = String("-\(self.SoDiemCuocCon36)")
                self.viewDaCuocCon36.alpha = 0.5
                self.viewDaCuocCon36.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocCon36.text = String(self.SoDiemCuocCon36)
                self.viewDaCuocCon36.alpha = 1
                self.viewDaCuocCon36.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //44: So sánh cược ô CON 4, 5:
            if (diemxucxac0 == 4 && diemxucxac1 == 5) || (diemxucxac0 == 5 && diemxucxac1 == 4) || (diemxucxac1 == 4 && diemxucxac2 == 5) || (diemxucxac1 == 5 && diemxucxac2 == 4) || (diemxucxac0 == 4 && diemxucxac2 == 5) || (diemxucxac0 == 5 && diemxucxac2 == 4) {
                diem = diem + 5*SoDiemCuocCon45
                lblDiem.text = String(diem)
                UIView.animate(withDuration: 2, animations: {
                    self.viewDaCuocCon45.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                    self.lblSoDiemDaCuocCon45.text = String("+\(5*self.SoDiemCuocCon45)")
                }, completion: {(true) in
                    self.viewDaCuocCon45.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                    self.lblSoDiemDaCuocCon45.text = String(self.SoDiemCuocCon45)
                })
            }else{
                diem = diem - SoDiemCuocCon45
                lblDiem.text = String(diem)
                UIView.animate(withDuration: 1, animations: {
                    self.lblSoDiemDaCuocCon45.text = String("-\(self.SoDiemCuocCon45)")
                    self.viewDaCuocCon45.alpha = 0.5
                    self.viewDaCuocCon45.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
                }, completion: {(true) in
                    self.lblSoDiemDaCuocCon45.text = String(self.SoDiemCuocCon45)
                    self.viewDaCuocCon45.alpha = 1
                    self.viewDaCuocCon45.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
                })
        }
        //45: So sánh cược ô CON 4, 6:
        if (diemxucxac0 == 4 && diemxucxac1 == 6) || (diemxucxac0 == 6 && diemxucxac1 == 4) || (diemxucxac1 == 4 && diemxucxac2 == 6) || (diemxucxac1 == 6 && diemxucxac2 == 4) || (diemxucxac0 == 4 && diemxucxac2 == 6) || (diemxucxac0 == 6 && diemxucxac2 == 4) {
            diem = diem + 5*SoDiemCuocCon46
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocCon46.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocCon46.text = String("+\(5*self.SoDiemCuocCon46)")
            }, completion: {(true) in
                self.viewDaCuocCon46.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocCon46.text = String(self.SoDiemCuocCon46)
            })
        }else{
            diem = diem - SoDiemCuocCon46
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocCon46.text = String("-\(self.SoDiemCuocCon46)")
                self.viewDaCuocCon46.alpha = 0.5
                self.viewDaCuocCon46.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocCon46.text = String(self.SoDiemCuocCon46)
                self.viewDaCuocCon46.alpha = 1
                self.viewDaCuocCon46.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //46: So sánh cược ô CON 5, 6:
        if (diemxucxac0 == 5 && diemxucxac1 == 6) || (diemxucxac0 == 6 && diemxucxac1 == 5) || (diemxucxac1 == 5 && diemxucxac2 == 6) || (diemxucxac1 == 6 && diemxucxac2 == 5) || (diemxucxac0 == 5 && diemxucxac2 == 6) || (diemxucxac0 == 6 && diemxucxac2 == 5) {
            diem = diem + 5*SoDiemCuocCon56
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocCon56.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocCon56.text = String("+\(5*self.SoDiemCuocCon56)")
            }, completion: {(true) in
                self.viewDaCuocCon56.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocCon56.text = String(self.SoDiemCuocCon56)
            })
        }else{
            diem = diem - SoDiemCuocCon56
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocCon56.text = String("-\(self.SoDiemCuocCon56)")
                self.viewDaCuocCon56.alpha = 0.5
                self.viewDaCuocCon56.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocCon56.text = String(self.SoDiemCuocCon56)
                self.viewDaCuocCon56.alpha = 1
                self.viewDaCuocCon56.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //47: So sánh cược ô CON 1:
        if diemxucxac0 == 1 || diemxucxac1 == 1 || diemxucxac2 == 1 {
            diem = diem + SoDiemCuocCon1
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocCon1.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocCon1.text = String("+\(self.SoDiemCuocCon1)")
            }, completion: {(true) in
                self.viewDaCuocCon1.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocCon1.text = String(self.SoDiemCuocCon1)
            })
        }else{
            diem = diem - SoDiemCuocCon1
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocCon1.text = String("-\(self.SoDiemCuocCon1)")
                self.viewDaCuocCon1.alpha = 0.5
                self.viewDaCuocCon1.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocCon1.text = String(self.SoDiemCuocCon1)
                self.viewDaCuocCon1.alpha = 1
                self.viewDaCuocCon1.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //48: So sánh cược ô CON 2:
        if diemxucxac0 == 2 || diemxucxac1 == 2 || diemxucxac2 == 2 {
            diem = diem + SoDiemCuocCon2
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocCon2.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocCon2.text = String("+\(self.SoDiemCuocCon2)")
            }, completion: {(true) in
                self.viewDaCuocCon2.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocCon2.text = String(self.SoDiemCuocCon2)
            })
        }else{
            diem = diem - SoDiemCuocCon2
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocCon2.text = String("-\(self.SoDiemCuocCon2)")
                self.viewDaCuocCon2.alpha = 0.5
                self.viewDaCuocCon2.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocCon2.text = String(self.SoDiemCuocCon2)
                self.viewDaCuocCon2.alpha = 1
                self.viewDaCuocCon2.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //49: So sánh cược ô CON 3:
        if diemxucxac0 == 3 || diemxucxac1 == 3 || diemxucxac2 == 3 {
            diem = diem + SoDiemCuocCon3
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocCon3.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocCon3.text = String("+\(self.SoDiemCuocCon3)")
            }, completion: {(true) in
                self.viewDaCuocCon3.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocCon3.text = String(self.SoDiemCuocCon3)
            })
        }else{
            diem = diem - SoDiemCuocCon3
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocCon3.text = String("-\(self.SoDiemCuocCon3)")
                self.viewDaCuocCon3.alpha = 0.5
                self.viewDaCuocCon3.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocCon3.text = String(self.SoDiemCuocCon3)
                self.viewDaCuocCon3.alpha = 1
                self.viewDaCuocCon3.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //50: So sánh cược ô CON 4:
        if diemxucxac0 == 4 || diemxucxac1 == 4 || diemxucxac2 == 4 {
            diem = diem + SoDiemCuocCon4
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocCon4.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocCon4.text = String("+\(self.SoDiemCuocCon4)")
            }, completion: {(true) in
                self.viewDaCuocCon4.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocCon4.text = String(self.SoDiemCuocCon4)
            })
        }else{
            diem = diem - SoDiemCuocCon4
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocCon4.text = String("-\(self.SoDiemCuocCon4)")
                self.viewDaCuocCon4.alpha = 0.5
                self.viewDaCuocCon4.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocCon4.text = String(self.SoDiemCuocCon4)
                self.viewDaCuocCon4.alpha = 1
                self.viewDaCuocCon4.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //51: So sánh cược ô CON 5:
        if diemxucxac0 == 5 || diemxucxac1 == 5 || diemxucxac2 == 5 {
            diem = diem + SoDiemCuocCon5
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocCon5.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocCon5.text = String("+\(self.SoDiemCuocCon5)")
            }, completion: {(true) in
                self.viewDaCuocCon5.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocCon5.text = String(self.SoDiemCuocCon5)
            })
        }else{
            diem = diem - SoDiemCuocCon5
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocCon5.text = String("-\(self.SoDiemCuocCon5)")
                self.viewDaCuocCon5.alpha = 0.5
                self.viewDaCuocCon5.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocCon5.text = String(self.SoDiemCuocCon5)
                self.viewDaCuocCon5.alpha = 1
                self.viewDaCuocCon5.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        //52: So sánh cược ô CON 6:
        if diemxucxac0 == 6 || diemxucxac1 == 6 || diemxucxac2 == 6 {
            diem = diem + SoDiemCuocCon6
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 2, animations: {
                self.viewDaCuocCon6.backgroundColor = #colorLiteral(red: 1, green: 0.9563917013, blue: 0.2243064398, alpha: 1)
                self.lblSoDiemDaCuocCon6.text = String("+\(self.SoDiemCuocCon6)")
            }, completion: {(true) in
                self.viewDaCuocCon6.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
                self.lblSoDiemDaCuocCon6.text = String(self.SoDiemCuocCon6)
            })
        }else{
            diem = diem - SoDiemCuocCon6
            lblDiem.text = String(diem)
            UIView.animate(withDuration: 1, animations: {
                self.lblSoDiemDaCuocCon6.text = String("-\(self.SoDiemCuocCon6)")
                self.viewDaCuocCon6.alpha = 0.5
                self.viewDaCuocCon6.layer.transform = CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0.5)
            }, completion: {(true) in
                self.lblSoDiemDaCuocCon6.text = String(self.SoDiemCuocCon6)
                self.viewDaCuocCon6.alpha = 1
                self.viewDaCuocCon6.layer.transform = CATransform3DScale(CATransform3DIdentity, 1, 1, 1)
            })
        }
        lblMoiDatCuoc.text = "Mời chọn ô đăt cược."
        
       
        if diem <= 0{
            viewthuacuoc.isHidden = false
            setupviewthuacuoc()
            diem = 500
            lblDiem.text = String(diem)
        }
    
    }
    //MARK: SET UP CAC VIEW CHUC MUNG, THUA CUOC, TOP DIEM CAO
    
    let viewluudiem:viewLogin = {
        let v = viewLogin()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return v
    }()
    func choitiep1(){
        viewluudiem.isHidden = true
        abtnLuudiem.isHidden = false
    }
    func setupviewluudiem(){
        view.addSubview(viewluudiem)
        viewluudiem.isHidden = false
        abtnLuudiem.isHidden = true
        view.addContrainWithVS(format: "V:|[v0]|", views: viewluudiem)
        view.addContrainWithVS(format: "H:|[v0]|", views: viewluudiem)
       viewluudiem.abtnDongy.addTarget(self, action: #selector(ViewController.luudiem), for: UIControlEvents.touchUpInside)
        viewluudiem.abtnHuyluudiem.addTarget(self, action: #selector(ViewController.choitiep1), for: UIControlEvents.touchUpInside)
    }
    var arrPlayer:Array<Player> = []
    var arrPlayers:Array<Player> = []
    var index:Int = 0
    func luudiem(){
        if viewluudiem.txtUser.text == "" {
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "VUI LÒNG ĐIỀN THÔNG TIN", preferredStyle: .alert)
            let btnOK:UIAlertAction = UIAlertAction(title: "OK", style: .default, handler: nil)

            alert.addAction(btnOK)
            self.present(alert, animated: true, completion: nil)
        }else{
// đẩy dữ liệu lên firebase
        let ref: FIRDatabaseReference = FIRDatabase.database().reference()
//        let dic:Dictionary<String,Any> = ["idPlayer": self.index,"tenPlayer":viewluudiem.txtUser.text!,"diemPlayer": self.diem]
//        ref.child("Player").child("P\(index)").setValue(dic)
            let dic:Dictionary<String,Any> = ["tenPlayer":viewluudiem.txtUser.text!,"diemPlayer": self.diem]
          
            ref.child("Player").child("tenPlayer\(index)").setValue(dic)
        
        let userdefault:UserDefaults = UserDefaults()
        
        index += 1
        userdefault.set(index, forKey: "index")
         self.viewTopdiem.Bangdiem.beginUpdates()
        // restart lai diem choi lai tu dau
        diem = 500
        lblDiem.text = String("\(diem)")
        viewluudiem.isHidden = true
        abtnLuudiem.isHidden = false
//XEM QUANG CAO FULL SCREEN
            if interstitialAd != nil{
                if interstitialAd!.isReady {
                    interstitialAd?.present(fromRootViewController: self)
                }
            }

            }
    }
    let viewthuacuoc:viewMuadiem = {
        let v = viewMuadiem()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return v
    }()
    func setupviewthuacuoc(){
        view.addSubview(viewthuacuoc)
        view.addContrainWithVS(format: "V:|[v0]|", views: viewthuacuoc)
        view.addContrainWithVS(format: "H:|[v0]|", views: viewthuacuoc)
        viewthuacuoc.abtnchoilai.addTarget(self, action: #selector(ViewController.thuachoilai), for: UIControlEvents.touchUpInside)
    }
    func thuachoilai(){
        viewthuacuoc.isHidden = true
//XEM QUANG CAO FULL SCREEN
        if interstitialAd != nil{
            if interstitialAd!.isReady {
                interstitialAd?.present(fromRootViewController: self)
            }
        }

    }
    let viewTopdiem:ViewWithTable = {
        let v = ViewWithTable()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return v
    }()
    func setupviewTopdiem(){
        view.addSubview(viewTopdiem)
        viewTopdiem.Bangdiem.dataSource = self
        viewTopdiem.isHidden = false
        view.addContrainWithVS(format: "V:|[v0]|", views: viewTopdiem)
        view.addContrainWithVS(format: "H:|[v0]|", views: viewTopdiem)
        viewTopdiem.abtnDong.addTarget(self, action: #selector(ViewController.DongTable), for: UIControlEvents.touchUpInside)
         print(self.arrPlayers)
    }
        
    func DongTable(){
        viewTopdiem.isHidden = true
    }
    
    //MARK: CÁC FUNCTION SET UP PICKER VIEW
    let arrhinh:Array<Array<String>> = [["Dice1","Dice2","Dice3","Dice4","Dice5","Dice6"],["Dice1","Dice2","Dice3","Dice4","Dice5","Dice6"],["Dice1","Dice2","Dice3","Dice4","Dice5","Dice6"]]
    var timer:Timer = Timer()
   
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return arrhinh.count
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrhinh[component].count * 300
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return pickerView.frame.size.height
    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imgview:UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: pickerView.frame.size.width*0.3, height: pickerView.frame.size.width*0.3))
        imgview.image = UIImage(named: arrhinh[component][row%arrhinh[component].count + 0])
        return imgview
    }
    
    func play(){
         DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        
        if DiemCuoc == 0 || viewDiemcuocChan.isHidden == false || viewDiemcuocLe.isHidden == false || viewDiemcuocTai.isHidden == false || viewDiemcuocXiu.isHidden == false || viewDiemcuocCap1.isHidden == false || viewDiemcuocCap2.isHidden == false || viewDiemcuocCap3.isHidden == false || viewDiemcuocCap4.isHidden == false || viewDiemcuocCap5.isHidden == false || viewDiemcuocCap6.isHidden == false || viewDiemcuocBa.isHidden == false || viewDiemcuocBa1.isHidden == false || viewDiemcuocBa2.isHidden == false || viewDiemcuocBa3.isHidden == false || viewDiemcuocBa4.isHidden == false || viewDiemcuocBa5.isHidden == false || viewDiemcuocBa6.isHidden == false || viewDiemcuoc4.isHidden == false || viewDiemcuoc5.isHidden == false || viewDiemcuoc6.isHidden == false || viewDiemcuoc7.isHidden == false || viewDiemcuoc8.isHidden == false || viewDiemcuoc9.isHidden == false || viewDiemcuoc10.isHidden == false || viewDiemcuoc11.isHidden == false || viewDiemcuoc12.isHidden == false || viewDiemcuoc13.isHidden == false || viewDiemcuoc14.isHidden == false || viewDiemcuoc15.isHidden == false || viewDiemcuoc16.isHidden == false || viewDiemcuoc17.isHidden == false || viewDiemcuocCon1.isHidden == false || viewDiemcuocCon2.isHidden == false || viewDiemcuocCon3.isHidden == false || viewDiemcuocCon4.isHidden == false || viewDiemcuocCon5.isHidden == false || viewDiemcuocCon6.isHidden == false || diem <= 0 || DiemCuoc > diem {
           
            self.timer.invalidate()
            player.stop()
            }else{
                btnPlay.isHidden = true
                btnStop.isHidden = false
                lblMoiDatCuoc.isHidden = true
                
                let random0 = arc4random()%UInt32(arrhinh.count * 300) + 0
                let random1 = arc4random()%UInt32(arrhinh.count * 300) + 0
                let random2 = arc4random()%UInt32(arrhinh.count * 300) + 0
                
                pckview.selectRow(Int(random0), inComponent: 0, animated: true)
                pckview.selectRow(Int(random1), inComponent: 1, animated: true)
                pckview.selectRow(Int(random2), inComponent: 2, animated: true)
            player.play()
            player.numberOfLoops = -1
            
        }
    }
//MARK 1: PHẦN 1: SET UP Ô CHẴN:
        //A: Ô CHẴN ĐỂ ĐẶT CƯỢC:
        //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocChan:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocChan:UISlider = {
    let sld = UISlider()
        sld.maximumValue = 100
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocChan:UILabel = {
        let lblDCC = UILabel()
        lblDCC.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCC.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblDCC.translatesAutoresizingMaskIntoConstraints = false
        return lblDCC
    }()
    let abtnOkie:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancel:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
        //2: Xây dựng hàm đặt cược ô chẵn:
            //2.1: Hàm tổng quát
    func DatCuocOChan(){
        viewDiemcuocChan.isHidden = false
    //    lblMoiDatCuoc.isHidden = true
        setupViewCuocChan()
    }
           ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô chẵn
    func setupViewCuocChan(){
        view.addSubview(viewDiemcuocChan)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô CHẴN (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocChan.addSubview(sldDiemcuocChan)
      //  viewDiemcuocChan.addSubview(lblThongbaoDiemCuocChan)
        viewDiemcuocChan.addSubview(abtnOkie)
        viewDiemcuocChan.addSubview(abtnCancel)
        viewDiemcuocChan.addSubview(lblDiemCuocChan)
        lblDiemCuocChan.text = String("Đặt cược ô Chẵn: $\(Int(sldDiemcuocChan.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô CHẴN:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocChan)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocChan)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
            //1: CHIỀU DỌC:
        viewDiemcuocChan.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocChan,sldDiemcuocChan)
       // lblDiemCuocChan.topAnchor.constraint(equalTo: lblThongbaoDiemCuocChan.topAnchor).isActive = true
        abtnOkie.topAnchor.constraint(equalTo: sldDiemcuocChan.bottomAnchor).isActive = true
        abtnCancel.topAnchor.constraint(equalTo: abtnOkie.topAnchor).isActive = true
            //2: CHIỀU NGANG:
        viewDiemcuocChan.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocChan)
        viewDiemcuocChan.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocChan)
        viewDiemcuocChan.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkie,abtnCancel)
      
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocChan.addTarget(self, action: #selector(ViewController.asldDiemcuocChan), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkie.addTarget(self, action: #selector(ViewController.ActionforBtnOkie), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô CHẴN, TRỞ VỀ BÀN
        abtnCancel.addTarget(self, action: #selector(ViewController.ActionforBtnHuy), for: UIControlEvents.touchUpInside)
    }
    
            ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô CHẴN:
                //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocChan(){
       sldDiemcuocChan.maximumValue = 1 * Float(diem)
        SoDiemCuocChan = Int(sldDiemcuocChan.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocChan.value = 0
                self.SoDiemCuocChan = Int(self.sldDiemcuocChan.value)
                self.lblDiemCuocChan.text = String("Đặt cược ô Chẵn: $\(self.SoDiemCuocChan)")
            })
        alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocChan.text = String("Đặt cược ô Chẵn: $\(SoDiemCuocChan)")
    }
                //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkie(){
        SoDiemCuocChan = Int(sldDiemcuocChan.value)
        viewDiemcuocChan.isHidden = true
        print(SoDiemCuocChan)
        if SoDiemCuocChan != 0 && SoDiemCuocChan <= diem{
            
            viewDaCuocChan.isHidden = false
            lblSoDiemDaCuocChan.text = String("$\(Int((sldDiemcuocChan.value)))")
        }else{
            if SoDiemCuocChan != 0 && SoDiemCuocChan > diem{
           
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocChan.value = Float(self.diem)
                    self.SoDiemCuocChan = Int(self.sldDiemcuocChan.value)
                    self.lblDiemCuocChan.text = String("Đặt cược ô Chẵn: $\(self.SoDiemCuocChan)")
                    self.lblSoDiemDaCuocChan.text = String("$\(Int((self.sldDiemcuocChan.value)))")
                     self.viewDaCuocChan.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
                //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuy(){
        sldDiemcuocChan.value = 0
        SoDiemCuocChan = Int(sldDiemcuocChan.value)
        lblSoDiemDaCuocChan.text = String("$\(Int((sldDiemcuocChan.value)))")
        viewDaCuocChan.isHidden = true
        viewDiemcuocChan.isHidden = true
        print(SoDiemCuocChan)
    }
    
    //B: Ô CHẴN THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocChan:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocChan:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
       // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô chẵn:
    func DiemDaDatCuocOChan(){
        viewChan.addSubview(viewDaCuocChan)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô CHẴN (LABEL ĐIỂM CƯỢC)
        viewDaCuocChan.addSubview(lblSoDiemDaCuocChan)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô CHẴN:
        viewChan.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocChan)
        viewChan.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocChan)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocChan.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocChan)
        //2: CHIỀU NGANG:
        viewDaCuocChan.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocChan)
    }
    
//MARK 2: PHẦN 1: SET UP Ô LẺ:
    //A: Ô LẺ ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocLe:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocLe:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocLe:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieLe:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelLe:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô lẻ:
    //2.1: Hàm tổng quát
    func DatCuocOLe(){
        viewDiemcuocLe.isHidden = false
        //    lblMoiDatCuoc.isHidden = true
        setupViewCuocLe()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô lẻ
    func setupViewCuocLe(){
        view.addSubview(viewDiemcuocLe)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô LẺ (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocLe.addSubview(sldDiemcuocLe)
        //  viewDiemcuocChan.addSubview(lblThongbaoDiemCuocLe)
        viewDiemcuocLe.addSubview(abtnOkieLe)
        viewDiemcuocLe.addSubview(abtnCancelLe)
        viewDiemcuocLe.addSubview(lblDiemCuocLe)
        lblDiemCuocLe.text = String("Đặt cược ô Lẻ: $\(Int(sldDiemcuocLe.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô CHẴN:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocLe)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocLe)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocLe.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocLe,sldDiemcuocLe)
        abtnOkieLe.topAnchor.constraint(equalTo: sldDiemcuocLe.bottomAnchor).isActive = true
        abtnCancelLe.topAnchor.constraint(equalTo: abtnOkieLe.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocLe.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocLe)
        viewDiemcuocLe.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocLe)
        viewDiemcuocLe.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieLe,abtnCancelLe)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocLe.addTarget(self, action: #selector(ViewController.asldDiemcuocLe), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieLe.addTarget(self, action: #selector(ViewController.ActionforBtnOkieLe), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô CHẴN, TRỞ VỀ BÀN
        abtnCancelLe.addTarget(self, action: #selector(ViewController.ActionforBtnHuyLe), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô LẺ:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocLe(){
        sldDiemcuocLe.maximumValue = 1 * Float(diem)
        SoDiemCuocLe = Int(sldDiemcuocLe.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocLe.value = 0
                self.SoDiemCuocLe = Int(self.sldDiemcuocLe.value)
                self.lblDiemCuocLe.text = String("Đặt cược ô Lẻ: $\(self.SoDiemCuocLe)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocLe.text = String("Đặt cược ô Lẻ: $\(SoDiemCuocLe)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieLe(){
        SoDiemCuocLe = Int(sldDiemcuocLe.value)
        viewDiemcuocLe.isHidden = true
        print(SoDiemCuocLe)
        if SoDiemCuocLe != 0 && SoDiemCuocLe <= diem{
            
            viewDaCuocLe.isHidden = false
            lblSoDiemDaCuocLe.text = String("$\(Int((sldDiemcuocLe.value)))")
        }else{
            if SoDiemCuocLe != 0 && SoDiemCuocLe > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocLe.value = Float(self.diem)
                    self.SoDiemCuocLe = Int(self.sldDiemcuocLe.value)
                    self.lblDiemCuocLe.text = String("Đặt cược ô Lẻ: $\(self.SoDiemCuocLe)")
                    self.lblSoDiemDaCuocLe.text = String("$\(Int((self.sldDiemcuocLe.value)))")
                    self.viewDaCuocLe.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyLe(){
        sldDiemcuocLe.value = 0
        SoDiemCuocLe = Int(sldDiemcuocLe.value)
        lblSoDiemDaCuocLe.text = String("$\(Int((sldDiemcuocLe.value)))")
        viewDaCuocLe.isHidden = true
        viewDiemcuocLe.isHidden = true
        print(SoDiemCuocLe)
    }
    
    //B: Ô LẺ THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocLe:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocLe:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Lẻ:
    func DiemDaDatCuocOLe(){
        viewLe.addSubview(viewDaCuocLe)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô CHẴN (LABEL ĐIỂM CƯỢC)
        viewDaCuocLe.addSubview(lblSoDiemDaCuocLe)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô CHẴN:
        viewLe.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocLe)
        viewLe.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocLe)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocLe.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocLe)
        //2: CHIỀU NGANG:
        viewDaCuocLe.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocLe)
    }

//MARK 3: PHẦN 1: SET UP Ô TÀI:
    //A: Ô TÀI ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocTai:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocTai:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocTai:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieTai:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelTai:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Tài:
    //2.1: Hàm tổng quát
    func DatCuocOTai(){
        viewDiemcuocTai.isHidden = false
        setupViewCuocTai()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Tài
    func setupViewCuocTai(){
        view.addSubview(viewDiemcuocTai)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô LẺ (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocTai.addSubview(sldDiemcuocTai)
        viewDiemcuocTai.addSubview(abtnOkieTai)
        viewDiemcuocTai.addSubview(abtnCancelTai)
        viewDiemcuocTai.addSubview(lblDiemCuocTai)
        lblDiemCuocTai.text = String("Đặt cược ô Tài: $\(Int(sldDiemcuocTai.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô TÀI:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocTai)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocTai)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocTai.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocTai,sldDiemcuocTai)
        abtnOkieTai.topAnchor.constraint(equalTo: sldDiemcuocTai.bottomAnchor).isActive = true
        abtnCancelTai.topAnchor.constraint(equalTo: abtnOkieTai.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocTai.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocTai)
        viewDiemcuocTai.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocTai)
        viewDiemcuocTai.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieTai,abtnCancelTai)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocTai.addTarget(self, action: #selector(ViewController.asldDiemcuocTai), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieTai.addTarget(self, action: #selector(ViewController.ActionforBtnOkieTai), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô CHẴN, TRỞ VỀ BÀN
        abtnCancelTai.addTarget(self, action: #selector(ViewController.ActionforBtnHuyTai), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô TÀI:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocTai(){
        sldDiemcuocTai.maximumValue = 1 * Float(diem)
        SoDiemCuocTai = Int(sldDiemcuocTai.value)
         DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocTai.value = 0
                self.SoDiemCuocTai = Int(self.sldDiemcuocTai.value)
                self.lblDiemCuocTai.text = String("Đặt cược ô Tài: $\(self.SoDiemCuocTai)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocTai.text = String("Đặt cược ô Tài: $\(SoDiemCuocTai)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieTai(){
        SoDiemCuocTai = Int(sldDiemcuocTai.value)
        viewDiemcuocTai.isHidden = true
        print(SoDiemCuocTai)
        if SoDiemCuocTai != 0 && SoDiemCuocTai <= diem{
            
            viewDaCuocTai.isHidden = false
            lblSoDiemDaCuocTai.text = String("$\(Int((sldDiemcuocTai.value)))")
        }else{
            if SoDiemCuocTai != 0 && SoDiemCuocTai > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocTai.value = Float(self.diem)
                    self.SoDiemCuocTai = Int(self.sldDiemcuocTai.value)
                    self.lblDiemCuocTai.text = String("Đặt cược ô Tài: $\(self.SoDiemCuocTai)")
                    self.lblSoDiemDaCuocTai.text = String("$\(Int((self.sldDiemcuocTai.value)))")
                    self.viewDaCuocTai.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyTai(){
        sldDiemcuocTai.value = 0
        SoDiemCuocTai = Int(sldDiemcuocTai.value)
        lblSoDiemDaCuocTai.text = String("$\(Int((sldDiemcuocTai.value)))")
        viewDaCuocTai.isHidden = true
        viewDiemcuocTai.isHidden = true
        print(SoDiemCuocTai)
    }
    
    //B: Ô TÀI THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocTai:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocTai:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Tài:
    func DiemDaDatCuocOTai(){
        viewTai.addSubview(viewDaCuocTai)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô TÀI (LABEL ĐIỂM CƯỢC)
        viewDaCuocTai.addSubview(lblSoDiemDaCuocTai)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô TÀI:
        viewTai.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocTai)
        viewTai.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocTai)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocTai.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocTai)
        //2: CHIỀU NGANG:
        viewDaCuocTai.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocTai)
    }
    
//MARK 4: PHẦN 1: SET UP Ô XỈU:
    //A: Ô XỈU ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocXiu:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocXiu:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocXiu:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieXiu:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelXiu:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Xỉu:
    //2.1: Hàm tổng quát
    func DatCuocOXiu(){
        viewDiemcuocXiu.isHidden = false
        setupViewCuocXiu()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Xỉu
    func setupViewCuocXiu(){
        view.addSubview(viewDiemcuocXiu)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô XỈU (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocXiu.addSubview(sldDiemcuocXiu)
        viewDiemcuocXiu.addSubview(abtnOkieXiu)
        viewDiemcuocXiu.addSubview(abtnCancelXiu)
        viewDiemcuocXiu.addSubview(lblDiemCuocXiu)
        lblDiemCuocXiu.text = String("Đặt cược ô Xỉu: $\(Int(sldDiemcuocXiu.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô XỈU:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocXiu)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocXiu)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocXiu.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocXiu,sldDiemcuocXiu)
        abtnOkieXiu.topAnchor.constraint(equalTo: sldDiemcuocXiu.bottomAnchor).isActive = true
        abtnCancelXiu.topAnchor.constraint(equalTo: abtnOkieXiu.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocXiu.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocXiu)
        viewDiemcuocXiu.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocXiu)
        viewDiemcuocXiu.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieXiu,abtnCancelXiu)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocXiu.addTarget(self, action: #selector(ViewController.asldDiemcuocXiu), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieXiu.addTarget(self, action: #selector(ViewController.ActionforBtnOkieXiu), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô CHẴN, TRỞ VỀ BÀN
        abtnCancelXiu.addTarget(self, action: #selector(ViewController.ActionforBtnHuyXiu), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô XỈU:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocXiu(){
        sldDiemcuocXiu.maximumValue = 1 * Float(diem)
        SoDiemCuocXiu = Int(sldDiemcuocXiu.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocXiu.value = 0
                self.SoDiemCuocXiu = Int(self.sldDiemcuocXiu.value)
                self.lblDiemCuocXiu.text = String("Đặt cược ô Xỉu: $\(self.SoDiemCuocXiu)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocXiu.text = String("Đặt cược ô Xỉu: $\(SoDiemCuocXiu)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieXiu(){
        SoDiemCuocXiu = Int(sldDiemcuocXiu.value)
        viewDiemcuocXiu.isHidden = true
        print(SoDiemCuocXiu)
        if SoDiemCuocXiu != 0 && SoDiemCuocXiu <= diem{
            
            viewDaCuocXiu.isHidden = false
            lblSoDiemDaCuocXiu.text = String("$\(Int((sldDiemcuocXiu.value)))")
        }else{
            if SoDiemCuocXiu != 0 && SoDiemCuocXiu > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocXiu.value = Float(self.diem)
                    self.SoDiemCuocXiu = Int(self.sldDiemcuocXiu.value)
                    self.lblDiemCuocXiu.text = String("Đặt cược ô Xỉu: $\(self.SoDiemCuocXiu)")
                    self.lblSoDiemDaCuocXiu.text = String("$\(Int((self.sldDiemcuocXiu.value)))")
                    self.viewDaCuocXiu.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyXiu(){
        sldDiemcuocXiu.value = 0
        SoDiemCuocXiu = Int(sldDiemcuocXiu.value)
        lblSoDiemDaCuocXiu.text = String("$\(Int((sldDiemcuocXiu.value)))")
        viewDaCuocXiu.isHidden = true
        viewDiemcuocXiu.isHidden = true
        print(SoDiemCuocXiu)
    }
    
    //B: Ô XỈU THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocXiu:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocXiu:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Xỉu:
    func DiemDaDatCuocOXiu(){
        viewXiu.addSubview(viewDaCuocXiu)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô XỈU (LABEL ĐIỂM CƯỢC)
        viewDaCuocXiu.addSubview(lblSoDiemDaCuocXiu)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô XỈU:
        viewXiu.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocXiu)
        viewXiu.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocXiu)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocXiu.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocXiu)
        //2: CHIỀU NGANG:
        viewDaCuocXiu.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocXiu)
    }
//MARK 5: PHẦN 1: SET UP Ô CẶP 1:
    //A: Ô CẶP 1 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocCap1:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocCap1:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocCap1:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieCap1:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelCap1:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Cặp 1:
    //2.1: Hàm tổng quát
    func DatCuocOCap1(){
        viewDiemcuocCap1.isHidden = false
        setupViewCuocCap1()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Cặp 1
    func setupViewCuocCap1(){
        view.addSubview(viewDiemcuocCap1)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô CẶP 1 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocCap1.addSubview(sldDiemcuocCap1)
        viewDiemcuocCap1.addSubview(abtnOkieCap1)
        viewDiemcuocCap1.addSubview(abtnCancelCap1)
        viewDiemcuocCap1.addSubview(lblDiemCuocCap1)
        lblDiemCuocCap1.text = String("Đặt cược ô Đôi 1: $\(Int(sldDiemcuocCap1.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô CẶP 1:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocCap1)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocCap1)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocCap1.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocCap1,sldDiemcuocCap1)
        abtnOkieCap1.topAnchor.constraint(equalTo: sldDiemcuocCap1.bottomAnchor).isActive = true
        abtnCancelCap1.topAnchor.constraint(equalTo: abtnOkieCap1.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocCap1.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocCap1)
        viewDiemcuocCap1.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocCap1)
        viewDiemcuocCap1.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieCap1,abtnCancelCap1)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocCap1.addTarget(self, action: #selector(ViewController.asldDiemcuocCap1), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieCap1.addTarget(self, action: #selector(ViewController.ActionforBtnOkieCap1), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô CHẴN, TRỞ VỀ BÀN
        abtnCancelCap1.addTarget(self, action: #selector(ViewController.ActionforBtnHuyCap1), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô CẶP 1:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocCap1(){
        sldDiemcuocCap1.maximumValue = 1 * Float(diem)
        SoDiemCuocCap1 = Int(sldDiemcuocCap1.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocCap1.value = 0
                self.SoDiemCuocCap1 = Int(self.sldDiemcuocCap1.value)
                self.lblDiemCuocCap1.text = String("Đặt cược ô Đôi 1: $\(self.SoDiemCuocCap1)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocCap1.text = String("Đặt cược ô Đôi 1: $\(SoDiemCuocCap1)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieCap1(){
        SoDiemCuocCap1 = Int(sldDiemcuocCap1.value)
        viewDiemcuocCap1.isHidden = true
        print(SoDiemCuocCap1)
        if SoDiemCuocCap1 != 0 && SoDiemCuocCap1 <= diem{
            
            viewDaCuocCap1.isHidden = false
            lblSoDiemDaCuocCap1.text = String("$\(Int((sldDiemcuocCap1.value)))")
        }else{
            if SoDiemCuocCap1 != 0 && SoDiemCuocCap1 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocCap1.value = Float(self.diem)
                    self.SoDiemCuocCap1 = Int(self.sldDiemcuocCap1.value)
                    self.lblDiemCuocCap1.text = String("Đặt cược ô Đôi 1: $\(self.SoDiemCuocCap1)")
                    self.lblSoDiemDaCuocCap1.text = String("$\(Int((self.sldDiemcuocCap1.value)))")
                    self.viewDaCuocCap1.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyCap1(){
        sldDiemcuocCap1.value = 0
        SoDiemCuocCap1 = Int(sldDiemcuocCap1.value)
        lblSoDiemDaCuocCap1.text = String("$\(Int((sldDiemcuocCap1.value)))")
        viewDaCuocCap1.isHidden = true
        viewDiemcuocCap1.isHidden = true
        print(SoDiemCuocCap1)
    }
    
    //B: Ô CẶP 1 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocCap1:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocCap1:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Cặp 1:
    func DiemDaDatCuocOCap1(){
        viewCap1.addSubview(viewDaCuocCap1)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô CẶP 1 (LABEL ĐIỂM CƯỢC)
        viewDaCuocCap1.addSubview(lblSoDiemDaCuocCap1)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô CẶP 1:
        viewCap1.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocCap1)
        viewCap1.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocCap1)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocCap1.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocCap1)
        //2: CHIỀU NGANG:
        viewDaCuocCap1.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocCap1)
    }
  
//MARK 6: PHẦN 1: SET UP Ô CẶP 2:
    //A: Ô CẶP 2 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocCap2:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocCap2:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocCap2:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieCap2:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelCap2:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Cặp 2:
    //2.1: Hàm tổng quát
    func DatCuocOCap2(){
        viewDiemcuocCap2.isHidden = false
        setupViewCuocCap2()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Cặp 2
    func setupViewCuocCap2(){
        view.addSubview(viewDiemcuocCap2)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô CẶP 1 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocCap2.addSubview(sldDiemcuocCap2)
        viewDiemcuocCap2.addSubview(abtnOkieCap2)
        viewDiemcuocCap2.addSubview(abtnCancelCap2)
        viewDiemcuocCap2.addSubview(lblDiemCuocCap2)
        lblDiemCuocCap2.text = String("Đặt cược ô Đôi 2: $\(Int(sldDiemcuocCap2.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô CẶP 2:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocCap2)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocCap2)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocCap2.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocCap2,sldDiemcuocCap2)
        abtnOkieCap2.topAnchor.constraint(equalTo: sldDiemcuocCap2.bottomAnchor).isActive = true
        abtnCancelCap2.topAnchor.constraint(equalTo: abtnOkieCap2.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocCap2.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocCap2)
        viewDiemcuocCap2.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocCap2)
        viewDiemcuocCap2.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieCap2,abtnCancelCap2)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocCap2.addTarget(self, action: #selector(ViewController.asldDiemcuocCap2), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieCap2.addTarget(self, action: #selector(ViewController.ActionforBtnOkieCap2), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô CHẴN, TRỞ VỀ BÀN
        abtnCancelCap2.addTarget(self, action: #selector(ViewController.ActionforBtnHuyCap2), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô CẶP 2:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocCap2(){
        sldDiemcuocCap2.maximumValue = 1 * Float(diem)
        SoDiemCuocCap2 = Int(sldDiemcuocCap2.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocCap2.value = 0
                self.SoDiemCuocCap2 = Int(self.sldDiemcuocCap2.value)
                self.lblDiemCuocCap2.text = String("Đặt cược ô Đôi 2: $\(self.SoDiemCuocCap2)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocCap2.text = String("Đặt cược ô Đôi 2: $\(SoDiemCuocCap2)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieCap2(){
        SoDiemCuocCap2 = Int(sldDiemcuocCap2.value)
        viewDiemcuocCap2.isHidden = true
        print(SoDiemCuocCap2)
        if SoDiemCuocCap2 != 0 && SoDiemCuocCap2 <= diem{
            
            viewDaCuocCap2.isHidden = false
            lblSoDiemDaCuocCap2.text = String("$\(Int((sldDiemcuocCap2.value)))")
        }else{
            if SoDiemCuocCap2 != 0 && SoDiemCuocCap2 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocCap2.value = Float(self.diem)
                    self.SoDiemCuocCap2 = Int(self.sldDiemcuocCap2.value)
                    self.lblDiemCuocCap2.text = String("Đặt cược ô Đôi 2: $\(self.SoDiemCuocCap2)")
                    self.lblSoDiemDaCuocCap2.text = String("$\(Int((self.sldDiemcuocCap2.value)))")
                    self.viewDaCuocCap2.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyCap2(){
        sldDiemcuocCap2.value = 0
        SoDiemCuocCap2 = Int(sldDiemcuocCap2.value)
        lblSoDiemDaCuocCap2.text = String("$\(Int((sldDiemcuocCap2.value)))")
        viewDaCuocCap2.isHidden = true
        viewDiemcuocCap2.isHidden = true
    }
    
    //B: Ô CẶP 2 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocCap2:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocCap2:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Cặp 2:
    func DiemDaDatCuocOCap2(){
        viewCap2.addSubview(viewDaCuocCap2)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô CẶP 2 (LABEL ĐIỂM CƯỢC)
        viewDaCuocCap2.addSubview(lblSoDiemDaCuocCap2)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô CẶP 2:
        viewCap2.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocCap2)
        viewCap2.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocCap2)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocCap2.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocCap2)
        //2: CHIỀU NGANG:
        viewDaCuocCap2.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocCap2)
    }
//MARK 7: PHẦN 1: SET UP Ô CẶP 3:
    //A: Ô CẶP 3 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocCap3:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocCap3:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocCap3:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieCap3:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelCap3:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Cặp 3:
    //2.1: Hàm tổng quát
    func DatCuocOCap3(){
        viewDiemcuocCap3.isHidden = false
        setupViewCuocCap3()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Cặp 3
    func setupViewCuocCap3(){
        view.addSubview(viewDiemcuocCap3)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô CẶP 3 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocCap3.addSubview(sldDiemcuocCap3)
        viewDiemcuocCap3.addSubview(abtnOkieCap3)
        viewDiemcuocCap3.addSubview(abtnCancelCap3)
        viewDiemcuocCap3.addSubview(lblDiemCuocCap3)
        lblDiemCuocCap3.text = String("Đặt cược ô Đôi 3: $\(Int(sldDiemcuocCap3.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô CẶP 3:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocCap3)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocCap3)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocCap3.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocCap3,sldDiemcuocCap3)
        abtnOkieCap3.topAnchor.constraint(equalTo: sldDiemcuocCap3.bottomAnchor).isActive = true
        abtnCancelCap3.topAnchor.constraint(equalTo: abtnOkieCap3.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocCap3.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocCap3)
        viewDiemcuocCap3.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocCap3)
        viewDiemcuocCap3.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieCap3,abtnCancelCap3)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocCap3.addTarget(self, action: #selector(ViewController.asldDiemcuocCap3), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieCap3.addTarget(self, action: #selector(ViewController.ActionforBtnOkieCap3), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô CHẴN, TRỞ VỀ BÀN
        abtnCancelCap3.addTarget(self, action: #selector(ViewController.ActionforBtnHuyCap3), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô CẶP 3:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocCap3(){
        sldDiemcuocCap3.maximumValue = 1 * Float(diem)
        SoDiemCuocCap3 = Int(sldDiemcuocCap3.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocCap3.value = 0
                self.SoDiemCuocCap3 = Int(self.sldDiemcuocCap3.value)
                self.lblDiemCuocCap3.text = String("Đặt cược ô Đôi 3: $\(self.SoDiemCuocCap3)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocCap3.text = String("Đặt cược ô Đôi 3: $\(SoDiemCuocCap3)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieCap3(){
        SoDiemCuocCap3 = Int(sldDiemcuocCap3.value)
        viewDiemcuocCap3.isHidden = true
        print(SoDiemCuocCap3)
        if SoDiemCuocCap3 != 0 && SoDiemCuocCap3 <= diem{
            
            viewDaCuocCap3.isHidden = false
            lblSoDiemDaCuocCap3.text = String("$\(Int((sldDiemcuocCap3.value)))")
        }else{
            if SoDiemCuocCap3 != 0 && SoDiemCuocCap3 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocCap3.value = Float(self.diem)
                    self.SoDiemCuocCap3 = Int(self.sldDiemcuocCap3.value)
                    self.lblDiemCuocCap3.text = String("Đặt cược ô Đôi 3: $\(self.SoDiemCuocCap3)")
                    self.lblSoDiemDaCuocCap3.text = String("$\(Int((self.sldDiemcuocCap3.value)))")
                    self.viewDaCuocCap3.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyCap3(){
        sldDiemcuocCap3.value = 0
        SoDiemCuocCap3 = Int(sldDiemcuocCap3.value)
        lblSoDiemDaCuocCap3.text = String("$\(Int((sldDiemcuocCap3.value)))")
        viewDaCuocCap3.isHidden = true
        viewDiemcuocCap3.isHidden = true
    }
    
    //B: Ô CẶP 3 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocCap3:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocCap3:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Cặp 3:
    func DiemDaDatCuocOCap3(){
        viewCap3.addSubview(viewDaCuocCap3)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô CẶP 3 (LABEL ĐIỂM CƯỢC)
        viewDaCuocCap3.addSubview(lblSoDiemDaCuocCap3)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô CẶP 3:
        viewCap3.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocCap3)
        viewCap3.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocCap3)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocCap3.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocCap3)
        //2: CHIỀU NGANG:
        viewDaCuocCap3.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocCap3)
    }
//MARK 8: PHẦN 1: SET UP Ô CẶP 4:
    //A: Ô CẶP 4 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocCap4:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocCap4:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocCap4:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieCap4:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelCap4:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Cặp 4:
    //2.1: Hàm tổng quát
    func DatCuocOCap4(){
        viewDiemcuocCap4.isHidden = false
        setupViewCuocCap4()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Cặp 4
    func setupViewCuocCap4(){
        view.addSubview(viewDiemcuocCap4)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô CẶP 4 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocCap4.addSubview(sldDiemcuocCap4)
        viewDiemcuocCap4.addSubview(abtnOkieCap4)
        viewDiemcuocCap4.addSubview(abtnCancelCap4)
        viewDiemcuocCap4.addSubview(lblDiemCuocCap4)
        lblDiemCuocCap4.text = String("Đặt cược ô Đôi 4: $\(Int(sldDiemcuocCap4.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô CẶP 4:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocCap4)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocCap4)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocCap4.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocCap4,sldDiemcuocCap4)
        abtnOkieCap4.topAnchor.constraint(equalTo: sldDiemcuocCap4.bottomAnchor).isActive = true
        abtnCancelCap4.topAnchor.constraint(equalTo: abtnOkieCap4.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocCap4.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocCap4)
        viewDiemcuocCap4.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocCap4)
        viewDiemcuocCap4.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieCap4,abtnCancelCap4)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocCap4.addTarget(self, action: #selector(ViewController.asldDiemcuocCap4), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieCap4.addTarget(self, action: #selector(ViewController.ActionforBtnOkieCap4), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô CẶP 4, TRỞ VỀ BÀN
        abtnCancelCap4.addTarget(self, action: #selector(ViewController.ActionforBtnHuyCap4), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô CẶP 4:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocCap4(){
        sldDiemcuocCap4.maximumValue = 1 * Float(diem)
        SoDiemCuocCap4 = Int(sldDiemcuocCap4.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocCap4.value = 0
                self.SoDiemCuocCap4 = Int(self.sldDiemcuocCap4.value)
                self.lblDiemCuocCap4.text = String("Đặt cược ô Đôi 4: $\(self.SoDiemCuocCap4)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocCap4.text = String("Đặt cược ô Đôi 4: $\(SoDiemCuocCap4)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieCap4(){
        SoDiemCuocCap4 = Int(sldDiemcuocCap4.value)
        viewDiemcuocCap4.isHidden = true
        if SoDiemCuocCap4 != 0 && SoDiemCuocCap4 <= diem{
            viewDaCuocCap4.isHidden = false
            lblSoDiemDaCuocCap4.text = String("$\(Int((sldDiemcuocCap4.value)))")
        }else{
            if SoDiemCuocCap4 != 0 && SoDiemCuocCap4 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocCap4.value = Float(self.diem)
                    self.SoDiemCuocCap4 = Int(self.sldDiemcuocCap4.value)
                    self.lblDiemCuocCap4.text = String("Đặt cược ô Đôi 4: $\(self.SoDiemCuocCap4)")
                    self.lblSoDiemDaCuocCap4.text = String("$\(Int((self.sldDiemcuocCap4.value)))")
                    self.viewDaCuocCap4.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyCap4(){
        sldDiemcuocCap4.value = 0
        SoDiemCuocCap4 = Int(sldDiemcuocCap4.value)
        lblSoDiemDaCuocCap4.text = String("$\(Int((sldDiemcuocCap4.value)))")
        viewDaCuocCap4.isHidden = true
        viewDiemcuocCap4.isHidden = true
    }
    
    //B: Ô CẶP 4 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocCap4:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocCap4:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Cặp 4:
    func DiemDaDatCuocOCap4(){
        viewCap4.addSubview(viewDaCuocCap4)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô CẶP 4 (LABEL ĐIỂM CƯỢC)
        viewDaCuocCap4.addSubview(lblSoDiemDaCuocCap4)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô CẶP 4:
        viewCap4.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocCap4)
        viewCap4.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocCap4)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocCap4.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocCap4)
        //2: CHIỀU NGANG:
        viewDaCuocCap4.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocCap4)
    }
    
//MARK 9: PHẦN 1: SET UP Ô CẶP 5:
    //A: Ô CẶP 5 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocCap5:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocCap5:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocCap5:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieCap5:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelCap5:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Cặp 5:
    //2.1: Hàm tổng quát
    func DatCuocOCap5(){
        viewDiemcuocCap5.isHidden = false
        setupViewCuocCap5()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Cặp 5
    func setupViewCuocCap5(){
        view.addSubview(viewDiemcuocCap5)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô CẶP 5 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocCap5.addSubview(sldDiemcuocCap5)
        viewDiemcuocCap5.addSubview(abtnOkieCap5)
        viewDiemcuocCap5.addSubview(abtnCancelCap5)
        viewDiemcuocCap5.addSubview(lblDiemCuocCap5)
        lblDiemCuocCap5.text = String("Đặt cược ô Đôi 5: $\(Int(sldDiemcuocCap5.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô CẶP 5:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocCap5)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocCap5)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocCap5.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocCap5,sldDiemcuocCap5)
        abtnOkieCap5.topAnchor.constraint(equalTo: sldDiemcuocCap5.bottomAnchor).isActive = true
        abtnCancelCap5.topAnchor.constraint(equalTo: abtnOkieCap5.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocCap5.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocCap5)
        viewDiemcuocCap5.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocCap5)
        viewDiemcuocCap5.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieCap5,abtnCancelCap5)
 
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocCap5.addTarget(self, action: #selector(ViewController.asldDiemcuocCap5), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieCap5.addTarget(self, action: #selector(ViewController.ActionforBtnOkieCap5), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô CẶP 5, TRỞ VỀ BÀN
        abtnCancelCap5.addTarget(self, action: #selector(ViewController.ActionforBtnHuyCap5), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô CẶP 5:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocCap5(){
        sldDiemcuocCap5.maximumValue = 1 * Float(diem)
        SoDiemCuocCap5 = Int(sldDiemcuocCap5.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocCap5.value = 0
                self.SoDiemCuocCap5 = Int(self.sldDiemcuocCap4.value)
                self.lblDiemCuocCap5.text = String("Đặt cược ô Đôi 5: $\(self.SoDiemCuocCap5)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocCap5.text = String("Đặt cược ô Đôi 5: $\(SoDiemCuocCap5)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieCap5(){
        SoDiemCuocCap5 = Int(sldDiemcuocCap4.value)
        viewDiemcuocCap5.isHidden = true
        if SoDiemCuocCap5 != 0 && SoDiemCuocCap5 <= diem{
            viewDaCuocCap5.isHidden = false
            lblSoDiemDaCuocCap5.text = String("$\(Int((sldDiemcuocCap5.value)))")
        }else{
            if SoDiemCuocCap5 != 0 && SoDiemCuocCap5 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocCap5.value = Float(self.diem)
                    self.SoDiemCuocCap5 = Int(self.sldDiemcuocCap5.value)
                    self.lblDiemCuocCap5.text = String("Đặt cược ô Đôi 5: $\(self.SoDiemCuocCap5)")
                    self.lblSoDiemDaCuocCap5.text = String("$\(Int((self.sldDiemcuocCap5.value)))")
                    self.viewDaCuocCap5.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyCap5(){
        sldDiemcuocCap5.value = 0
        SoDiemCuocCap5 = Int(sldDiemcuocCap5.value)
        lblSoDiemDaCuocCap5.text = String("$\(Int((sldDiemcuocCap5.value)))")
        viewDaCuocCap5.isHidden = true
        viewDiemcuocCap5.isHidden = true
    }
    
    //B: Ô CẶP 5 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocCap5:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocCap5:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Cặp 5:
    func DiemDaDatCuocOCap5(){
        viewCap5.addSubview(viewDaCuocCap5)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô CẶP 4 (LABEL ĐIỂM CƯỢC)
        viewDaCuocCap5.addSubview(lblSoDiemDaCuocCap5)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô CẶP 5:
        viewCap5.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocCap5)
        viewCap5.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocCap5)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocCap5.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocCap5)
        //2: CHIỀU NGANG:
        viewDaCuocCap5.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocCap5)
    }
//MARK 10: PHẦN 1: SET UP Ô CẶP 6:
    //A: Ô CẶP 6 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocCap6:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocCap6:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocCap6:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieCap6:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelCap6:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Cặp 6:
    //2.1: Hàm tổng quát
    func DatCuocOCap6(){
        viewDiemcuocCap6.isHidden = false
        setupViewCuocCap6()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Cặp6
    func setupViewCuocCap6(){
        view.addSubview(viewDiemcuocCap6)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô CẶP 6 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocCap6.addSubview(sldDiemcuocCap6)
        viewDiemcuocCap6.addSubview(abtnOkieCap6)
        viewDiemcuocCap6.addSubview(abtnCancelCap6)
        viewDiemcuocCap6.addSubview(lblDiemCuocCap6)
        lblDiemCuocCap6.text = String("Đặt cược ô Đôi 6: $\(Int(sldDiemcuocCap6.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô CẶP 6:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocCap6)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocCap6)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocCap6.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocCap6,sldDiemcuocCap6)
        abtnOkieCap6.topAnchor.constraint(equalTo: sldDiemcuocCap6.bottomAnchor).isActive = true
        abtnCancelCap6.topAnchor.constraint(equalTo: abtnOkieCap6.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocCap6.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocCap6)
        viewDiemcuocCap6.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocCap6)
        viewDiemcuocCap6.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieCap6,abtnCancelCap6)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocCap6.addTarget(self, action: #selector(ViewController.asldDiemcuocCap6), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieCap6.addTarget(self, action: #selector(ViewController.ActionforBtnOkieCap6), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô CẶP 6, TRỞ VỀ BÀN
        abtnCancelCap6.addTarget(self, action: #selector(ViewController.ActionforBtnHuyCap6), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô CẶP 6:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocCap6(){
        sldDiemcuocCap6.maximumValue = 1 * Float(diem)
        SoDiemCuocCap6 = Int(sldDiemcuocCap6.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocCap6.value = 0
                self.SoDiemCuocCap6 = Int(self.sldDiemcuocCap6.value)
                self.lblDiemCuocCap6.text = String("Đặt cược ô Đôi 6: $\(self.SoDiemCuocCap6)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocCap6.text = String("Đặt cược ô Đôi 6: $\(SoDiemCuocCap6)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieCap6(){
        SoDiemCuocCap6 = Int(sldDiemcuocCap6.value)
        viewDiemcuocCap6.isHidden = true
        if SoDiemCuocCap6 != 0 && SoDiemCuocCap6 <= diem{
            viewDaCuocCap6.isHidden = false
            lblSoDiemDaCuocCap6.text = String("$\(Int((sldDiemcuocCap6.value)))")
        }else{
            if SoDiemCuocCap6 != 0 && SoDiemCuocCap6 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocCap6.value = Float(self.diem)
                    self.SoDiemCuocCap6 = Int(self.sldDiemcuocCap6.value)
                    self.lblDiemCuocCap6.text = String("Đặt cược ô Đôi 6: $\(self.SoDiemCuocCap6)")
                    self.lblSoDiemDaCuocCap6.text = String("$\(Int((self.sldDiemcuocCap6.value)))")
                    self.viewDaCuocCap6.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyCap6(){
        sldDiemcuocCap6.value = 0
        SoDiemCuocCap6 = Int(sldDiemcuocCap6.value)
        lblSoDiemDaCuocCap6.text = String("$\(Int((sldDiemcuocCap6.value)))")
        viewDaCuocCap6.isHidden = true
        viewDiemcuocCap6.isHidden = true
    }
    
    //B: Ô CẶP 6 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocCap6:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocCap6:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Cặp 6:
    func DiemDaDatCuocOCap6(){
        viewCap6.addSubview(viewDaCuocCap6)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô CẶP 6 (LABEL ĐIỂM CƯỢC)
        viewDaCuocCap6.addSubview(lblSoDiemDaCuocCap6)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô CẶP 6:
        viewCap6.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocCap6)
        viewCap6.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocCap6)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocCap6.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocCap6)
        //2: CHIỀU NGANG:
        viewDaCuocCap6.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocCap6)
    }
//MARK 11: PHẦN 1: SET UP Ô BA BẤT KỲ:
    //A: Ô BA BẤT KỲ ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocBa:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocBa:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocBa:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieBa:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelBa:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Ba:
    //2.1: Hàm tổng quát
    func DatCuocOBa(){
        viewDiemcuocBa.isHidden = false
        setupViewCuocBa()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Ba
    func setupViewCuocBa(){
        view.addSubview(viewDiemcuocBa)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô BA (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocBa.addSubview(sldDiemcuocBa)
        viewDiemcuocBa.addSubview(abtnOkieBa)
        viewDiemcuocBa.addSubview(abtnCancelBa)
        viewDiemcuocBa.addSubview(lblDiemCuocBa)
        lblDiemCuocBa.text = String("Đặt cược ô Ba: $\(Int(sldDiemcuocBa.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô BA:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocBa)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocBa)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocBa.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocBa,sldDiemcuocBa)
        abtnOkieBa.topAnchor.constraint(equalTo: sldDiemcuocBa.bottomAnchor).isActive = true
        abtnCancelBa.topAnchor.constraint(equalTo: abtnOkieBa.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocBa.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocBa)
        viewDiemcuocBa.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocBa)
        viewDiemcuocBa.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieBa,abtnCancelBa)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocBa.addTarget(self, action: #selector(ViewController.asldDiemcuocBa), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieBa.addTarget(self, action: #selector(ViewController.ActionforBtnOkieBa), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô BA, TRỞ VỀ BÀN
        abtnCancelBa.addTarget(self, action: #selector(ViewController.ActionforBtnHuyBa), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô BA:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocBa(){
        sldDiemcuocBa.maximumValue = 1 * Float(diem)
        SoDiemCuocBa = Int(sldDiemcuocBa.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocBa.value = 0
                self.SoDiemCuocBa = Int(self.sldDiemcuocBa.value)
                self.lblDiemCuocBa.text = String("Đặt cược ô Ba: $\(self.SoDiemCuocBa)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocBa.text = String("Đặt cược ô Ba: $\(SoDiemCuocBa)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieBa(){
        SoDiemCuocBa = Int(sldDiemcuocBa.value)
        viewDiemcuocBa.isHidden = true
        if SoDiemCuocBa != 0 && SoDiemCuocBa <= diem{
            viewDaCuocBa.isHidden = false
            lblSoDiemDaCuocBa.text = String("$\(Int((sldDiemcuocBa.value)))")
        }else{
            if SoDiemCuocBa != 0 && SoDiemCuocBa > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocBa.value = Float(self.diem)
                    self.SoDiemCuocBa = Int(self.sldDiemcuocBa.value)
                    self.lblDiemCuocBa.text = String("Đặt cược ô Ba: $\(self.SoDiemCuocBa)")
                    self.lblSoDiemDaCuocBa.text = String("$\(Int((self.sldDiemcuocBa.value)))")
                    self.viewDaCuocBa.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyBa(){
        sldDiemcuocBa.value = 0
        SoDiemCuocBa = Int(sldDiemcuocBa.value)
        lblSoDiemDaCuocBa.text = String("$\(Int((sldDiemcuocBa.value)))")
        viewDaCuocBa.isHidden = true
        viewDiemcuocBa.isHidden = true
    }
    
    //B: Ô BA  THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocBa:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocBa:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Ba:
    func DiemDaDatCuocOBa(){
        viewBa.addSubview(viewDaCuocBa)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô BA (LABEL ĐIỂM CƯỢC)
        viewDaCuocBa.addSubview(lblSoDiemDaCuocBa)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô BA:
        viewBa.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocBa)
        viewBa.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocBa)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocBa.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocBa)
        //2: CHIỀU NGANG:
        viewDaCuocBa.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocBa)
    }
//MARK 12: PHẦN 1: SET UP Ô BA 1:
    //A: Ô BA 1 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocBa1:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocBa1:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocBa1:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieBa1:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelBa1:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Ba 1:
    //2.1: Hàm tổng quát
    func DatCuocOBa1(){
        viewDiemcuocBa1.isHidden = false
        setupViewCuocBa1()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Ba 1
    func setupViewCuocBa1(){
        view.addSubview(viewDiemcuocBa1)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô BA 1 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocBa1.addSubview(sldDiemcuocBa1)
        viewDiemcuocBa1.addSubview(abtnOkieBa1)
        viewDiemcuocBa1.addSubview(abtnCancelBa1)
        viewDiemcuocBa1.addSubview(lblDiemCuocBa1)
        lblDiemCuocBa1.text = String("Đặt cược ô Ba số 1: $\(Int(sldDiemcuocBa1.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô BA 1:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocBa1)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocBa1)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocBa1.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocBa1,sldDiemcuocBa1)
        abtnOkieBa1.topAnchor.constraint(equalTo: sldDiemcuocBa1.bottomAnchor).isActive = true
        abtnCancelBa1.topAnchor.constraint(equalTo: abtnOkieBa1.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocBa1.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocBa1)
        viewDiemcuocBa1.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocBa1)
        viewDiemcuocBa1.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieBa1,abtnCancelBa1)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocBa1.addTarget(self, action: #selector(ViewController.asldDiemcuocBa1), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieBa1.addTarget(self, action: #selector(ViewController.ActionforBtnOkieBa1), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô BA 1, TRỞ VỀ BÀN
        abtnCancelBa1.addTarget(self, action: #selector(ViewController.ActionforBtnHuyBa1), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô BA 1:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocBa1(){
        sldDiemcuocBa1.maximumValue = 1 * Float(diem)
        SoDiemCuocBa1 = Int(sldDiemcuocBa1.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocBa1.value = 0
                self.SoDiemCuocBa1 = Int(self.sldDiemcuocBa1.value)
                self.lblDiemCuocBa1.text = String("Đặt cược ô Ba số 1: $\(self.SoDiemCuocBa1)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocBa1.text = String("Đặt cược ô Ba số 1: $\(SoDiemCuocBa1)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieBa1(){
        SoDiemCuocBa1 = Int(sldDiemcuocBa1.value)
        viewDiemcuocBa1.isHidden = true
        if SoDiemCuocBa1 != 0 && SoDiemCuocBa1 <= diem{
            viewDaCuocBa1.isHidden = false
            lblSoDiemDaCuocBa1.text = String("$\(Int((sldDiemcuocBa1.value)))")
        }else{
            if SoDiemCuocBa1 != 0 && SoDiemCuocBa1 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocBa1.value = Float(self.diem)
                    self.SoDiemCuocBa1 = Int(self.sldDiemcuocBa1.value)
                    self.lblDiemCuocBa1.text = String("Đặt cược ô Ba số 1: $\(self.SoDiemCuocBa1)")
                    self.lblSoDiemDaCuocBa1.text = String("$\(Int((self.sldDiemcuocBa1.value)))")
                    self.viewDaCuocBa1.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyBa1(){
        sldDiemcuocBa1.value = 0
        SoDiemCuocBa1 = Int(sldDiemcuocBa1.value)
        lblSoDiemDaCuocBa1.text = String("$\(Int((sldDiemcuocBa1.value)))")
        viewDaCuocBa1.isHidden = true
        viewDiemcuocBa1.isHidden = true
    }
    
    //B: Ô BA 1 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocBa1:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocBa1:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Ba 1:
    func DiemDaDatCuocOBa1(){
        viewBa1.addSubview(viewDaCuocBa1)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô BA 1(LABEL ĐIỂM CƯỢC)
        viewDaCuocBa1.addSubview(lblSoDiemDaCuocBa1)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô BA 1:
        viewBa1.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocBa1)
        viewBa1.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocBa1)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocBa1.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocBa1)
        //2: CHIỀU NGANG:
        viewDaCuocBa1.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocBa1)
    }
    
//MARK 13: PHẦN 1: SET UP Ô BA 2:
    //A: Ô BA 2 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocBa2:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocBa2:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocBa2:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieBa2:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelBa2:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Ba 2:
    //2.1: Hàm tổng quát
    func DatCuocOBa2(){
        viewDiemcuocBa2.isHidden = false
        setupViewCuocBa2()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Ba 2
    func setupViewCuocBa2(){
        view.addSubview(viewDiemcuocBa2)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô BA 2(SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocBa2.addSubview(sldDiemcuocBa2)
        viewDiemcuocBa2.addSubview(abtnOkieBa2)
        viewDiemcuocBa2.addSubview(abtnCancelBa2)
        viewDiemcuocBa2.addSubview(lblDiemCuocBa2)
        lblDiemCuocBa2.text = String("Đặt cược ô Ba số 2: $\(Int(sldDiemcuocBa2.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô BA 2:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocBa2)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocBa2)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocBa2.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocBa2,sldDiemcuocBa2)
        abtnOkieBa2.topAnchor.constraint(equalTo: sldDiemcuocBa2.bottomAnchor).isActive = true
        abtnCancelBa2.topAnchor.constraint(equalTo: abtnOkieBa2.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocBa2.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocBa2)
        viewDiemcuocBa2.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocBa2)
        viewDiemcuocBa2.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieBa2,abtnCancelBa2)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocBa2.addTarget(self, action: #selector(ViewController.asldDiemcuocBa2), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieBa2.addTarget(self, action: #selector(ViewController.ActionforBtnOkieBa2), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô BA 2, TRỞ VỀ BÀN
        abtnCancelBa2.addTarget(self, action: #selector(ViewController.ActionforBtnHuyBa2), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô BA 2:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocBa2(){
        sldDiemcuocBa2.maximumValue = 1 * Float(diem)
        SoDiemCuocBa2 = Int(sldDiemcuocBa2.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocBa2.value = 0
                self.SoDiemCuocBa2 = Int(self.sldDiemcuocBa2.value)
                self.lblDiemCuocBa2.text = String("Đặt cược ô Ba số 2: $\(self.SoDiemCuocBa2)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocBa2.text = String("Đặt cược ô Ba số 2: $\(SoDiemCuocBa2)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieBa2(){
        SoDiemCuocBa2 = Int(sldDiemcuocBa2.value)
        viewDiemcuocBa2.isHidden = true
        if SoDiemCuocBa2 != 0 && SoDiemCuocBa2 <= diem{
            viewDaCuocBa2.isHidden = false
            lblSoDiemDaCuocBa2.text = String("$\(Int((sldDiemcuocBa2.value)))")
        }else{
            if SoDiemCuocBa2 != 0 && SoDiemCuocBa2 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocBa2.value = Float(self.diem)
                    self.SoDiemCuocBa2 = Int(self.sldDiemcuocBa2.value)
                    self.lblDiemCuocBa2.text = String("Đặt cược ô Ba số 2: $\(self.SoDiemCuocBa2)")
                    self.lblSoDiemDaCuocBa2.text = String("$\(Int((self.sldDiemcuocBa2.value)))")
                    self.viewDaCuocBa2.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyBa2(){
        sldDiemcuocBa2.value = 0
        SoDiemCuocBa2 = Int(sldDiemcuocBa2.value)
        lblSoDiemDaCuocBa2.text = String("$\(Int((sldDiemcuocBa2.value)))")
        viewDaCuocBa2.isHidden = true
        viewDiemcuocBa2.isHidden = true
    }
    
    //B: Ô BA 2 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocBa2:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocBa2:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Ba 2:
    func DiemDaDatCuocOBa2(){
        viewBa2.addSubview(viewDaCuocBa2)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô BA 2 (LABEL ĐIỂM CƯỢC)
        viewDaCuocBa2.addSubview(lblSoDiemDaCuocBa2)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô BA 2:
        viewBa2.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocBa2)
        viewBa2.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocBa2)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocBa2.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocBa2)
        //2: CHIỀU NGANG:
        viewDaCuocBa2.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocBa2)
    }
//MARK 14: PHẦN 1: SET UP Ô BA 3:
    //A: Ô BA 3 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocBa3:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocBa3:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocBa3:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieBa3:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelBa3:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Ba 3:
    //2.1: Hàm tổng quát
    func DatCuocOBa3(){
        viewDiemcuocBa3.isHidden = false
        setupViewCuocBa3()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Ba 3
    func setupViewCuocBa3(){
        view.addSubview(viewDiemcuocBa3)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô BA (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocBa3.addSubview(sldDiemcuocBa3)
        viewDiemcuocBa3.addSubview(abtnOkieBa3)
        viewDiemcuocBa3.addSubview(abtnCancelBa3)
        viewDiemcuocBa3.addSubview(lblDiemCuocBa3)
        lblDiemCuocBa3.text = String("Đặt cược ô Ba số 3: $\(Int(sldDiemcuocBa3.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô BA 3:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocBa3)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocBa3)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocBa3.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocBa3,sldDiemcuocBa3)
        abtnOkieBa3.topAnchor.constraint(equalTo: sldDiemcuocBa3.bottomAnchor).isActive = true
        abtnCancelBa3.topAnchor.constraint(equalTo: abtnOkieBa3.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocBa3.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocBa3)
        viewDiemcuocBa3.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocBa3)
        viewDiemcuocBa3.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieBa3,abtnCancelBa3)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocBa3.addTarget(self, action: #selector(ViewController.asldDiemcuocBa3), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieBa3.addTarget(self, action: #selector(ViewController.ActionforBtnOkieBa3), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô BA 3, TRỞ VỀ BÀN
        abtnCancelBa3.addTarget(self, action: #selector(ViewController.ActionforBtnHuyBa3), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô BA 3:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocBa3(){
        sldDiemcuocBa3.maximumValue = 1 * Float(diem)
        SoDiemCuocBa3 = Int(sldDiemcuocBa3.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocBa3.value = 0
                self.SoDiemCuocBa3 = Int(self.sldDiemcuocBa3.value)
                self.lblDiemCuocBa3.text = String("Đặt cược ô Ba số 3: $\(self.SoDiemCuocBa3)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocBa3.text = String("Đặt cược ô Ba số 3: $\(SoDiemCuocBa3)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieBa3(){
        SoDiemCuocBa3 = Int(sldDiemcuocBa3.value)
        viewDiemcuocBa3.isHidden = true
        if SoDiemCuocBa3 != 0 && SoDiemCuocBa3 <= diem{
            viewDaCuocBa3.isHidden = false
            lblSoDiemDaCuocBa3.text = String("$\(Int((sldDiemcuocBa3.value)))")
        }else{
            if SoDiemCuocBa3 != 0 && SoDiemCuocBa3 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocBa3.value = Float(self.diem)
                    self.SoDiemCuocBa3 = Int(self.sldDiemcuocBa3.value)
                    self.lblDiemCuocBa3.text = String("Đặt cược ô Ba số 3: $\(self.SoDiemCuocBa3)")
                    self.lblSoDiemDaCuocBa3.text = String("$\(Int((self.sldDiemcuocBa3.value)))")
                    self.viewDaCuocBa3.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyBa3(){
        sldDiemcuocBa3.value = 0
        SoDiemCuocBa3 = Int(sldDiemcuocBa3.value)
        lblSoDiemDaCuocBa3.text = String("$\(Int((sldDiemcuocBa3.value)))")
        viewDaCuocBa3.isHidden = true
        viewDiemcuocBa3.isHidden = true
    }
    
    //B: Ô BA 3 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocBa3:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocBa3:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Ba 3:
    func DiemDaDatCuocOBa3(){
        viewBa3.addSubview(viewDaCuocBa3)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô BA 3(LABEL ĐIỂM CƯỢC)
        viewDaCuocBa3.addSubview(lblSoDiemDaCuocBa3)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô BA 3:
        viewBa3.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocBa3)
        viewBa3.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocBa3)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocBa3.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocBa3)
        //2: CHIỀU NGANG:
        viewDaCuocBa3.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocBa3)
    }
//MARK 15: PHẦN 1: SET UP Ô BA 4:
    //A: Ô BA 4 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocBa4:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocBa4:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocBa4:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieBa4:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelBa4:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Ba 4:
    //2.1: Hàm tổng quát
    func DatCuocOBa4(){
        viewDiemcuocBa4.isHidden = false
        setupViewCuocBa4()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Ba 4
    func setupViewCuocBa4(){
        view.addSubview(viewDiemcuocBa4)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô BA 4(SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocBa4.addSubview(sldDiemcuocBa4)
        viewDiemcuocBa4.addSubview(abtnOkieBa4)
        viewDiemcuocBa4.addSubview(abtnCancelBa4)
        viewDiemcuocBa4.addSubview(lblDiemCuocBa4)
        lblDiemCuocBa4.text = String("Đặt cược ô Ba số 4: $\(Int(sldDiemcuocBa4.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô BA 4:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocBa4)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocBa4)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocBa4.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocBa4,sldDiemcuocBa4)
        abtnOkieBa4.topAnchor.constraint(equalTo: sldDiemcuocBa4.bottomAnchor).isActive = true
        abtnCancelBa4.topAnchor.constraint(equalTo: abtnOkieBa4.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocBa4.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocBa4)
        viewDiemcuocBa4.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocBa4)
        viewDiemcuocBa4.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieBa4,abtnCancelBa4)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocBa4.addTarget(self, action: #selector(ViewController.asldDiemcuocBa4), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieBa4.addTarget(self, action: #selector(ViewController.ActionforBtnOkieBa4), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô BA 4, TRỞ VỀ BÀN
        abtnCancelBa4.addTarget(self, action: #selector(ViewController.ActionforBtnHuyBa4), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô BA 4:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocBa4(){
        sldDiemcuocBa4.maximumValue = 1 * Float(diem)
        SoDiemCuocBa4 = Int(sldDiemcuocBa4.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocBa4.value = 0
                self.SoDiemCuocBa4 = Int(self.sldDiemcuocBa4.value)
                self.lblDiemCuocBa4.text = String("Đặt cược ô Ba số 4: $\(self.SoDiemCuocBa4)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocBa4.text = String("Đặt cược ô Ba số 4: $\(SoDiemCuocBa4)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieBa4(){
        SoDiemCuocBa4 = Int(sldDiemcuocBa4.value)
        viewDiemcuocBa4.isHidden = true
        if SoDiemCuocBa4 != 0 && SoDiemCuocBa4 <= diem{
            viewDaCuocBa4.isHidden = false
            lblSoDiemDaCuocBa4.text = String("$\(Int((sldDiemcuocBa4.value)))")
        }else{
            if SoDiemCuocBa4 != 0 && SoDiemCuocBa4 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocBa4.value = Float(self.diem)
                    self.SoDiemCuocBa4 = Int(self.sldDiemcuocBa4.value)
                    self.lblDiemCuocBa4.text = String("Đặt cược ô Ba số 4: $\(self.SoDiemCuocBa4)")
                    self.lblSoDiemDaCuocBa4.text = String("$\(Int((self.sldDiemcuocBa4.value)))")
                    self.viewDaCuocBa4.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyBa4(){
        sldDiemcuocBa4.value = 0
        SoDiemCuocBa4 = Int(sldDiemcuocBa4.value)
        lblSoDiemDaCuocBa4.text = String("$\(Int((sldDiemcuocBa4.value)))")
        viewDaCuocBa4.isHidden = true
        viewDiemcuocBa4.isHidden = true
    }
    
    //B: Ô BA 4 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocBa4:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocBa4:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Ba 4:
    func DiemDaDatCuocOBa4(){
        viewBa4.addSubview(viewDaCuocBa4)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô BA 4(LABEL ĐIỂM CƯỢC)
        viewDaCuocBa4.addSubview(lblSoDiemDaCuocBa4)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô BA 4:
        viewBa4.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocBa4)
        viewBa4.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocBa4)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocBa4.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocBa4)
        //2: CHIỀU NGANG:
        viewDaCuocBa4.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocBa4)
    }
//MARK 16: PHẦN 1: SET UP Ô BA 5:
    //A: Ô BA 5 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocBa5:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocBa5:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocBa5:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieBa5:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelBa5:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Ba 5:
    //2.1: Hàm tổng quát
    func DatCuocOBa5(){
        viewDiemcuocBa5.isHidden = false
        setupViewCuocBa5()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Ba 5
    func setupViewCuocBa5(){
        view.addSubview(viewDiemcuocBa5)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô BA 5(SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocBa5.addSubview(sldDiemcuocBa5)
        viewDiemcuocBa5.addSubview(abtnOkieBa5)
        viewDiemcuocBa5.addSubview(abtnCancelBa5)
        viewDiemcuocBa5.addSubview(lblDiemCuocBa5)
        lblDiemCuocBa5.text = String("Đặt cược ô Ba số 5: $\(Int(sldDiemcuocBa5.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô BA 5:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocBa5)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocBa5)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocBa5.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocBa5,sldDiemcuocBa5)
        abtnOkieBa5.topAnchor.constraint(equalTo: sldDiemcuocBa5.bottomAnchor).isActive = true
        abtnCancelBa5.topAnchor.constraint(equalTo: abtnOkieBa5.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocBa5.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocBa5)
        viewDiemcuocBa5.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocBa5)
        viewDiemcuocBa5.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieBa5,abtnCancelBa5)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocBa5.addTarget(self, action: #selector(ViewController.asldDiemcuocBa5), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieBa5.addTarget(self, action: #selector(ViewController.ActionforBtnOkieBa5), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô BA 5, TRỞ VỀ BÀN
        abtnCancelBa5.addTarget(self, action: #selector(ViewController.ActionforBtnHuyBa5), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô BA 5:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocBa5(){
        sldDiemcuocBa5.maximumValue = 1 * Float(diem)
        SoDiemCuocBa5 = Int(sldDiemcuocBa5.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocBa5.value = 0
                self.SoDiemCuocBa5 = Int(self.sldDiemcuocBa5.value)
                self.lblDiemCuocBa5.text = String("Đặt cược ô Ba số 5: $\(self.SoDiemCuocBa5)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocBa5.text = String("Đặt cược ô Ba số 5: $\(SoDiemCuocBa5)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieBa5(){
        SoDiemCuocBa5 = Int(sldDiemcuocBa5.value)
        viewDiemcuocBa5.isHidden = true
        if SoDiemCuocBa != 0 && SoDiemCuocBa5 <= diem{
            viewDaCuocBa5.isHidden = false
            lblSoDiemDaCuocBa5.text = String("$\(Int((sldDiemcuocBa5.value)))")
        }else{
            if SoDiemCuocBa5 != 0 && SoDiemCuocBa5 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocBa5.value = Float(self.diem)
                    self.SoDiemCuocBa5 = Int(self.sldDiemcuocBa5.value)
                    self.lblDiemCuocBa5.text = String("Đặt cược ô Ba số 5: $\(self.SoDiemCuocBa5)")
                    self.lblSoDiemDaCuocBa5.text = String("$\(Int((self.sldDiemcuocBa5.value)))")
                    self.viewDaCuocBa5.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyBa5(){
        sldDiemcuocBa5.value = 0
        SoDiemCuocBa5 = Int(sldDiemcuocBa5.value)
        lblSoDiemDaCuocBa5.text = String("$\(Int((sldDiemcuocBa5.value)))")
        viewDaCuocBa5.isHidden = true
        viewDiemcuocBa5.isHidden = true
    }
    
    //B: Ô BA 5 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocBa5:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocBa5:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Ba 5:
    func DiemDaDatCuocOBa5(){
        viewBa5.addSubview(viewDaCuocBa5)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô BA 5(LABEL ĐIỂM CƯỢC)
        viewDaCuocBa5.addSubview(lblSoDiemDaCuocBa5)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô BA 5:
        viewBa5.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocBa5)
        viewBa5.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocBa5)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocBa5.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocBa5)
        //2: CHIỀU NGANG:
        viewDaCuocBa5.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocBa5)
    }
//MARK 17: PHẦN 1: SET UP Ô BA 6:
    //A: Ô BA 6 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocBa6:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocBa6:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocBa6:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieBa6:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelBa6:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Ba 6:
    //2.1: Hàm tổng quát
    func DatCuocOBa6(){
        viewDiemcuocBa6.isHidden = false
        setupViewCuocBa6()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Ba 6
    func setupViewCuocBa6(){
        view.addSubview(viewDiemcuocBa6)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô BA 6(SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocBa6.addSubview(sldDiemcuocBa6)
        viewDiemcuocBa6.addSubview(abtnOkieBa6)
        viewDiemcuocBa6.addSubview(abtnCancelBa6)
        viewDiemcuocBa6.addSubview(lblDiemCuocBa6)
        lblDiemCuocBa6.text = String("Đặt cược ô Ba số 6: $\(Int(sldDiemcuocBa6.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô BA 6:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocBa6)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocBa6)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocBa6.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocBa6,sldDiemcuocBa6)
        abtnOkieBa6.topAnchor.constraint(equalTo: sldDiemcuocBa6.bottomAnchor).isActive = true
        abtnCancelBa6.topAnchor.constraint(equalTo: abtnOkieBa6.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocBa6.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocBa6)
        viewDiemcuocBa6.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocBa6)
        viewDiemcuocBa6.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieBa6,abtnCancelBa6)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocBa6.addTarget(self, action: #selector(ViewController.asldDiemcuocBa6), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieBa6.addTarget(self, action: #selector(ViewController.ActionforBtnOkieBa6), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô BA 6, TRỞ VỀ BÀN
        abtnCancelBa6.addTarget(self, action: #selector(ViewController.ActionforBtnHuyBa6), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô BA 6:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocBa6(){
        sldDiemcuocBa6.maximumValue = 1 * Float(diem)
        SoDiemCuocBa6 = Int(sldDiemcuocBa6.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocBa6.value = 0
                self.SoDiemCuocBa6 = Int(self.sldDiemcuocBa6.value)
                self.lblDiemCuocBa6.text = String("Đặt cược ô Ba số 6: $\(self.SoDiemCuocBa6)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocBa6.text = String("Đặt cược ô Ba số 6: $\(SoDiemCuocBa6)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieBa6(){
        SoDiemCuocBa6 = Int(sldDiemcuocBa6.value)
        viewDiemcuocBa6.isHidden = true
        if SoDiemCuocBa6 != 0 && SoDiemCuocBa6 <= diem{
            viewDaCuocBa6.isHidden = false
            lblSoDiemDaCuocBa6.text = String("$\(Int((sldDiemcuocBa6.value)))")
        }else{
            if SoDiemCuocBa6 != 0 && SoDiemCuocBa6 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocBa6.value = Float(self.diem)
                    self.SoDiemCuocBa6 = Int(self.sldDiemcuocBa6.value)
                    self.lblDiemCuocBa6.text = String("Đặt cược ô Ba số 6: $\(self.SoDiemCuocBa6)")
                    self.lblSoDiemDaCuocBa6.text = String("$\(Int((self.sldDiemcuocBa6.value)))")
                    self.viewDaCuocBa6.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyBa6(){
        sldDiemcuocBa6.value = 0
        SoDiemCuocBa6 = Int(sldDiemcuocBa6.value)
        lblSoDiemDaCuocBa6.text = String("$\(Int((sldDiemcuocBa6.value)))")
        viewDaCuocBa6.isHidden = true
        viewDiemcuocBa6.isHidden = true
    }
    
    //B: Ô BA  THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocBa6:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocBa6:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Ba 6:
    func DiemDaDatCuocOBa6(){
        viewBa6.addSubview(viewDaCuocBa6)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô BA 6(LABEL ĐIỂM CƯỢC)
        viewDaCuocBa6.addSubview(lblSoDiemDaCuocBa6)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô BA 6:
        viewBa6.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocBa6)
        viewBa6.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocBa6)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocBa6.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocBa6)
        //2: CHIỀU NGANG:
        viewDaCuocBa6.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocBa6)
    }
//MARK 18: PHẦN 1: SET UP Ô ĐIỂM 4:
    //A: Ô ĐIỂM 4 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuoc4:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuoc4:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuoc4:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkie4:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancel4:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm 4:
    //2.1: Hàm tổng quát
    func DatCuocO4(){
        viewDiemcuoc4.isHidden = false
        setupViewCuoc4()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Điểm 4
    func setupViewCuoc4(){
        view.addSubview(viewDiemcuoc4)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM 4(SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuoc4.addSubview(sldDiemcuoc4)
        viewDiemcuoc4.addSubview(abtnOkie4)
        viewDiemcuoc4.addSubview(abtnCancel4)
        viewDiemcuoc4.addSubview(lblDiemCuoc4)
        lblDiemCuoc4.text = String("Đặt cược ô số 4: $\(Int(sldDiemcuoc4.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô ĐIỂM 4:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuoc4)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuoc4)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuoc4.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuoc4,sldDiemcuoc4)
        abtnOkie4.topAnchor.constraint(equalTo: sldDiemcuoc4.bottomAnchor).isActive = true
        abtnCancel4.topAnchor.constraint(equalTo: abtnOkie4.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuoc4.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuoc4)
        viewDiemcuoc4.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuoc4)
        viewDiemcuoc4.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkie4,abtnCancel4)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuoc4.addTarget(self, action: #selector(ViewController.asldDiemcuoc4), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkie4.addTarget(self, action: #selector(ViewController.ActionforBtnOkie4), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM 4, TRỞ VỀ BÀN
        abtnCancel4.addTarget(self, action: #selector(ViewController.ActionforBtnHuy4), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô ĐIỂM 4:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuoc4(){
        sldDiemcuoc4.maximumValue = 1 * Float(diem)
        SoDiemCuoc4 = Int(sldDiemcuoc4.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuoc4.value = 0
                self.SoDiemCuoc4 = Int(self.sldDiemcuoc4.value)
                self.lblDiemCuoc4.text = String("Đặt cược ô số 4: $\(self.SoDiemCuoc4)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuoc4.text = String("Đặt cược ô số 4: $\(SoDiemCuoc4)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkie4(){
        SoDiemCuoc4 = Int(sldDiemcuoc4.value)
        viewDiemcuoc4.isHidden = true
        if SoDiemCuoc4 != 0 && SoDiemCuoc4 <= diem{
            viewDaCuoc4.isHidden = false
            lblSoDiemDaCuoc4.text = String("$\(Int((sldDiemcuoc4.value)))")
        }else{
            if SoDiemCuoc4 != 0 && SoDiemCuoc4 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuoc4.value = Float(self.diem)
                    self.SoDiemCuoc4 = Int(self.sldDiemcuoc4.value)
                    self.lblDiemCuoc4.text = String("Đặt cược ô số 4: $\(self.SoDiemCuoc4)")
                    self.lblSoDiemDaCuoc4.text = String("$\(Int((self.sldDiemcuoc4.value)))")
                    self.viewDaCuoc4.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuy4(){
        sldDiemcuoc4.value = 0
        SoDiemCuoc4 = Int(sldDiemcuoc4.value)
        lblSoDiemDaCuoc4.text = String("$\(Int((sldDiemcuoc4.value)))")
        viewDaCuoc4.isHidden = true
        viewDiemcuoc4.isHidden = true
    }
    
    //B: Ô SỐ 4 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuoc4:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuoc4:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Số 4:
    func DiemDaDatCuocO4(){
        viewDiem4.addSubview(viewDaCuoc4)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô SỐ 4 (LABEL ĐIỂM CƯỢC)
        viewDaCuoc4.addSubview(lblSoDiemDaCuoc4)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ 4:
        viewDiem4.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuoc4)
        viewDiem4.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuoc4)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuoc4.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuoc4)
        //2: CHIỀU NGANG:
        viewDaCuoc4.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuoc4)
    }
//MARK 19: PHẦN 1: SET UP Ô ĐIỂM 5:
    //A: Ô ĐIỂM 5 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuoc5:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuoc5:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuoc5:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkie5:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancel5:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm 5:
    //2.1: Hàm tổng quát
    func DatCuocO5(){
        viewDiemcuoc5.isHidden = false
        setupViewCuoc5()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Điểm 5
    func setupViewCuoc5(){
        view.addSubview(viewDiemcuoc5)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM 4(SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuoc5.addSubview(sldDiemcuoc5)
        viewDiemcuoc5.addSubview(abtnOkie5)
        viewDiemcuoc5.addSubview(abtnCancel5)
        viewDiemcuoc5.addSubview(lblDiemCuoc5)
        lblDiemCuoc5.text = String("Đặt cược ô số 5: $\(Int(sldDiemcuoc5.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô ĐIỂM 5:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuoc5)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuoc5)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuoc5.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuoc5,sldDiemcuoc5)
        abtnOkie5.topAnchor.constraint(equalTo: sldDiemcuoc5.bottomAnchor).isActive = true
        abtnCancel5.topAnchor.constraint(equalTo: abtnOkie5.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuoc5.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuoc5)
        viewDiemcuoc5.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuoc5)
        viewDiemcuoc5.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkie5,abtnCancel5)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuoc5.addTarget(self, action: #selector(ViewController.asldDiemcuoc5), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkie5.addTarget(self, action: #selector(ViewController.ActionforBtnOkie5), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM 5, TRỞ VỀ BÀN
        abtnCancel5.addTarget(self, action: #selector(ViewController.ActionforBtnHuy5), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô ĐIỂM 5:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuoc5(){
        sldDiemcuoc5.maximumValue = 1 * Float(diem)
        SoDiemCuoc5 = Int(sldDiemcuoc5.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuoc5.value = 0
                self.SoDiemCuoc5 = Int(self.sldDiemcuoc5.value)
                self.lblDiemCuoc5.text = String("Đặt cược ô số 5: $\(self.SoDiemCuoc5)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuoc5.text = String("Đặt cược ô số 5: $\(SoDiemCuoc5)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkie5(){
        SoDiemCuoc5 = Int(sldDiemcuoc5.value)
        viewDiemcuoc5.isHidden = true
        if SoDiemCuoc5 != 0 && SoDiemCuoc5 <= diem{
            viewDaCuoc5.isHidden = false
            lblSoDiemDaCuoc5.text = String("$\(Int((sldDiemcuoc5.value)))")
        }else{
            if SoDiemCuoc5 != 0 && SoDiemCuoc5 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuoc5.value = Float(self.diem)
                    self.SoDiemCuoc5 = Int(self.sldDiemcuoc5.value)
                    self.lblDiemCuoc5.text = String("Đặt cược ô số 5: $\(self.SoDiemCuoc5)")
                    self.lblSoDiemDaCuoc5.text = String("$\(Int((self.sldDiemcuoc5.value)))")
                    self.viewDaCuoc5.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuy5(){
        sldDiemcuoc5.value = 0
        SoDiemCuoc5 = Int(sldDiemcuoc5.value)
        lblSoDiemDaCuoc5.text = String("$\(Int((sldDiemcuoc5.value)))")
        viewDaCuoc5.isHidden = true
        viewDiemcuoc5.isHidden = true
    }
    
    //B: Ô SỐ 5 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuoc5:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuoc5:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Số 5:
    func DiemDaDatCuocO5(){
        viewDiem5.addSubview(viewDaCuoc5)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô SỐ 5 (LABEL ĐIỂM CƯỢC)
        viewDaCuoc5.addSubview(lblSoDiemDaCuoc5)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ 5:
        viewDiem5.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuoc5)
        viewDiem5.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuoc5)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuoc5.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuoc5)
        //2: CHIỀU NGANG:
        viewDaCuoc5.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuoc5)
    }
//MARK 20: PHẦN 1: SET UP Ô ĐIỂM 6:
    //A: Ô ĐIỂM 6 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuoc6:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuoc6:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuoc6:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkie6:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancel6:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm 6:
    //2.1: Hàm tổng quát
    func DatCuocO6(){
        viewDiemcuoc6.isHidden = false
        setupViewCuoc6()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Điểm 6
    func setupViewCuoc6(){
        view.addSubview(viewDiemcuoc6)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM 4(SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuoc6.addSubview(sldDiemcuoc6)
        viewDiemcuoc6.addSubview(abtnOkie6)
        viewDiemcuoc6.addSubview(abtnCancel6)
        viewDiemcuoc6.addSubview(lblDiemCuoc6)
        lblDiemCuoc6.text = String("Đặt cược ô số 6: $\(Int(sldDiemcuoc6.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô ĐIỂM 6:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuoc6)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuoc6)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuoc6.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuoc6,sldDiemcuoc6)
        abtnOkie6.topAnchor.constraint(equalTo: sldDiemcuoc6.bottomAnchor).isActive = true
        abtnCancel6.topAnchor.constraint(equalTo: abtnOkie6.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuoc6.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuoc6)
        viewDiemcuoc6.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuoc6)
        viewDiemcuoc6.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkie6,abtnCancel6)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuoc6.addTarget(self, action: #selector(ViewController.asldDiemcuoc6), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkie6.addTarget(self, action: #selector(ViewController.ActionforBtnOkie6), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM 6, TRỞ VỀ BÀN
        abtnCancel6.addTarget(self, action: #selector(ViewController.ActionforBtnHuy6), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô ĐIỂM 6:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuoc6(){
        sldDiemcuoc6.maximumValue = 1 * Float(diem)
        SoDiemCuoc6 = Int(sldDiemcuoc6.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuoc6.value = 0
                self.SoDiemCuoc6 = Int(self.sldDiemcuoc6.value)
                self.lblDiemCuoc6.text = String("Đặt cược ô số 6: $\(self.SoDiemCuoc6)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuoc6.text = String("Đặt cược ô số 6: $\(SoDiemCuoc6)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkie6(){
        SoDiemCuoc6 = Int(sldDiemcuoc6.value)
        viewDiemcuoc6.isHidden = true
        if SoDiemCuoc6 != 0 && SoDiemCuoc6 <= diem{
            viewDaCuoc6.isHidden = false
            lblSoDiemDaCuoc6.text = String("$\(Int((sldDiemcuoc6.value)))")
        }else{
            if SoDiemCuoc6 != 0 && SoDiemCuoc6 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuoc6.value = Float(self.diem)
                    self.SoDiemCuoc6 = Int(self.sldDiemcuoc6.value)
                    self.lblDiemCuoc6.text = String("Đặt cược ô số 6: $\(self.SoDiemCuoc6)")
                    self.lblSoDiemDaCuoc6.text = String("$\(Int((self.sldDiemcuoc6.value)))")
                    self.viewDaCuoc6.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuy6(){
        sldDiemcuoc6.value = 0
        SoDiemCuoc6 = Int(sldDiemcuoc6.value)
        lblSoDiemDaCuoc6.text = String("$\(Int((sldDiemcuoc6.value)))")
        viewDaCuoc6.isHidden = true
        viewDiemcuoc6.isHidden = true
    }
    
    //B: Ô SỐ 6 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuoc6:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuoc6:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Số 6:
    func DiemDaDatCuocO6(){
        viewDiem6.addSubview(viewDaCuoc6)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô SỐ 6 (LABEL ĐIỂM CƯỢC)
        viewDaCuoc6.addSubview(lblSoDiemDaCuoc6)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ 6:
        viewDiem6.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuoc6)
        viewDiem6.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuoc6)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuoc6.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuoc6)
        //2: CHIỀU NGANG:
        viewDaCuoc6.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuoc6)
    }
//MARK 21: PHẦN 1: SET UP Ô ĐIỂM 7:
    //A: Ô ĐIỂM 7 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuoc7:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuoc7:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuoc7:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkie7:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancel7:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm 7:
    //2.1: Hàm tổng quát
    func DatCuocO7(){
        viewDiemcuoc7.isHidden = false
        setupViewCuoc7()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Điểm 7
    func setupViewCuoc7(){
        view.addSubview(viewDiemcuoc7)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM 7(SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuoc7.addSubview(sldDiemcuoc7)
        viewDiemcuoc7.addSubview(abtnOkie7)
        viewDiemcuoc7.addSubview(abtnCancel7)
        viewDiemcuoc7.addSubview(lblDiemCuoc7)
        lblDiemCuoc7.text = String("Đặt cược ô số 7: $\(Int(sldDiemcuoc7.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô ĐIỂM 7:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuoc7)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuoc7)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuoc7.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuoc7,sldDiemcuoc7)
        abtnOkie7.topAnchor.constraint(equalTo: sldDiemcuoc7.bottomAnchor).isActive = true
        abtnCancel7.topAnchor.constraint(equalTo: abtnOkie7.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuoc7.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuoc7)
        viewDiemcuoc7.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuoc7)
        viewDiemcuoc7.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkie7,abtnCancel7)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuoc7.addTarget(self, action: #selector(ViewController.asldDiemcuoc7), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkie7.addTarget(self, action: #selector(ViewController.ActionforBtnOkie7), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM 7, TRỞ VỀ BÀN
        abtnCancel7.addTarget(self, action: #selector(ViewController.ActionforBtnHuy7), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô ĐIỂM 7:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuoc7(){
        sldDiemcuoc7.maximumValue = 1 * Float(diem)
        SoDiemCuoc7 = Int(sldDiemcuoc7.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuoc7.value = 0
                self.SoDiemCuoc7 = Int(self.sldDiemcuoc7.value)
                self.lblDiemCuoc7.text = String("Đặt cược ô số 7: $\(self.SoDiemCuoc7)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuoc7.text = String("Đặt cược ô số 7: $\(SoDiemCuoc7)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkie7(){
        SoDiemCuoc7 = Int(sldDiemcuoc7.value)
        viewDiemcuoc7.isHidden = true
        if SoDiemCuoc7 != 0 && SoDiemCuoc7 <= diem{
            viewDaCuoc7.isHidden = false
            lblSoDiemDaCuoc7.text = String("$\(Int((sldDiemcuoc7.value)))")
        }else{
            if SoDiemCuoc7 != 0 && SoDiemCuoc7 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuoc7.value = Float(self.diem)
                    self.SoDiemCuoc7 = Int(self.sldDiemcuoc7.value)
                    self.lblDiemCuoc7.text = String("Đặt cược ô số 7: $\(self.SoDiemCuoc7)")
                    self.lblSoDiemDaCuoc7.text = String("$\(Int((self.sldDiemcuoc7.value)))")
                    self.viewDaCuoc7.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuy7(){
        sldDiemcuoc7.value = 0
        SoDiemCuoc7 = Int(sldDiemcuoc7.value)
        lblSoDiemDaCuoc7.text = String("$\(Int((sldDiemcuoc7.value)))")
        viewDaCuoc7.isHidden = true
        viewDiemcuoc7.isHidden = true
    }
    
    //B: Ô SỐ 7 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuoc7:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuoc7:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Số 7:
    func DiemDaDatCuocO7(){
        viewDiem7.addSubview(viewDaCuoc7)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô SỐ 7 (LABEL ĐIỂM CƯỢC)
        viewDaCuoc7.addSubview(lblSoDiemDaCuoc7)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ 7:
        viewDiem7.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuoc7)
        viewDiem7.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuoc7)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuoc7.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuoc7)
        //2: CHIỀU NGANG:
        viewDaCuoc7.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuoc7)
    }
//MARK 22: PHẦN 1: SET UP Ô ĐIỂM 8:
    //A: Ô ĐIỂM 8 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuoc8:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuoc8:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuoc8:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkie8:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancel8:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm 8:
    //2.1: Hàm tổng quát
    func DatCuocO8(){
        viewDiemcuoc8.isHidden = false
        setupViewCuoc8()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Điểm 8
    func setupViewCuoc8(){
        view.addSubview(viewDiemcuoc8)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM 8(SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuoc8.addSubview(sldDiemcuoc8)
        viewDiemcuoc8.addSubview(abtnOkie8)
        viewDiemcuoc8.addSubview(abtnCancel8)
        viewDiemcuoc8.addSubview(lblDiemCuoc8)
        lblDiemCuoc8.text = String("Đặt cược ô số 8: $\(Int(sldDiemcuoc8.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô ĐIỂM 8:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuoc8)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuoc8)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuoc8.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuoc8,sldDiemcuoc8)
        abtnOkie8.topAnchor.constraint(equalTo: sldDiemcuoc8.bottomAnchor).isActive = true
        abtnCancel8.topAnchor.constraint(equalTo: abtnOkie8.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuoc8.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuoc8)
        viewDiemcuoc8.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuoc8)
        viewDiemcuoc8.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkie8,abtnCancel8)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuoc8.addTarget(self, action: #selector(ViewController.asldDiemcuoc8), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkie8.addTarget(self, action: #selector(ViewController.ActionforBtnOkie8), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM 7, TRỞ VỀ BÀN
        abtnCancel8.addTarget(self, action: #selector(ViewController.ActionforBtnHuy8), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô ĐIỂM 8:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuoc8(){
        sldDiemcuoc8.maximumValue = 1 * Float(diem)
        SoDiemCuoc8 = Int(sldDiemcuoc8.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuoc8.value = 0
                self.SoDiemCuoc8 = Int(self.sldDiemcuoc8.value)
                self.lblDiemCuoc8.text = String("Đặt cược ô số 8: $\(self.SoDiemCuoc8)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuoc8.text = String("Đặt cược ô số 8: $\(SoDiemCuoc8)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkie8(){
        SoDiemCuoc8 = Int(sldDiemcuoc8.value)
        viewDiemcuoc8.isHidden = true
        if SoDiemCuoc8 != 0 && SoDiemCuoc8 <= diem{
            viewDaCuoc8.isHidden = false
            lblSoDiemDaCuoc8.text = String("$\(Int((sldDiemcuoc8.value)))")
        }else{
            if SoDiemCuoc8 != 0 && SoDiemCuoc8 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuoc8.value = Float(self.diem)
                    self.SoDiemCuoc8 = Int(self.sldDiemcuoc8.value)
                    self.lblDiemCuoc8.text = String("Đặt cược ô số 8: $\(self.SoDiemCuoc8)")
                    self.lblSoDiemDaCuoc8.text = String("$\(Int((self.sldDiemcuoc8.value)))")
                    self.viewDaCuoc8.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuy8(){
        sldDiemcuoc8.value = 0
        SoDiemCuoc8 = Int(sldDiemcuoc8.value)
        lblSoDiemDaCuoc8.text = String("$\(Int((sldDiemcuoc8.value)))")
        viewDaCuoc8.isHidden = true
        viewDiemcuoc8.isHidden = true
    }
    
    //B: Ô SỐ 8 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuoc8:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuoc8:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Số 8:
    func DiemDaDatCuocO8(){
        viewDiem8.addSubview(viewDaCuoc8)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô SỐ 8 (LABEL ĐIỂM CƯỢC)
        viewDaCuoc8.addSubview(lblSoDiemDaCuoc8)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ 8:
        viewDiem8.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuoc8)
        viewDiem8.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuoc8)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuoc8.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuoc8)
        //2: CHIỀU NGANG:
        viewDaCuoc8.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuoc8)
    }
//MARK 23: PHẦN 1: SET UP Ô ĐIỂM 9:
    //A: Ô ĐIỂM 9 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuoc9:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuoc9:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuoc9:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkie9:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancel9:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm 9:
    //2.1: Hàm tổng quát
    func DatCuocO9(){
        viewDiemcuoc9.isHidden = false
        setupViewCuoc9()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Điểm 9
    func setupViewCuoc9(){
        view.addSubview(viewDiemcuoc9)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM 8(SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuoc9.addSubview(sldDiemcuoc9)
        viewDiemcuoc9.addSubview(abtnOkie9)
        viewDiemcuoc9.addSubview(abtnCancel9)
        viewDiemcuoc9.addSubview(lblDiemCuoc9)
        lblDiemCuoc9.text = String("Đặt cược ô số 9: $\(Int(sldDiemcuoc9.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô ĐIỂM 9:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuoc9)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuoc9)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuoc9.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuoc9,sldDiemcuoc9)
        abtnOkie9.topAnchor.constraint(equalTo: sldDiemcuoc9.bottomAnchor).isActive = true
        abtnCancel9.topAnchor.constraint(equalTo: abtnOkie9.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuoc9.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuoc9)
        viewDiemcuoc9.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuoc9)
        viewDiemcuoc9.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkie9,abtnCancel9)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuoc9.addTarget(self, action: #selector(ViewController.asldDiemcuoc9), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkie9.addTarget(self, action: #selector(ViewController.ActionforBtnOkie9), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM 9, TRỞ VỀ BÀN
        abtnCancel9.addTarget(self, action: #selector(ViewController.ActionforBtnHuy9), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô ĐIỂM 9:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuoc9(){
        sldDiemcuoc9.maximumValue = 1 * Float(diem)
        SoDiemCuoc9 = Int(sldDiemcuoc9.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuoc9.value = 0
                self.SoDiemCuoc9 = Int(self.sldDiemcuoc9.value)
                self.lblDiemCuoc9.text = String("Đặt cược ô số 9: $\(self.SoDiemCuoc9)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuoc9.text = String("Đặt cược ô số 9: $\(SoDiemCuoc9)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkie9(){
        SoDiemCuoc9 = Int(sldDiemcuoc9.value)
        viewDiemcuoc9.isHidden = true
        if SoDiemCuoc9 != 0 && SoDiemCuoc9 <= diem{
            viewDaCuoc9.isHidden = false
            lblSoDiemDaCuoc9.text = String("$\(Int((sldDiemcuoc9.value)))")
        }else{
            if SoDiemCuoc9 != 0 && SoDiemCuoc9 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuoc9.value = Float(self.diem)
                    self.SoDiemCuoc9 = Int(self.sldDiemcuoc9.value)
                    self.lblDiemCuoc9.text = String("Đặt cược ô số 9: $\(self.SoDiemCuoc9)")
                    self.lblSoDiemDaCuoc9.text = String("$\(Int((self.sldDiemcuoc9.value)))")
                    self.viewDaCuoc9.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuy9(){
        sldDiemcuoc9.value = 0
        SoDiemCuoc9 = Int(sldDiemcuoc9.value)
        lblSoDiemDaCuoc9.text = String("$\(Int((sldDiemcuoc9.value)))")
        viewDaCuoc9.isHidden = true
        viewDiemcuoc9.isHidden = true
    }
    
    //B: Ô SỐ 9 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuoc9:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuoc9:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Số 9:
    func DiemDaDatCuocO9(){
        viewDiem9.addSubview(viewDaCuoc9)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô SỐ 9 (LABEL ĐIỂM CƯỢC)
        viewDaCuoc9.addSubview(lblSoDiemDaCuoc9)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ 9:
        viewDiem9.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuoc9)
        viewDiem9.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuoc9)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuoc9.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuoc9)
        //2: CHIỀU NGANG:
        viewDaCuoc9.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuoc9)
    }
//MARK 24: PHẦN 1: SET UP Ô ĐIỂM 10:
    //A: Ô ĐIỂM 10 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuoc10:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuoc10:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuoc10:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkie10:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancel10:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm 10:
    //2.1: Hàm tổng quát
    func DatCuocO10(){
        viewDiemcuoc10.isHidden = false
        setupViewCuoc10()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Điểm 10
    func setupViewCuoc10(){
        view.addSubview(viewDiemcuoc10)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM 8(SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuoc10.addSubview(sldDiemcuoc10)
        viewDiemcuoc10.addSubview(abtnOkie10)
        viewDiemcuoc10.addSubview(abtnCancel10)
        viewDiemcuoc10.addSubview(lblDiemCuoc10)
        lblDiemCuoc10.text = String("Đặt cược ô số 10: $\(Int(sldDiemcuoc10.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô ĐIỂM 10:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuoc10)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuoc10)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuoc10.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuoc10,sldDiemcuoc10)
        abtnOkie10.topAnchor.constraint(equalTo: sldDiemcuoc10.bottomAnchor).isActive = true
        abtnCancel10.topAnchor.constraint(equalTo: abtnOkie10.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuoc10.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuoc10)
        viewDiemcuoc10.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuoc10)
        viewDiemcuoc10.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkie10,abtnCancel10)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuoc10.addTarget(self, action: #selector(ViewController.asldDiemcuoc10), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkie10.addTarget(self, action: #selector(ViewController.ActionforBtnOkie10), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM 10, TRỞ VỀ BÀN
        abtnCancel10.addTarget(self, action: #selector(ViewController.ActionforBtnHuy10), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô ĐIỂM 10:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuoc10(){
        sldDiemcuoc10.maximumValue = 1 * Float(diem)
        SoDiemCuoc10 = Int(sldDiemcuoc10.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuoc10.value = 0
                self.SoDiemCuoc10 = Int(self.sldDiemcuoc10.value)
                self.lblDiemCuoc10.text = String("Đặt cược ô số 10: $\(self.SoDiemCuoc10)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuoc10.text = String("Đặt cược ô số 10: $\(SoDiemCuoc10)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkie10(){
        SoDiemCuoc10 = Int(sldDiemcuoc10.value)
        viewDiemcuoc10.isHidden = true
        if SoDiemCuoc10 != 0 && SoDiemCuoc10 <= diem{
            viewDaCuoc10.isHidden = false
            lblSoDiemDaCuoc10.text = String("$\(Int((sldDiemcuoc10.value)))")
        }else{
            if SoDiemCuoc10 != 0 && SoDiemCuoc10 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuoc10.value = Float(self.diem)
                    self.SoDiemCuoc10 = Int(self.sldDiemcuoc10.value)
                    self.lblDiemCuoc10.text = String("Đặt cược ô số 10: $\(self.SoDiemCuoc10)")
                    self.lblSoDiemDaCuoc10.text = String("$\(Int((self.sldDiemcuoc10.value)))")
                    self.viewDaCuoc10.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuy10(){
        sldDiemcuoc10.value = 0
        SoDiemCuoc10 = Int(sldDiemcuoc10.value)
        lblSoDiemDaCuoc10.text = String("$\(Int((sldDiemcuoc10.value)))")
        viewDaCuoc10.isHidden = true
        viewDiemcuoc10.isHidden = true
    }
    
    //B: Ô SỐ 10 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuoc10:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuoc10:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Số 10:
    func DiemDaDatCuocO10(){
        viewDiem10.addSubview(viewDaCuoc10)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô SỐ 10 (LABEL ĐIỂM CƯỢC)
        viewDaCuoc10.addSubview(lblSoDiemDaCuoc10)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ 10:
        viewDiem10.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuoc10)
        viewDiem10.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuoc10)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuoc10.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuoc10)
        //2: CHIỀU NGANG:
        viewDaCuoc10.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuoc10)
    }
//MARK 25: PHẦN 1: SET UP Ô ĐIỂM 11:
    //A: Ô ĐIỂM 11 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuoc11:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuoc11:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuoc11:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkie11:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancel11:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm 11:
    //2.1: Hàm tổng quát
    func DatCuocO11(){
        viewDiemcuoc11.isHidden = false
        setupViewCuoc11()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Điểm 11
    func setupViewCuoc11(){
        view.addSubview(viewDiemcuoc11)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM 8(SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuoc11.addSubview(sldDiemcuoc11)
        viewDiemcuoc11.addSubview(abtnOkie11)
        viewDiemcuoc11.addSubview(abtnCancel11)
        viewDiemcuoc11.addSubview(lblDiemCuoc11)
        lblDiemCuoc11.text = String("Đặt cược ô số 11: $\(Int(sldDiemcuoc11.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô ĐIỂM 11:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuoc11)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuoc11)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuoc11.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuoc11,sldDiemcuoc11)
        abtnOkie11.topAnchor.constraint(equalTo: sldDiemcuoc11.bottomAnchor).isActive = true
        abtnCancel11.topAnchor.constraint(equalTo: abtnOkie11.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuoc11.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuoc11)
        viewDiemcuoc11.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuoc11)
        viewDiemcuoc11.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkie11,abtnCancel11)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuoc11.addTarget(self, action: #selector(ViewController.asldDiemcuoc11), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkie11.addTarget(self, action: #selector(ViewController.ActionforBtnOkie11), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM 11, TRỞ VỀ BÀN
        abtnCancel11.addTarget(self, action: #selector(ViewController.ActionforBtnHuy11), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô ĐIỂM 11:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuoc11(){
        sldDiemcuoc11.maximumValue = 1 * Float(diem)
        SoDiemCuoc11 = Int(sldDiemcuoc11.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuoc11.value = 0
                self.SoDiemCuoc11 = Int(self.sldDiemcuoc11.value)
                self.lblDiemCuoc11.text = String("Đặt cược ô số 11: $\(self.SoDiemCuoc11)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuoc11.text = String("Đặt cược ô số 11: $\(SoDiemCuoc11)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkie11(){
        SoDiemCuoc11 = Int(sldDiemcuoc11.value)
        viewDiemcuoc11.isHidden = true
        if SoDiemCuoc11 != 0 && SoDiemCuoc11 <= diem{
            viewDaCuoc11.isHidden = false
            lblSoDiemDaCuoc11.text = String("$\(Int((sldDiemcuoc11.value)))")
        }else{
            if SoDiemCuoc11 != 0 && SoDiemCuoc11 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuoc11.value = Float(self.diem)
                    self.SoDiemCuoc11 = Int(self.sldDiemcuoc11.value)
                    self.lblDiemCuoc11.text = String("Đặt cược ô số 11: $\(self.SoDiemCuoc11)")
                    self.lblSoDiemDaCuoc11.text = String("$\(Int((self.sldDiemcuoc11.value)))")
                    self.viewDaCuoc11.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuy11(){
        sldDiemcuoc11.value = 0
        SoDiemCuoc11 = Int(sldDiemcuoc11.value)
        lblSoDiemDaCuoc11.text = String("$\(Int((sldDiemcuoc11.value)))")
        viewDaCuoc11.isHidden = true
        viewDiemcuoc11.isHidden = true
    }
    
    //B: Ô SỐ 11 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuoc11:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuoc11:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Số 11:
    func DiemDaDatCuocO11(){
        viewDiem11.addSubview(viewDaCuoc11)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô SỐ 11 (LABEL ĐIỂM CƯỢC)
        viewDaCuoc11.addSubview(lblSoDiemDaCuoc11)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ 11:
        viewDiem11.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuoc11)
        viewDiem11.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuoc11)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuoc11.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuoc11)
        //2: CHIỀU NGANG:
        viewDaCuoc11.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuoc11)
    }
//MARK 26: PHẦN 1: SET UP Ô ĐIỂM 12:
    //A: Ô ĐIỂM 12 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuoc12:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuoc12:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuoc12:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkie12:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancel12:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm 12:
    //2.1: Hàm tổng quát
    func DatCuocO12(){
        viewDiemcuoc12.isHidden = false
        setupViewCuoc12()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Điểm 12
    func setupViewCuoc12(){
        view.addSubview(viewDiemcuoc12)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM 12 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuoc12.addSubview(sldDiemcuoc12)
        viewDiemcuoc12.addSubview(abtnOkie12)
        viewDiemcuoc12.addSubview(abtnCancel12)
        viewDiemcuoc12.addSubview(lblDiemCuoc12)
        lblDiemCuoc12.text = String("Đặt cược ô số 12: $\(Int(sldDiemcuoc12.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô ĐIỂM 12:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuoc12)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuoc12)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuoc12.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuoc12,sldDiemcuoc12)
        abtnOkie12.topAnchor.constraint(equalTo: sldDiemcuoc12.bottomAnchor).isActive = true
        abtnCancel12.topAnchor.constraint(equalTo: abtnOkie12.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuoc12.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuoc12)
        viewDiemcuoc12.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuoc12)
        viewDiemcuoc12.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkie12,abtnCancel12)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuoc12.addTarget(self, action: #selector(ViewController.asldDiemcuoc12), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkie12.addTarget(self, action: #selector(ViewController.ActionforBtnOkie12), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM 12, TRỞ VỀ BÀN
        abtnCancel12.addTarget(self, action: #selector(ViewController.ActionforBtnHuy12), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô ĐIỂM 12:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuoc12(){
        sldDiemcuoc12.maximumValue = 1 * Float(diem)
        SoDiemCuoc12 = Int(sldDiemcuoc12.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuoc12.value = 0
                self.SoDiemCuoc12 = Int(self.sldDiemcuoc12.value)
                self.lblDiemCuoc12.text = String("Đặt cược ô số 12: $\(self.SoDiemCuoc12)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuoc12.text = String("Đặt cược ô số 12: $\(SoDiemCuoc12)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkie12(){
        SoDiemCuoc12 = Int(sldDiemcuoc12.value)
        viewDiemcuoc12.isHidden = true
        if SoDiemCuoc12 != 0 && SoDiemCuoc12 <= diem{
            viewDaCuoc12.isHidden = false
            lblSoDiemDaCuoc12.text = String("$\(Int((sldDiemcuoc12.value)))")
        }else{
            if SoDiemCuoc12 != 0 && SoDiemCuoc12 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuoc12.value = Float(self.diem)
                    self.SoDiemCuoc12 = Int(self.sldDiemcuoc12.value)
                    self.lblDiemCuoc12.text = String("Đặt cược ô số 12: $\(self.SoDiemCuoc12)")
                    self.lblSoDiemDaCuoc12.text = String("$\(Int((self.sldDiemcuoc12.value)))")
                    self.viewDaCuoc12.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuy12(){
        sldDiemcuoc12.value = 0
        SoDiemCuoc12 = Int(sldDiemcuoc12.value)
        lblSoDiemDaCuoc12.text = String("$\(Int((sldDiemcuoc12.value)))")
        viewDaCuoc12.isHidden = true
        viewDiemcuoc12.isHidden = true
    }
    
    //B: Ô SỐ 12 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuoc12:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuoc12:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Số 12:
    func DiemDaDatCuocO12(){
        viewDiem12.addSubview(viewDaCuoc12)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô SỐ 12 (LABEL ĐIỂM CƯỢC)
        viewDaCuoc12.addSubview(lblSoDiemDaCuoc12)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ 12:
        viewDiem12.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuoc12)
        viewDiem12.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuoc12)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuoc12.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuoc12)
        //2: CHIỀU NGANG:
        viewDaCuoc12.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuoc12)
    }
//MARK 27: PHẦN 1: SET UP Ô ĐIỂM 13:
    //A: Ô ĐIỂM 13 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuoc13:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuoc13:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuoc13:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkie13:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancel13:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm 13:
    //2.1: Hàm tổng quát
    func DatCuocO13(){
        viewDiemcuoc13.isHidden = false
        setupViewCuoc13()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Điểm 13
    func setupViewCuoc13(){
        view.addSubview(viewDiemcuoc13)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM 13 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuoc13.addSubview(sldDiemcuoc13)
        viewDiemcuoc13.addSubview(abtnOkie13)
        viewDiemcuoc13.addSubview(abtnCancel13)
        viewDiemcuoc13.addSubview(lblDiemCuoc13)
        lblDiemCuoc13.text = String("Đặt cược ô số 13: $\(Int(sldDiemcuoc13.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô ĐIỂM 13:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuoc13)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuoc13)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuoc13.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuoc13,sldDiemcuoc13)
        abtnOkie13.topAnchor.constraint(equalTo: sldDiemcuoc13.bottomAnchor).isActive = true
        abtnCancel13.topAnchor.constraint(equalTo: abtnOkie13.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuoc13.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuoc13)
        viewDiemcuoc13.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuoc13)
        viewDiemcuoc13.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkie13,abtnCancel13)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuoc13.addTarget(self, action: #selector(ViewController.asldDiemcuoc13), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkie13.addTarget(self, action: #selector(ViewController.ActionforBtnOkie13), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM 13, TRỞ VỀ BÀN
        abtnCancel13.addTarget(self, action: #selector(ViewController.ActionforBtnHuy13), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô ĐIỂM 13:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuoc13(){
        sldDiemcuoc13.maximumValue = 1 * Float(diem)
        SoDiemCuoc13 = Int(sldDiemcuoc13.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuoc13.value = 0
                self.SoDiemCuoc13 = Int(self.sldDiemcuoc13.value)
                self.lblDiemCuoc13.text = String("Đặt cược ô số 13: $\(self.SoDiemCuoc13)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuoc13.text = String("Đặt cược ô số 13: $\(SoDiemCuoc13)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkie13(){
        SoDiemCuoc13 = Int(sldDiemcuoc13.value)
        viewDiemcuoc13.isHidden = true
        if SoDiemCuoc13 != 0 && SoDiemCuoc13 <= diem{
            viewDaCuoc13.isHidden = false
            lblSoDiemDaCuoc13.text = String("$\(Int((sldDiemcuoc13.value)))")
        }else{
            if SoDiemCuoc13 != 0 && SoDiemCuoc13 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuoc13.value = Float(self.diem)
                    self.SoDiemCuoc13 = Int(self.sldDiemcuoc13.value)
                    self.lblDiemCuoc13.text = String("Đặt cược ô số 13: $\(self.SoDiemCuoc13)")
                    self.lblSoDiemDaCuoc13.text = String("$\(Int((self.sldDiemcuoc13.value)))")
                    self.viewDaCuoc13.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuy13(){
        sldDiemcuoc13.value = 0
        SoDiemCuoc13 = Int(sldDiemcuoc13.value)
        lblSoDiemDaCuoc13.text = String("$\(Int((sldDiemcuoc13.value)))")
        viewDaCuoc13.isHidden = true
        viewDiemcuoc13.isHidden = true
    }
    
    //B: Ô SỐ 13 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuoc13:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuoc13:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Số 13:
    func DiemDaDatCuocO13(){
        viewDiem13.addSubview(viewDaCuoc13)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô SỐ 13 (LABEL ĐIỂM CƯỢC)
        viewDaCuoc13.addSubview(lblSoDiemDaCuoc13)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ 13:
        viewDiem13.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuoc13)
        viewDiem13.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuoc13)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuoc13.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuoc13)
        //2: CHIỀU NGANG:
        viewDaCuoc13.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuoc13)
    }
//MARK 28: PHẦN 1: SET UP Ô ĐIỂM 14:
    //A: Ô ĐIỂM 14 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuoc14:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuoc14:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuoc14:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkie14:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancel14:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm 14:
    //2.1: Hàm tổng quát
    func DatCuocO14(){
        viewDiemcuoc14.isHidden = false
        setupViewCuoc14()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Điểm 14
    func setupViewCuoc14(){
        view.addSubview(viewDiemcuoc14)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM 14 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuoc14.addSubview(sldDiemcuoc14)
        viewDiemcuoc14.addSubview(abtnOkie14)
        viewDiemcuoc14.addSubview(abtnCancel14)
        viewDiemcuoc14.addSubview(lblDiemCuoc14)
        lblDiemCuoc14.text = String("Đặt cược ô số 14: $\(Int(sldDiemcuoc14.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô ĐIỂM 14:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuoc14)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuoc14)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuoc14.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuoc14,sldDiemcuoc14)
        abtnOkie14.topAnchor.constraint(equalTo: sldDiemcuoc14.bottomAnchor).isActive = true
        abtnCancel14.topAnchor.constraint(equalTo: abtnOkie14.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuoc14.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuoc14)
        viewDiemcuoc14.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuoc14)
        viewDiemcuoc14.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkie14,abtnCancel14)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuoc14.addTarget(self, action: #selector(ViewController.asldDiemcuoc14), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkie14.addTarget(self, action: #selector(ViewController.ActionforBtnOkie14), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM 14, TRỞ VỀ BÀN
        abtnCancel14.addTarget(self, action: #selector(ViewController.ActionforBtnHuy14), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô ĐIỂM 14:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuoc14(){
        sldDiemcuoc14.maximumValue = 1 * Float(diem)
        SoDiemCuoc14 = Int(sldDiemcuoc14.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuoc14.value = 0
                self.SoDiemCuoc14 = Int(self.sldDiemcuoc14.value)
                self.lblDiemCuoc14.text = String("Đặt cược ô số 14: $\(self.SoDiemCuoc14)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuoc14.text = String("Đặt cược ô số 14: $\(SoDiemCuoc14)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkie14(){
        SoDiemCuoc14 = Int(sldDiemcuoc14.value)
        viewDiemcuoc14.isHidden = true
        if SoDiemCuoc14 != 0 && SoDiemCuoc14 <= diem{
            viewDaCuoc14.isHidden = false
            lblSoDiemDaCuoc14.text = String("$\(Int((sldDiemcuoc14.value)))")
        }else{
            if SoDiemCuoc14 != 0 && SoDiemCuoc14 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuoc14.value = Float(self.diem)
                    self.SoDiemCuoc14 = Int(self.sldDiemcuoc14.value)
                    self.lblDiemCuoc14.text = String("Đặt cược ô số 14: $\(self.SoDiemCuoc14)")
                    self.lblSoDiemDaCuoc14.text = String("$\(Int((self.sldDiemcuoc14.value)))")
                    self.viewDaCuoc14.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuy14(){
        sldDiemcuoc14.value = 0
        SoDiemCuoc14 = Int(sldDiemcuoc14.value)
        lblSoDiemDaCuoc14.text = String("$\(Int((sldDiemcuoc14.value)))")
        viewDaCuoc14.isHidden = true
        viewDiemcuoc14.isHidden = true
    }
    
    //B: Ô SỐ 14 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuoc14:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuoc14:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Số 14:
    func DiemDaDatCuocO14(){
        viewDiem14.addSubview(viewDaCuoc14)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô SỐ 14 (LABEL ĐIỂM CƯỢC)
        viewDaCuoc14.addSubview(lblSoDiemDaCuoc14)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ 14:
        viewDiem14.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuoc14)
        viewDiem14.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuoc14)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuoc14.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuoc14)
        //2: CHIỀU NGANG:
        viewDaCuoc14.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuoc14)
    }
//MARK 29: PHẦN 1: SET UP Ô ĐIỂM 15:
    //A: Ô ĐIỂM 15 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuoc15:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuoc15:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuoc15:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkie15:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancel15:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm 15:
    //2.1: Hàm tổng quát
    func DatCuocO15(){
        viewDiemcuoc15.isHidden = false
        setupViewCuoc15()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Điểm 15
    func setupViewCuoc15(){
        view.addSubview(viewDiemcuoc15)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM 15 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuoc15.addSubview(sldDiemcuoc15)
        viewDiemcuoc15.addSubview(abtnOkie15)
        viewDiemcuoc15.addSubview(abtnCancel15)
        viewDiemcuoc15.addSubview(lblDiemCuoc15)
        lblDiemCuoc15.text = String("Đặt cược ô số 15: $\(Int(sldDiemcuoc15.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô ĐIỂM 15:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuoc15)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuoc15)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuoc15.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuoc15,sldDiemcuoc15)
        abtnOkie15.topAnchor.constraint(equalTo: sldDiemcuoc15.bottomAnchor).isActive = true
        abtnCancel15.topAnchor.constraint(equalTo: abtnOkie15.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuoc15.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuoc15)
        viewDiemcuoc15.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuoc15)
        viewDiemcuoc15.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkie15,abtnCancel15)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuoc15.addTarget(self, action: #selector(ViewController.asldDiemcuoc15), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkie15.addTarget(self, action: #selector(ViewController.ActionforBtnOkie15), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM 15, TRỞ VỀ BÀN
        abtnCancel15.addTarget(self, action: #selector(ViewController.ActionforBtnHuy15), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô ĐIỂM 15:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuoc15(){
        sldDiemcuoc15.maximumValue = 1 * Float(diem)
        SoDiemCuoc15 = Int(sldDiemcuoc15.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuoc15.value = 0
                self.SoDiemCuoc15 = Int(self.sldDiemcuoc15.value)
                self.lblDiemCuoc15.text = String("Đặt cược ô số 15: $\(self.SoDiemCuoc15)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuoc15.text = String("Đặt cược ô số 15: $\(SoDiemCuoc15)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkie15(){
        SoDiemCuoc15 = Int(sldDiemcuoc15.value)
        viewDiemcuoc15.isHidden = true
        if SoDiemCuoc15 != 0 && SoDiemCuoc15 <= diem{
            viewDaCuoc15.isHidden = false
            lblSoDiemDaCuoc15.text = String("$\(Int((sldDiemcuoc15.value)))")
        }else{
            if SoDiemCuoc15 != 0 && SoDiemCuoc15 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuoc15.value = Float(self.diem)
                    self.SoDiemCuoc15 = Int(self.sldDiemcuoc15.value)
                    self.lblDiemCuoc15.text = String("Đặt cược ô số 15: $\(self.SoDiemCuoc15)")
                    self.lblSoDiemDaCuoc15.text = String("$\(Int((self.sldDiemcuoc15.value)))")
                    self.viewDaCuoc15.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuy15(){
        sldDiemcuoc15.value = 0
        SoDiemCuoc15 = Int(sldDiemcuoc15.value)
        lblSoDiemDaCuoc15.text = String("$\(Int((sldDiemcuoc15.value)))")
        viewDaCuoc15.isHidden = true
        viewDiemcuoc15.isHidden = true
    }
    
    //B: Ô SỐ 15 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuoc15:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuoc15:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Số 15:
    func DiemDaDatCuocO15(){
        viewDiem15.addSubview(viewDaCuoc15)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô SỐ 15 (LABEL ĐIỂM CƯỢC)
        viewDaCuoc15.addSubview(lblSoDiemDaCuoc15)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ 15:
        viewDiem15.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuoc15)
        viewDiem15.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuoc15)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuoc15.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuoc15)
        //2: CHIỀU NGANG:
        viewDaCuoc15.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuoc15)
    }
//MARK 30: PHẦN 1: SET UP Ô ĐIỂM 16:
    //A: Ô ĐIỂM 16 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuoc16:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuoc16:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuoc16:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkie16:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancel16:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm 16:
    //2.1: Hàm tổng quát
    func DatCuocO16(){
        viewDiemcuoc16.isHidden = false
        setupViewCuoc16()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Điểm 16
    func setupViewCuoc16(){
        view.addSubview(viewDiemcuoc16)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM 16 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuoc16.addSubview(sldDiemcuoc16)
        viewDiemcuoc16.addSubview(abtnOkie16)
        viewDiemcuoc16.addSubview(abtnCancel16)
        viewDiemcuoc16.addSubview(lblDiemCuoc16)
        lblDiemCuoc16.text = String("Đặt cược ô số 16: $\(Int(sldDiemcuoc16.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô ĐIỂM 16:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuoc16)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuoc16)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuoc16.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuoc16,sldDiemcuoc16)
        abtnOkie16.topAnchor.constraint(equalTo: sldDiemcuoc16.bottomAnchor).isActive = true
        abtnCancel16.topAnchor.constraint(equalTo: abtnOkie16.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuoc16.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuoc16)
        viewDiemcuoc16.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuoc16)
        viewDiemcuoc16.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkie16,abtnCancel16)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuoc16.addTarget(self, action: #selector(ViewController.asldDiemcuoc16), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkie16.addTarget(self, action: #selector(ViewController.ActionforBtnOkie16), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM 16, TRỞ VỀ BÀN
        abtnCancel16.addTarget(self, action: #selector(ViewController.ActionforBtnHuy16), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô ĐIỂM 16:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuoc16(){
        sldDiemcuoc16.maximumValue = 1 * Float(diem)
        SoDiemCuoc16 = Int(sldDiemcuoc16.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuoc16.value = 0
                self.SoDiemCuoc16 = Int(self.sldDiemcuoc16.value)
                self.lblDiemCuoc16.text = String("Đặt cược ô số 16: $\(self.SoDiemCuoc16)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuoc16.text = String("Đặt cược ô số 16: $\(SoDiemCuoc16)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkie16(){
        SoDiemCuoc16 = Int(sldDiemcuoc16.value)
        viewDiemcuoc16.isHidden = true
        if SoDiemCuoc16 != 0 && SoDiemCuoc16 <= diem{
            viewDaCuoc16.isHidden = false
            lblSoDiemDaCuoc16.text = String("$\(Int((sldDiemcuoc16.value)))")
        }else{
            if SoDiemCuoc16 != 0 && SoDiemCuoc16 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuoc16.value = Float(self.diem)
                    self.SoDiemCuoc16 = Int(self.sldDiemcuoc16.value)
                    self.lblDiemCuoc16.text = String("Đặt cược ô số 16: $\(self.SoDiemCuoc16)")
                    self.lblSoDiemDaCuoc16.text = String("$\(Int((self.sldDiemcuoc16.value)))")
                    self.viewDaCuoc16.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuy16(){
        sldDiemcuoc16.value = 0
        SoDiemCuoc16 = Int(sldDiemcuoc16.value)
        lblSoDiemDaCuoc16.text = String("$\(Int((sldDiemcuoc16.value)))")
        viewDaCuoc16.isHidden = true
        viewDiemcuoc16.isHidden = true
    }
    
    //B: Ô SỐ 16 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuoc16:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuoc16:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Số 16:
    func DiemDaDatCuocO16(){
        viewDiem16.addSubview(viewDaCuoc16)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô SỐ 16 (LABEL ĐIỂM CƯỢC)
        viewDaCuoc16.addSubview(lblSoDiemDaCuoc16)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ 16:
        viewDiem16.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuoc16)
        viewDiem16.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuoc16)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuoc16.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuoc16)
        //2: CHIỀU NGANG:
        viewDaCuoc16.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuoc16)
    }
//MARK 31: PHẦN 1: SET UP Ô ĐIỂM 17:
    //A: Ô ĐIỂM 17 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuoc17:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuoc17:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuoc17:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkie17:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancel17:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm 17:
    //2.1: Hàm tổng quát
    func DatCuocO17(){
        viewDiemcuoc17.isHidden = false
        setupViewCuoc17()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Điểm 17
    func setupViewCuoc17(){
        view.addSubview(viewDiemcuoc17)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM 17 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuoc17.addSubview(sldDiemcuoc17)
        viewDiemcuoc17.addSubview(abtnOkie17)
        viewDiemcuoc17.addSubview(abtnCancel17)
        viewDiemcuoc17.addSubview(lblDiemCuoc17)
        lblDiemCuoc17.text = String("Đặt cược ô số 17: $\(Int(sldDiemcuoc17.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô ĐIỂM 17:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuoc17)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuoc17)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuoc17.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuoc17,sldDiemcuoc17)
        abtnOkie17.topAnchor.constraint(equalTo: sldDiemcuoc17.bottomAnchor).isActive = true
        abtnCancel17.topAnchor.constraint(equalTo: abtnOkie17.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuoc17.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuoc17)
        viewDiemcuoc17.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuoc17)
        viewDiemcuoc17.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkie17,abtnCancel17)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuoc17.addTarget(self, action: #selector(ViewController.asldDiemcuoc17), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkie17.addTarget(self, action: #selector(ViewController.ActionforBtnOkie17), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM 17, TRỞ VỀ BÀN
        abtnCancel17.addTarget(self, action: #selector(ViewController.ActionforBtnHuy17), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô ĐIỂM 17:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuoc17(){
        sldDiemcuoc17.maximumValue = 1 * Float(diem)
        SoDiemCuoc17 = Int(sldDiemcuoc17.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuoc17.value = 0
                self.SoDiemCuoc17 = Int(self.sldDiemcuoc17.value)
                self.lblDiemCuoc17.text = String("Đặt cược ô số 17: $\(self.SoDiemCuoc17)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuoc17.text = String("Đặt cược ô số 17: $\(SoDiemCuoc17)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkie17(){
        SoDiemCuoc17 = Int(sldDiemcuoc17.value)
        viewDiemcuoc17.isHidden = true
        if SoDiemCuoc17 != 0 && SoDiemCuoc17 <= diem{
            viewDaCuoc17.isHidden = false
            lblSoDiemDaCuoc17.text = String("$\(Int((sldDiemcuoc17.value)))")
        }else{
            if SoDiemCuoc17 != 0 && SoDiemCuoc17 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuoc17.value = Float(self.diem)
                    self.SoDiemCuoc17 = Int(self.sldDiemcuoc17.value)
                    self.lblDiemCuoc17.text = String("Đặt cược ô số 17: $\(self.SoDiemCuoc17)")
                    self.lblSoDiemDaCuoc17.text = String("$\(Int((self.sldDiemcuoc17.value)))")
                    self.viewDaCuoc17.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuy17(){
        sldDiemcuoc17.value = 0
        SoDiemCuoc17 = Int(sldDiemcuoc17.value)
        lblSoDiemDaCuoc17.text = String("$\(Int((sldDiemcuoc17.value)))")
        viewDaCuoc17.isHidden = true
        viewDiemcuoc17.isHidden = true
    }
    
    //B: Ô SỐ 17 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuoc17:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuoc17:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Số 17:
    func DiemDaDatCuocO17(){
        viewDiem17.addSubview(viewDaCuoc17)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô SỐ 17 (LABEL ĐIỂM CƯỢC)
        viewDaCuoc17.addSubview(lblSoDiemDaCuoc17)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ 17:
        viewDiem17.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuoc17)
        viewDiem17.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuoc17)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuoc17.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuoc17)
        //2: CHIỀU NGANG:
        viewDaCuoc17.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuoc17)
    }
//MARK 32: PHẦN 1: SET UP Ô CON12:
    //A: Ô CON12 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocCon12:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocCon12:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocCon12:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieCon12:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelCon12:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm Con12:
    //2.1: Hàm tổng quát
    func DatCuocOCon12(){
        viewDiemcuocCon12.isHidden = false
        setupViewCuocCon12()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Con12
    func setupViewCuocCon12(){
        view.addSubview(viewDiemcuocCon12)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM Con12 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocCon12.addSubview(sldDiemcuocCon12)
        viewDiemcuocCon12.addSubview(abtnOkieCon12)
        viewDiemcuocCon12.addSubview(abtnCancelCon12)
        viewDiemcuocCon12.addSubview(lblDiemCuocCon12)
        lblDiemCuocCon12.text = String("Đặt cược Con 1, 2: $\(Int(sldDiemcuocCon12.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô Con12:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocCon12)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocCon12)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocCon12.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocCon12,sldDiemcuocCon12)
        abtnOkieCon12.topAnchor.constraint(equalTo: sldDiemcuocCon12.bottomAnchor).isActive = true
        abtnCancelCon12.topAnchor.constraint(equalTo: abtnOkieCon12.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocCon12.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocCon12)
        viewDiemcuocCon12.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocCon12)
        viewDiemcuocCon12.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieCon12,abtnCancelCon12)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocCon12.addTarget(self, action: #selector(ViewController.asldDiemcuocCon12), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieCon12.addTarget(self, action: #selector(ViewController.ActionforBtnOkieCon12), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM Con12, TRỞ VỀ BÀN
        abtnCancelCon12.addTarget(self, action: #selector(ViewController.ActionforBtnHuyCon12), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô Con12:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocCon12(){
        sldDiemcuocCon12.maximumValue = 1 * Float(diem)
        SoDiemCuocCon12 = Int(sldDiemcuocCon12.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocCon12.value = 0
                self.SoDiemCuocCon12 = Int(self.sldDiemcuocCon12.value)
                self.lblDiemCuocCon12.text = String("Đặt cược Con 1, 2: $\(self.SoDiemCuocCon12)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocCon12.text = String("Đặt cược Con 1, 2: $\(SoDiemCuocCon12)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieCon12(){
        SoDiemCuocCon12 = Int(sldDiemcuocCon12.value)
        viewDiemcuocCon12.isHidden = true
        if SoDiemCuocCon12 != 0 && SoDiemCuocCon12 <= diem{
            viewDaCuocCon12.isHidden = false
            lblSoDiemDaCuocCon12.text = String("$\(Int((sldDiemcuocCon12.value)))")
        }else{
            if SoDiemCuocCon12 != 0 && SoDiemCuocCon12 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocCon12.value = Float(self.diem)
                    self.SoDiemCuocCon12 = Int(self.sldDiemcuocCon12.value)
                    self.lblDiemCuocCon12.text = String("Đặt cược Con 1, 2: $\(self.SoDiemCuocCon12)")
                    self.lblSoDiemDaCuocCon12.text = String("$\(Int((self.sldDiemcuocCon12.value)))")
                    self.viewDaCuocCon12.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyCon12(){
        sldDiemcuocCon12.value = 0
        SoDiemCuocCon12 = Int(sldDiemcuocCon12.value)
        lblSoDiemDaCuocCon12.text = String("$\(Int((sldDiemcuocCon12.value)))")
        viewDaCuocCon12.isHidden = true
        viewDiemcuocCon12.isHidden = true
    }
    
    //B: Ô Con12 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocCon12:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocCon12:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Con12:
    func DiemDaDatCuocOCon12(){
        view12.addSubview(viewDaCuocCon12)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô Con12 (LABEL ĐIỂM CƯỢC)
        viewDaCuocCon12.addSubview(lblSoDiemDaCuocCon12)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ Con12:
        view12.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocCon12)
        view12.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocCon12)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocCon12.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocCon12)
        //2: CHIỀU NGANG:
        viewDaCuocCon12.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocCon12)
    }
//MARK 33: PHẦN 1: SET UP Ô CON13:
    //A: Ô CON13 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocCon13:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocCon13:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocCon13:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieCon13:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelCon13:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm Con13:
    //2.1: Hàm tổng quát
    func DatCuocOCon13(){
        viewDiemcuocCon13.isHidden = false
        setupViewCuocCon13()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Con13
    func setupViewCuocCon13(){
        view.addSubview(viewDiemcuocCon13)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM Con12 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocCon13.addSubview(sldDiemcuocCon13)
        viewDiemcuocCon13.addSubview(abtnOkieCon13)
        viewDiemcuocCon13.addSubview(abtnCancelCon13)
        viewDiemcuocCon13.addSubview(lblDiemCuocCon13)
        lblDiemCuocCon13.text = String("Đặt cược Con 1, 3: $\(Int(sldDiemcuocCon13.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô Con13:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocCon13)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocCon13)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocCon13.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocCon13,sldDiemcuocCon13)
        abtnOkieCon13.topAnchor.constraint(equalTo: sldDiemcuocCon13.bottomAnchor).isActive = true
        abtnCancelCon13.topAnchor.constraint(equalTo: abtnOkieCon13.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocCon13.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocCon13)
        viewDiemcuocCon13.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocCon13)
        viewDiemcuocCon13.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieCon13,abtnCancelCon13)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocCon13.addTarget(self, action: #selector(ViewController.asldDiemcuocCon13), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieCon13.addTarget(self, action: #selector(ViewController.ActionforBtnOkieCon13), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM Con13, TRỞ VỀ BÀN
        abtnCancelCon13.addTarget(self, action: #selector(ViewController.ActionforBtnHuyCon13), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô Con13:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocCon13(){
        sldDiemcuocCon13.maximumValue = 1 * Float(diem)
        SoDiemCuocCon13 = Int(sldDiemcuocCon13.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocCon13.value = 0
                self.SoDiemCuocCon13 = Int(self.sldDiemcuocCon13.value)
                self.lblDiemCuocCon13.text = String("Đặt cược Con 1, 3: $\(self.SoDiemCuocCon13)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocCon13.text = String("Đặt cược Con 1, 3: $\(SoDiemCuocCon13)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieCon13(){
        SoDiemCuocCon13 = Int(sldDiemcuocCon13.value)
        viewDiemcuocCon13.isHidden = true
        if SoDiemCuocCon13 != 0 && SoDiemCuocCon13 <= diem{
            viewDaCuocCon13.isHidden = false
            lblSoDiemDaCuocCon13.text = String("$\(Int((sldDiemcuocCon13.value)))")
        }else{
            if SoDiemCuocCon13 != 0 && SoDiemCuocCon13 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocCon13.value = Float(self.diem)
                    self.SoDiemCuocCon13 = Int(self.sldDiemcuocCon13.value)
                    self.lblDiemCuocCon13.text = String("Đặt cược Con 1, 3: $\(self.SoDiemCuocCon13)")
                    self.lblSoDiemDaCuocCon13.text = String("$\(Int((self.sldDiemcuocCon13.value)))")
                    self.viewDaCuocCon13.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyCon13(){
        sldDiemcuocCon13.value = 0
        SoDiemCuocCon13 = Int(sldDiemcuocCon13.value)
        lblSoDiemDaCuocCon13.text = String("$\(Int((sldDiemcuocCon13.value)))")
        viewDaCuocCon13.isHidden = true
        viewDiemcuocCon13.isHidden = true
    }
    
    //B: Ô Con13 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocCon13:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocCon13:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Con13:
    func DiemDaDatCuocOCon13(){
        view13.addSubview(viewDaCuocCon13)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô Con13 (LABEL ĐIỂM CƯỢC)
        viewDaCuocCon13.addSubview(lblSoDiemDaCuocCon13)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ Con13:
        view13.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocCon13)
        view13.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocCon13)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocCon13.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocCon13)
        //2: CHIỀU NGANG:
        viewDaCuocCon13.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocCon13)
    }
//MARK 34: PHẦN 1: SET UP Ô CON14:
    //A: Ô CON14 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocCon14:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocCon14:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocCon14:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieCon14:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelCon14:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm Con14:
    //2.1: Hàm tổng quát
    func DatCuocOCon14(){
        viewDiemcuocCon14.isHidden = false
        setupViewCuocCon14()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Con14
    func setupViewCuocCon14(){
        view.addSubview(viewDiemcuocCon14)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM Con14 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocCon14.addSubview(sldDiemcuocCon14)
        viewDiemcuocCon14.addSubview(abtnOkieCon14)
        viewDiemcuocCon14.addSubview(abtnCancelCon14)
        viewDiemcuocCon14.addSubview(lblDiemCuocCon14)
        lblDiemCuocCon14.text = String("Đặt cược Con 1, 4: $\(Int(sldDiemcuocCon14.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô Con14:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocCon14)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocCon14)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocCon14.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocCon14,sldDiemcuocCon14)
        abtnOkieCon14.topAnchor.constraint(equalTo: sldDiemcuocCon14.bottomAnchor).isActive = true
        abtnCancelCon14.topAnchor.constraint(equalTo: abtnOkieCon14.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocCon14.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocCon14)
        viewDiemcuocCon14.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocCon14)
        viewDiemcuocCon14.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieCon14,abtnCancelCon14)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocCon14.addTarget(self, action: #selector(ViewController.asldDiemcuocCon14), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieCon14.addTarget(self, action: #selector(ViewController.ActionforBtnOkieCon14), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM Con14, TRỞ VỀ BÀN
        abtnCancelCon14.addTarget(self, action: #selector(ViewController.ActionforBtnHuyCon14), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô Con14:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocCon14(){
        sldDiemcuocCon14.maximumValue = 1 * Float(diem)
        SoDiemCuocCon14 = Int(sldDiemcuocCon14.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocCon14.value = 0
                self.SoDiemCuocCon14 = Int(self.sldDiemcuocCon14.value)
                self.lblDiemCuocCon14.text = String("Đặt cược Con 1, 4: $\(self.SoDiemCuocCon14)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocCon14.text = String("Đặt cược Con 1, 4: $\(SoDiemCuocCon14)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieCon14(){
        SoDiemCuocCon14 = Int(sldDiemcuocCon14.value)
        viewDiemcuocCon14.isHidden = true
        if SoDiemCuocCon14 != 0 && SoDiemCuocCon14 <= diem{
            viewDaCuocCon14.isHidden = false
            lblSoDiemDaCuocCon14.text = String("$\(Int((sldDiemcuocCon14.value)))")
        }else{
            if SoDiemCuocCon14 != 0 && SoDiemCuocCon14 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocCon14.value = Float(self.diem)
                    self.SoDiemCuocCon14 = Int(self.sldDiemcuocCon14.value)
                    self.lblDiemCuocCon14.text = String("Đặt cược Con 1, 4: $\(self.SoDiemCuocCon14)")
                    self.lblSoDiemDaCuocCon14.text = String("$\(Int((self.sldDiemcuocCon14.value)))")
                    self.viewDaCuocCon14.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyCon14(){
        sldDiemcuocCon14.value = 0
        SoDiemCuocCon14 = Int(sldDiemcuocCon14.value)
        lblSoDiemDaCuocCon14.text = String("$\(Int((sldDiemcuocCon14.value)))")
        viewDaCuocCon14.isHidden = true
        viewDiemcuocCon14.isHidden = true
    }
    
    //B: Ô Con14 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocCon14:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocCon14:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Con14:
    func DiemDaDatCuocOCon14(){
        view14.addSubview(viewDaCuocCon14)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô Con14 (LABEL ĐIỂM CƯỢC)
        viewDaCuocCon14.addSubview(lblSoDiemDaCuocCon14)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ Con14:
        view14.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocCon14)
        view14.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocCon14)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocCon14.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocCon14)
        //2: CHIỀU NGANG:
        viewDaCuocCon14.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocCon14)
    }
//MARK 35: PHẦN 1: SET UP Ô CON15:
    //A: Ô CON15 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocCon15:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocCon15:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocCon15:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieCon15:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelCon15:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm Con15:
    //2.1: Hàm tổng quát
    func DatCuocOCon15(){
        viewDiemcuocCon15.isHidden = false
        setupViewCuocCon15()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Con15
    func setupViewCuocCon15(){
        view.addSubview(viewDiemcuocCon15)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM Con15 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocCon15.addSubview(sldDiemcuocCon15)
        viewDiemcuocCon15.addSubview(abtnOkieCon15)
        viewDiemcuocCon15.addSubview(abtnCancelCon15)
        viewDiemcuocCon15.addSubview(lblDiemCuocCon15)
        lblDiemCuocCon15.text = String("Đặt cược Con 1, 5: $\(Int(sldDiemcuocCon15.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô Con15:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocCon15)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocCon15)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocCon15.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocCon15,sldDiemcuocCon15)
        abtnOkieCon15.topAnchor.constraint(equalTo: sldDiemcuocCon15.bottomAnchor).isActive = true
        abtnCancelCon15.topAnchor.constraint(equalTo: abtnOkieCon15.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocCon15.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocCon15)
        viewDiemcuocCon15.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocCon15)
        viewDiemcuocCon15.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieCon15,abtnCancelCon15)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocCon15.addTarget(self, action: #selector(ViewController.asldDiemcuocCon15), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieCon15.addTarget(self, action: #selector(ViewController.ActionforBtnOkieCon15), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM Con15, TRỞ VỀ BÀN
        abtnCancelCon15.addTarget(self, action: #selector(ViewController.ActionforBtnHuyCon15), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô Con15:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocCon15(){
        sldDiemcuocCon15.maximumValue = 1 * Float(diem)
        SoDiemCuocCon15 = Int(sldDiemcuocCon15.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocCon15.value = 0
                self.SoDiemCuocCon15 = Int(self.sldDiemcuocCon15.value)
                self.lblDiemCuocCon15.text = String("Đặt cược Con 1, 5: $\(self.SoDiemCuocCon15)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocCon15.text = String("Đặt cược Con 1, 5: $\(SoDiemCuocCon15)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieCon15(){
        SoDiemCuocCon15 = Int(sldDiemcuocCon15.value)
        viewDiemcuocCon15.isHidden = true
        if SoDiemCuocCon15 != 0 && SoDiemCuocCon15 <= diem{
            viewDaCuocCon15.isHidden = false
            lblSoDiemDaCuocCon15.text = String("$\(Int((sldDiemcuocCon15.value)))")
        }else{
            if SoDiemCuocCon15 != 0 && SoDiemCuocCon15 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocCon15.value = Float(self.diem)
                    self.SoDiemCuocCon15 = Int(self.sldDiemcuocCon15.value)
                    self.lblDiemCuocCon15.text = String("Đặt cược Con 1, 5: $\(self.SoDiemCuocCon15)")
                    self.lblSoDiemDaCuocCon15.text = String("$\(Int((self.sldDiemcuocCon15.value)))")
                    self.viewDaCuocCon15.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyCon15(){
        sldDiemcuocCon15.value = 0
        SoDiemCuocCon15 = Int(sldDiemcuocCon15.value)
        lblSoDiemDaCuocCon15.text = String("$\(Int((sldDiemcuocCon15.value)))")
        viewDaCuocCon15.isHidden = true
        viewDiemcuocCon15.isHidden = true
    }
    
    //B: Ô Con15 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocCon15:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocCon15:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Con15:
    func DiemDaDatCuocOCon15(){
        view15.addSubview(viewDaCuocCon15)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô Con15 (LABEL ĐIỂM CƯỢC)
        viewDaCuocCon15.addSubview(lblSoDiemDaCuocCon15)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ Con15:
        view15.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocCon15)
        view15.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocCon15)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocCon15.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocCon15)
        //2: CHIỀU NGANG:
        viewDaCuocCon15.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocCon15)
    }
//MARK 36: PHẦN 1: SET UP Ô CON16:
    //A: Ô CON16 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocCon16:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocCon16:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocCon16:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieCon16:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelCon16:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm Con16:
    //2.1: Hàm tổng quát
    func DatCuocOCon16(){
        viewDiemcuocCon16.isHidden = false
        setupViewCuocCon16()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Con16
    func setupViewCuocCon16(){
        view.addSubview(viewDiemcuocCon16)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM Con15 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocCon16.addSubview(sldDiemcuocCon16)
        viewDiemcuocCon16.addSubview(abtnOkieCon16)
        viewDiemcuocCon16.addSubview(abtnCancelCon16)
        viewDiemcuocCon16.addSubview(lblDiemCuocCon16)
        lblDiemCuocCon16.text = String("Đặt cược Con 1, 6: $\(Int(sldDiemcuocCon16.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô Con16:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocCon16)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocCon16)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocCon16.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocCon16,sldDiemcuocCon16)
        abtnOkieCon16.topAnchor.constraint(equalTo: sldDiemcuocCon16.bottomAnchor).isActive = true
        abtnCancelCon16.topAnchor.constraint(equalTo: abtnOkieCon16.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocCon16.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocCon16)
        viewDiemcuocCon16.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocCon16)
        viewDiemcuocCon16.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieCon16,abtnCancelCon16)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocCon16.addTarget(self, action: #selector(ViewController.asldDiemcuocCon16), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieCon16.addTarget(self, action: #selector(ViewController.ActionforBtnOkieCon16), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM Con16, TRỞ VỀ BÀN
        abtnCancelCon16.addTarget(self, action: #selector(ViewController.ActionforBtnHuyCon16), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô Con15:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocCon16(){
        sldDiemcuocCon16.maximumValue = 1 * Float(diem)
        SoDiemCuocCon16 = Int(sldDiemcuocCon16.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocCon16.value = 0
                self.SoDiemCuocCon16 = Int(self.sldDiemcuocCon16.value)
                self.lblDiemCuocCon16.text = String("Đặt cược Con 1, 6: $\(self.SoDiemCuocCon16)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocCon16.text = String("Đặt cược Con 1, 6: $\(SoDiemCuocCon16)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieCon16(){
        SoDiemCuocCon16 = Int(sldDiemcuocCon16.value)
        viewDiemcuocCon16.isHidden = true
        if SoDiemCuocCon16 != 0 && SoDiemCuocCon16 <= diem{
            viewDaCuocCon16.isHidden = false
            lblSoDiemDaCuocCon16.text = String("$\(Int((sldDiemcuocCon16.value)))")
        }else{
            if SoDiemCuocCon16 != 0 && SoDiemCuocCon16 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocCon16.value = Float(self.diem)
                    self.SoDiemCuocCon16 = Int(self.sldDiemcuocCon16.value)
                    self.lblDiemCuocCon16.text = String("Đặt cược Con 1, 6: $\(self.SoDiemCuocCon16)")
                    self.lblSoDiemDaCuocCon16.text = String("$\(Int((self.sldDiemcuocCon16.value)))")
                    self.viewDaCuocCon16.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyCon16(){
        sldDiemcuocCon16.value = 0
        SoDiemCuocCon16 = Int(sldDiemcuocCon16.value)
        lblSoDiemDaCuocCon16.text = String("$\(Int((sldDiemcuocCon16.value)))")
        viewDaCuocCon16.isHidden = true
        viewDiemcuocCon16.isHidden = true
    }
    
    //B: Ô Con16 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocCon16:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocCon16:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Con15:
    func DiemDaDatCuocOCon16(){
        view16.addSubview(viewDaCuocCon16)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô Con16 (LABEL ĐIỂM CƯỢC)
        viewDaCuocCon16.addSubview(lblSoDiemDaCuocCon16)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ Con16:
        view16.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocCon16)
        view16.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocCon16)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocCon16.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocCon16)
        //2: CHIỀU NGANG:
        viewDaCuocCon16.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocCon16)
    }
//MARK 37: PHẦN 1: SET UP Ô CON23:
    //A: Ô CON23 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocCon23:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocCon23:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocCon23:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieCon23:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelCon23:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm Con23:
    //2.1: Hàm tổng quát
    func DatCuocOCon23(){
        viewDiemcuocCon23.isHidden = false
        setupViewCuocCon23()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Con23
    func setupViewCuocCon23(){
        view.addSubview(viewDiemcuocCon23)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM Con15 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocCon23.addSubview(sldDiemcuocCon23)
        viewDiemcuocCon23.addSubview(abtnOkieCon23)
        viewDiemcuocCon23.addSubview(abtnCancelCon23)
        viewDiemcuocCon23.addSubview(lblDiemCuocCon23)
        lblDiemCuocCon23.text = String("Đặt cược Con 2, 3: $\(Int(sldDiemcuocCon23.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô Con23:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocCon23)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocCon23)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocCon23.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocCon23,sldDiemcuocCon23)
        abtnOkieCon23.topAnchor.constraint(equalTo: sldDiemcuocCon23.bottomAnchor).isActive = true
        abtnCancelCon23.topAnchor.constraint(equalTo: abtnOkieCon23.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocCon23.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocCon23)
        viewDiemcuocCon23.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocCon23)
        viewDiemcuocCon23.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieCon23,abtnCancelCon23)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocCon23.addTarget(self, action: #selector(ViewController.asldDiemcuocCon23), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieCon23.addTarget(self, action: #selector(ViewController.ActionforBtnOkieCon23), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM Con23, TRỞ VỀ BÀN
        abtnCancelCon23.addTarget(self, action: #selector(ViewController.ActionforBtnHuyCon23), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô Con23:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocCon23(){
        sldDiemcuocCon23.maximumValue = 1 * Float(diem)
        SoDiemCuocCon23 = Int(sldDiemcuocCon23.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocCon23.value = 0
                self.SoDiemCuocCon23 = Int(self.sldDiemcuocCon23.value)
                self.lblDiemCuocCon23.text = String("Đặt cược Con 2, 3: $\(self.SoDiemCuocCon23)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocCon23.text = String("Đặt cược Con 2, 3: $\(SoDiemCuocCon23)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieCon23(){
        SoDiemCuocCon23 = Int(sldDiemcuocCon23.value)
        viewDiemcuocCon23.isHidden = true
        if SoDiemCuocCon23 != 0 && SoDiemCuocCon23 <= diem{
            viewDaCuocCon23.isHidden = false
            lblSoDiemDaCuocCon23.text = String("$\(Int((sldDiemcuocCon23.value)))")
        }else{
            if SoDiemCuocCon23 != 0 && SoDiemCuocCon23 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocCon23.value = Float(self.diem)
                    self.SoDiemCuocCon23 = Int(self.sldDiemcuocCon23.value)
                    self.lblDiemCuocCon23.text = String("Đặt cược Con 2, 3: $\(self.SoDiemCuocCon23)")
                    self.lblSoDiemDaCuocCon23.text = String("$\(Int((self.sldDiemcuocCon23.value)))")
                    self.viewDaCuocCon23.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyCon23(){
        sldDiemcuocCon23.value = 0
        SoDiemCuocCon23 = Int(sldDiemcuocCon23.value)
        lblSoDiemDaCuocCon23.text = String("$\(Int((sldDiemcuocCon23.value)))")
        viewDaCuocCon23.isHidden = true
        viewDiemcuocCon23.isHidden = true
    }
    
    //B: Ô Con23 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocCon23:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocCon23:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Con23:
    func DiemDaDatCuocOCon23(){
        view23.addSubview(viewDaCuocCon23)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô Con23 (LABEL ĐIỂM CƯỢC)
        viewDaCuocCon23.addSubview(lblSoDiemDaCuocCon23)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ Con23:
        view23.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocCon23)
        view23.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocCon23)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocCon23.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocCon23)
        //2: CHIỀU NGANG:
        viewDaCuocCon23.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocCon23)
    }
//MARK 38: PHẦN 1: SET UP Ô CON24:
    //A: Ô CON24 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocCon24:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocCon24:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocCon24:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieCon24:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelCon24:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm Con24:
    //2.1: Hàm tổng quát
    func DatCuocOCon24(){
        viewDiemcuocCon24.isHidden = false
        setupViewCuocCon24()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Con24
    func setupViewCuocCon24(){
        view.addSubview(viewDiemcuocCon24)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM Con24 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocCon24.addSubview(sldDiemcuocCon24)
        viewDiemcuocCon24.addSubview(abtnOkieCon24)
        viewDiemcuocCon24.addSubview(abtnCancelCon24)
        viewDiemcuocCon24.addSubview(lblDiemCuocCon24)
        lblDiemCuocCon24.text = String("Đặt cược Con 2, 4: $\(Int(sldDiemcuocCon24.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô Con24:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocCon24)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocCon24)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocCon24.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocCon24,sldDiemcuocCon24)
        abtnOkieCon24.topAnchor.constraint(equalTo: sldDiemcuocCon24.bottomAnchor).isActive = true
        abtnCancelCon24.topAnchor.constraint(equalTo: abtnOkieCon24.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocCon24.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocCon24)
        viewDiemcuocCon24.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocCon24)
        viewDiemcuocCon24.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieCon24,abtnCancelCon24)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocCon24.addTarget(self, action: #selector(ViewController.asldDiemcuocCon24), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieCon24.addTarget(self, action: #selector(ViewController.ActionforBtnOkieCon24), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM Con24, TRỞ VỀ BÀN
        abtnCancelCon24.addTarget(self, action: #selector(ViewController.ActionforBtnHuyCon24), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô Con24:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocCon24(){
        sldDiemcuocCon24.maximumValue = 1 * Float(diem)
        SoDiemCuocCon24 = Int(sldDiemcuocCon24.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocCon24.value = 0
                self.SoDiemCuocCon24 = Int(self.sldDiemcuocCon24.value)
                self.lblDiemCuocCon24.text = String("Đặt cược Con 2, 4: $\(self.SoDiemCuocCon24)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocCon24.text = String("Đặt cược Con 2, 4: $\(SoDiemCuocCon24)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieCon24(){
        SoDiemCuocCon24 = Int(sldDiemcuocCon24.value)
        viewDiemcuocCon24.isHidden = true
        if SoDiemCuocCon24 != 0 && SoDiemCuocCon24 <= diem{
            viewDaCuocCon24.isHidden = false
            lblSoDiemDaCuocCon24.text = String("$\(Int((sldDiemcuocCon24.value)))")
        }else{
            if SoDiemCuocCon24 != 0 && SoDiemCuocCon24 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocCon24.value = Float(self.diem)
                    self.SoDiemCuocCon24 = Int(self.sldDiemcuocCon24.value)
                    self.lblDiemCuocCon24.text = String("Đặt cược Con 2, 4: $\(self.SoDiemCuocCon24)")
                    self.lblSoDiemDaCuocCon24.text = String("$\(Int((self.sldDiemcuocCon24.value)))")
                    self.viewDaCuocCon24.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyCon24(){
        sldDiemcuocCon24.value = 0
        SoDiemCuocCon24 = Int(sldDiemcuocCon24.value)
        lblSoDiemDaCuocCon24.text = String("$\(Int((sldDiemcuocCon24.value)))")
        viewDaCuocCon24.isHidden = true
        viewDiemcuocCon24.isHidden = true
    }
    
    //B: Ô Con24 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocCon24:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocCon24:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Con23:
    func DiemDaDatCuocOCon24(){
        view24.addSubview(viewDaCuocCon24)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô Con24 (LABEL ĐIỂM CƯỢC)
        viewDaCuocCon24.addSubview(lblSoDiemDaCuocCon24)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ Con24:
        view24.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocCon24)
        view24.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocCon24)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocCon24.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocCon24)
        //2: CHIỀU NGANG:
        viewDaCuocCon24.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocCon24)
    }
//MARK 39: PHẦN 1: SET UP Ô CON25:
    //A: Ô CON25 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocCon25:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocCon25:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocCon25:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieCon25:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelCon25:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm Con25:
    //2.1: Hàm tổng quát
    func DatCuocOCon25(){
        viewDiemcuocCon25.isHidden = false
        setupViewCuocCon25()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Con25
    func setupViewCuocCon25(){
        view.addSubview(viewDiemcuocCon25)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM Con25 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocCon25.addSubview(sldDiemcuocCon25)
        viewDiemcuocCon25.addSubview(abtnOkieCon25)
        viewDiemcuocCon25.addSubview(abtnCancelCon25)
        viewDiemcuocCon25.addSubview(lblDiemCuocCon25)
        lblDiemCuocCon25.text = String("Đặt cược Con 2, 5: $\(Int(sldDiemcuocCon25.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô Con25:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocCon25)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocCon25)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocCon25.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocCon25,sldDiemcuocCon25)
        abtnOkieCon25.topAnchor.constraint(equalTo: sldDiemcuocCon25.bottomAnchor).isActive = true
        abtnCancelCon25.topAnchor.constraint(equalTo: abtnOkieCon25.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocCon25.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocCon25)
        viewDiemcuocCon25.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocCon25)
        viewDiemcuocCon25.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieCon25,abtnCancelCon25)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocCon25.addTarget(self, action: #selector(ViewController.asldDiemcuocCon25), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieCon25.addTarget(self, action: #selector(ViewController.ActionforBtnOkieCon25), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM Con24, TRỞ VỀ BÀN
        abtnCancelCon25.addTarget(self, action: #selector(ViewController.ActionforBtnHuyCon25), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô Con25:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocCon25(){
        sldDiemcuocCon25.maximumValue = 1 * Float(diem)
        SoDiemCuocCon25 = Int(sldDiemcuocCon25.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocCon25.value = 0
                self.SoDiemCuocCon25 = Int(self.sldDiemcuocCon25.value)
                self.lblDiemCuocCon25.text = String("Đặt cược Con 2, 5: $\(self.SoDiemCuocCon25)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocCon25.text = String("Đặt cược Con 2, 5: $\(SoDiemCuocCon25)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieCon25(){
        SoDiemCuocCon25 = Int(sldDiemcuocCon25.value)
        viewDiemcuocCon25.isHidden = true
        if SoDiemCuocCon25 != 0 && SoDiemCuocCon25 <= diem{
            viewDaCuocCon25.isHidden = false
            lblSoDiemDaCuocCon25.text = String("$\(Int((sldDiemcuocCon25.value)))")
        }else{
            if SoDiemCuocCon25 != 0 && SoDiemCuocCon25 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocCon25.value = Float(self.diem)
                    self.SoDiemCuocCon25 = Int(self.sldDiemcuocCon25.value)
                    self.lblDiemCuocCon25.text = String("Đặt cược Con 2, 5: $\(self.SoDiemCuocCon25)")
                    self.lblSoDiemDaCuocCon25.text = String("$\(Int((self.sldDiemcuocCon25.value)))")
                    self.viewDaCuocCon25.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyCon25(){
        sldDiemcuocCon25.value = 0
        SoDiemCuocCon25 = Int(sldDiemcuocCon25.value)
        lblSoDiemDaCuocCon25.text = String("$\(Int((sldDiemcuocCon25.value)))")
        viewDaCuocCon25.isHidden = true
        viewDiemcuocCon25.isHidden = true
    }
    
    //B: Ô Con25 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocCon25:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocCon25:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Con25:
    func DiemDaDatCuocOCon25(){
        view25.addSubview(viewDaCuocCon25)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô Con24 (LABEL ĐIỂM CƯỢC)
        viewDaCuocCon25.addSubview(lblSoDiemDaCuocCon25)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ Con25:
        view25.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocCon25)
        view25.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocCon25)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocCon25.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocCon25)
        //2: CHIỀU NGANG:
        viewDaCuocCon25.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocCon25)
    }
//MARK 40: PHẦN 1: SET UP Ô CON26:
    //A: Ô CON26 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocCon26:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocCon26:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocCon26:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieCon26:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelCon26:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm Con26:
    //2.1: Hàm tổng quát
    func DatCuocOCon26(){
        viewDiemcuocCon26.isHidden = false
        setupViewCuocCon26()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Con26
    func setupViewCuocCon26(){
        view.addSubview(viewDiemcuocCon26)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM Con25 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocCon26.addSubview(sldDiemcuocCon26)
        viewDiemcuocCon26.addSubview(abtnOkieCon26)
        viewDiemcuocCon26.addSubview(abtnCancelCon26)
        viewDiemcuocCon26.addSubview(lblDiemCuocCon26)
        lblDiemCuocCon26.text = String("Đặt cược Con 2, 6: $\(Int(sldDiemcuocCon26.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô Con26:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocCon26)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocCon26)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocCon26.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocCon26,sldDiemcuocCon26)
        abtnOkieCon26.topAnchor.constraint(equalTo: sldDiemcuocCon26.bottomAnchor).isActive = true
        abtnCancelCon26.topAnchor.constraint(equalTo: abtnOkieCon26.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocCon26.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocCon26)
        viewDiemcuocCon26.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocCon26)
        viewDiemcuocCon26.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieCon26,abtnCancelCon26)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocCon26.addTarget(self, action: #selector(ViewController.asldDiemcuocCon26), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieCon26.addTarget(self, action: #selector(ViewController.ActionforBtnOkieCon26), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM Con26, TRỞ VỀ BÀN
        abtnCancelCon26.addTarget(self, action: #selector(ViewController.ActionforBtnHuyCon26), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô Con26:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocCon26(){
        sldDiemcuocCon26.maximumValue = 1 * Float(diem)
        SoDiemCuocCon26 = Int(sldDiemcuocCon26.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocCon26.value = 0
                self.SoDiemCuocCon26 = Int(self.sldDiemcuocCon26.value)
                self.lblDiemCuocCon26.text = String("Đặt cược Con 2, 6: $\(self.SoDiemCuocCon26)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocCon26.text = String("Đặt cược Con 2, 6: $\(SoDiemCuocCon26)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieCon26(){
        SoDiemCuocCon26 = Int(sldDiemcuocCon26.value)
        viewDiemcuocCon26.isHidden = true
        if SoDiemCuocCon26 != 0 && SoDiemCuocCon26 <= diem{
            viewDaCuocCon26.isHidden = false
            lblSoDiemDaCuocCon26.text = String("$\(Int((sldDiemcuocCon26.value)))")
        }else{
            if SoDiemCuocCon26 != 0 && SoDiemCuocCon26 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocCon26.value = Float(self.diem)
                    self.SoDiemCuocCon26 = Int(self.sldDiemcuocCon26.value)
                    self.lblDiemCuocCon26.text = String("Đặt cược Con 2, 6: $\(self.SoDiemCuocCon26)")
                    self.lblSoDiemDaCuocCon26.text = String("$\(Int((self.sldDiemcuocCon26.value)))")
                    self.viewDaCuocCon26.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyCon26(){
        sldDiemcuocCon26.value = 0
        SoDiemCuocCon26 = Int(sldDiemcuocCon26.value)
        lblSoDiemDaCuocCon26.text = String("$\(Int((sldDiemcuocCon26.value)))")
        viewDaCuocCon26.isHidden = true
        viewDiemcuocCon26.isHidden = true
    }
    
    //B: Ô Con26 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocCon26:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocCon26:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Con26:
    func DiemDaDatCuocOCon26(){
        view26.addSubview(viewDaCuocCon26)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô Con26 (LABEL ĐIỂM CƯỢC)
        viewDaCuocCon26.addSubview(lblSoDiemDaCuocCon26)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ Con26:
        view26.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocCon26)
        view26.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocCon26)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocCon26.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocCon26)
        //2: CHIỀU NGANG:
        viewDaCuocCon26.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocCon26)
    }
//MARK 41: PHẦN 1: SET UP Ô CON34:
    //A: Ô CON34 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocCon34:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocCon34:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocCon34:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieCon34:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelCon34:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm Con34:
    //2.1: Hàm tổng quát
    func DatCuocOCon34(){
        viewDiemcuocCon34.isHidden = false
        setupViewCuocCon34()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Con34
    func setupViewCuocCon34(){
        view.addSubview(viewDiemcuocCon34)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM Con25 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocCon34.addSubview(sldDiemcuocCon34)
        viewDiemcuocCon34.addSubview(abtnOkieCon34)
        viewDiemcuocCon34.addSubview(abtnCancelCon34)
        viewDiemcuocCon34.addSubview(lblDiemCuocCon34)
        lblDiemCuocCon34.text = String("Đặt cược Con 3, 4: $\(Int(sldDiemcuocCon34.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô Con26:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocCon34)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocCon34)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocCon34.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocCon34,sldDiemcuocCon34)
        abtnOkieCon34.topAnchor.constraint(equalTo: sldDiemcuocCon34.bottomAnchor).isActive = true
        abtnCancelCon34.topAnchor.constraint(equalTo: abtnOkieCon34.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocCon34.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocCon34)
        viewDiemcuocCon34.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocCon34)
        viewDiemcuocCon34.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieCon34,abtnCancelCon34)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocCon34.addTarget(self, action: #selector(ViewController.asldDiemcuocCon34), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieCon34.addTarget(self, action: #selector(ViewController.ActionforBtnOkieCon34), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM Con34, TRỞ VỀ BÀN
        abtnCancelCon34.addTarget(self, action: #selector(ViewController.ActionforBtnHuyCon34), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô Con34:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocCon34(){
        sldDiemcuocCon34.maximumValue = 1 * Float(diem)
        SoDiemCuocCon34 = Int(sldDiemcuocCon34.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocCon34.value = 0
                self.SoDiemCuocCon34 = Int(self.sldDiemcuocCon34.value)
                self.lblDiemCuocCon34.text = String("Đặt cược Con 3, 4: $\(self.SoDiemCuocCon34)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocCon34.text = String("Đặt cược Con 3, 4: $\(SoDiemCuocCon34)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieCon34(){
        SoDiemCuocCon34 = Int(sldDiemcuocCon34.value)
        viewDiemcuocCon34.isHidden = true
        if SoDiemCuocCon34 != 0 && SoDiemCuocCon34 <= diem{
            viewDaCuocCon34.isHidden = false
            lblSoDiemDaCuocCon34.text = String("$\(Int((sldDiemcuocCon34.value)))")
        }else{
            if SoDiemCuocCon34 != 0 && SoDiemCuocCon34 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocCon34.value = Float(self.diem)
                    self.SoDiemCuocCon34 = Int(self.sldDiemcuocCon34.value)
                    self.lblDiemCuocCon34.text = String("Đặt cược Con 3, 4: $\(self.SoDiemCuocCon34)")
                    self.lblSoDiemDaCuocCon34.text = String("$\(Int((self.sldDiemcuocCon34.value)))")
                    self.viewDaCuocCon34.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyCon34(){
        sldDiemcuocCon34.value = 0
        SoDiemCuocCon34 = Int(sldDiemcuocCon34.value)
        lblSoDiemDaCuocCon34.text = String("$\(Int((sldDiemcuocCon34.value)))")
        viewDaCuocCon34.isHidden = true
        viewDiemcuocCon34.isHidden = true
    }
    
    //B: Ô Con34 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocCon34:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocCon34:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Con34:
    func DiemDaDatCuocOCon34(){
        view34.addSubview(viewDaCuocCon34)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô Con34 (LABEL ĐIỂM CƯỢC)
        viewDaCuocCon34.addSubview(lblSoDiemDaCuocCon34)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ Con34:
        view34.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocCon34)
        view34.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocCon34)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocCon34.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocCon34)
        //2: CHIỀU NGANG:
        viewDaCuocCon34.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocCon34)
    }
//MARK 42: PHẦN 1: SET UP Ô CON35:
    //A: Ô CON35 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocCon35:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocCon35:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocCon35:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieCon35:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelCon35:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm Con35:
    //2.1: Hàm tổng quát
    func DatCuocOCon35(){
        viewDiemcuocCon35.isHidden = false
        setupViewCuocCon35()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Con35
    func setupViewCuocCon35(){
        view.addSubview(viewDiemcuocCon35)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM Con35 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocCon35.addSubview(sldDiemcuocCon35)
        viewDiemcuocCon35.addSubview(abtnOkieCon35)
        viewDiemcuocCon35.addSubview(abtnCancelCon35)
        viewDiemcuocCon35.addSubview(lblDiemCuocCon35)
        lblDiemCuocCon35.text = String("Đặt cược Con 3, 5: $\(Int(sldDiemcuocCon35.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô Con35:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocCon35)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocCon35)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocCon35.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocCon35,sldDiemcuocCon35)
        abtnOkieCon35.topAnchor.constraint(equalTo: sldDiemcuocCon35.bottomAnchor).isActive = true
        abtnCancelCon35.topAnchor.constraint(equalTo: abtnOkieCon35.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocCon35.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocCon35)
        viewDiemcuocCon35.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocCon35)
        viewDiemcuocCon35.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieCon35,abtnCancelCon35)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocCon35.addTarget(self, action: #selector(ViewController.asldDiemcuocCon35), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieCon35.addTarget(self, action: #selector(ViewController.ActionforBtnOkieCon35), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM Con35, TRỞ VỀ BÀN
        abtnCancelCon35.addTarget(self, action: #selector(ViewController.ActionforBtnHuyCon35), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô Con35:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocCon35(){
        sldDiemcuocCon35.maximumValue = 1 * Float(diem)
        SoDiemCuocCon35 = Int(sldDiemcuocCon35.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocCon35.value = 0
                self.SoDiemCuocCon35 = Int(self.sldDiemcuocCon35.value)
                self.lblDiemCuocCon35.text = String("Đặt cược Con 3, 5: $\(self.SoDiemCuocCon35)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocCon35.text = String("Đặt cược Con 3, 5: $\(SoDiemCuocCon35)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieCon35(){
        SoDiemCuocCon35 = Int(sldDiemcuocCon35.value)
        viewDiemcuocCon35.isHidden = true
        if SoDiemCuocCon35 != 0 && SoDiemCuocCon35 <= diem{
            viewDaCuocCon35.isHidden = false
            lblSoDiemDaCuocCon35.text = String("$\(Int((sldDiemcuocCon35.value)))")
        }else{
            if SoDiemCuocCon35 != 0 && SoDiemCuocCon35 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocCon35.value = Float(self.diem)
                    self.SoDiemCuocCon35 = Int(self.sldDiemcuocCon35.value)
                    self.lblDiemCuocCon35.text = String("Đặt cược Con 3, 5: $\(self.SoDiemCuocCon35)")
                    self.lblSoDiemDaCuocCon35.text = String("$\(Int((self.sldDiemcuocCon35.value)))")
                    self.viewDaCuocCon35.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyCon35(){
        sldDiemcuocCon35.value = 0
        SoDiemCuocCon35 = Int(sldDiemcuocCon35.value)
        lblSoDiemDaCuocCon35.text = String("$\(Int((sldDiemcuocCon35.value)))")
        viewDaCuocCon35.isHidden = true
        viewDiemcuocCon35.isHidden = true
    }
    
    //B: Ô Con35 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocCon35:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocCon35:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Con35:
    func DiemDaDatCuocOCon35(){
        view35.addSubview(viewDaCuocCon35)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô Con34 (LABEL ĐIỂM CƯỢC)
        viewDaCuocCon35.addSubview(lblSoDiemDaCuocCon35)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ Con35:
        view35.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocCon35)
        view35.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocCon35)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocCon35.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocCon35)
        //2: CHIỀU NGANG:
        viewDaCuocCon35.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocCon35)
    }
//MARK 43: PHẦN 1: SET UP Ô CON36:
    //A: Ô CON36 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocCon36:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocCon36:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocCon36:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieCon36:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelCon36:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm Con36:
    //2.1: Hàm tổng quát
    func DatCuocOCon36(){
        viewDiemcuocCon36.isHidden = false
        setupViewCuocCon36()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Con36
    func setupViewCuocCon36(){
        view.addSubview(viewDiemcuocCon36)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM Con35 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocCon36.addSubview(sldDiemcuocCon36)
        viewDiemcuocCon36.addSubview(abtnOkieCon36)
        viewDiemcuocCon36.addSubview(abtnCancelCon36)
        viewDiemcuocCon36.addSubview(lblDiemCuocCon36)
        lblDiemCuocCon36.text = String("Đặt cược Con 3, 6: $\(Int(sldDiemcuocCon36.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô Con36:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocCon36)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocCon36)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocCon36.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocCon36,sldDiemcuocCon36)
        abtnOkieCon36.topAnchor.constraint(equalTo: sldDiemcuocCon36.bottomAnchor).isActive = true
        abtnCancelCon36.topAnchor.constraint(equalTo: abtnOkieCon36.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocCon36.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocCon36)
        viewDiemcuocCon36.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocCon36)
        viewDiemcuocCon36.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieCon36,abtnCancelCon36)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocCon36.addTarget(self, action: #selector(ViewController.asldDiemcuocCon36), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieCon36.addTarget(self, action: #selector(ViewController.ActionforBtnOkieCon36), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM Con36, TRỞ VỀ BÀN
        abtnCancelCon36.addTarget(self, action: #selector(ViewController.ActionforBtnHuyCon36), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô Con36:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocCon36(){
        sldDiemcuocCon36.maximumValue = 1 * Float(diem)
        SoDiemCuocCon36 = Int(sldDiemcuocCon36.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocCon36.value = 0
                self.SoDiemCuocCon36 = Int(self.sldDiemcuocCon36.value)
                self.lblDiemCuocCon36.text = String("Đặt cược Con 3, 6: $\(self.SoDiemCuocCon36)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocCon36.text = String("Đặt cược Con 3, 6: $\(SoDiemCuocCon36)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieCon36(){
        SoDiemCuocCon36 = Int(sldDiemcuocCon36.value)
        viewDiemcuocCon36.isHidden = true
        if SoDiemCuocCon36 != 0 && SoDiemCuocCon36 <= diem{
            viewDaCuocCon36.isHidden = false
            lblSoDiemDaCuocCon36.text = String("$\(Int((sldDiemcuocCon36.value)))")
        }else{
            if SoDiemCuocCon36 != 0 && SoDiemCuocCon36 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocCon36.value = Float(self.diem)
                    self.SoDiemCuocCon36 = Int(self.sldDiemcuocCon36.value)
                    self.lblDiemCuocCon36.text = String("Đặt cược Con 3, 6: $\(self.SoDiemCuocCon36)")
                    self.lblSoDiemDaCuocCon36.text = String("$\(Int((self.sldDiemcuocCon36.value)))")
                    self.viewDaCuocCon36.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyCon36(){
        sldDiemcuocCon36.value = 0
        SoDiemCuocCon36 = Int(sldDiemcuocCon36.value)
        lblSoDiemDaCuocCon36.text = String("$\(Int((sldDiemcuocCon36.value)))")
        viewDaCuocCon36.isHidden = true
        viewDiemcuocCon36.isHidden = true
    }
    
    //B: Ô Con36 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocCon36:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocCon36:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Con36:
    func DiemDaDatCuocOCon36(){
        view36.addSubview(viewDaCuocCon36)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô Con36 (LABEL ĐIỂM CƯỢC)
        viewDaCuocCon36.addSubview(lblSoDiemDaCuocCon36)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ Con36:
        view36.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocCon36)
        view36.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocCon36)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocCon36.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocCon36)
        //2: CHIỀU NGANG:
        viewDaCuocCon36.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocCon36)
    }
//MARK 44: PHẦN 1: SET UP Ô CON45:
    //A: Ô CON45 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocCon45:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocCon45:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocCon45:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieCon45:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelCon45:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm Con45:
    //2.1: Hàm tổng quát
    func DatCuocOCon45(){
        viewDiemcuocCon45.isHidden = false
        setupViewCuocCon45()
    }
////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Con45
    func setupViewCuocCon45(){
        view.addSubview(viewDiemcuocCon45)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM Con35 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocCon45.addSubview(sldDiemcuocCon45)
        viewDiemcuocCon45.addSubview(abtnOkieCon45)
        viewDiemcuocCon45.addSubview(abtnCancelCon45)
        viewDiemcuocCon45.addSubview(lblDiemCuocCon45)
        lblDiemCuocCon45.text = String("Đặt cược Con 4, 5: $\(Int(sldDiemcuocCon45.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô Con45:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocCon45)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocCon45)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocCon45.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocCon45,sldDiemcuocCon45)
        abtnOkieCon45.topAnchor.constraint(equalTo: sldDiemcuocCon45.bottomAnchor).isActive = true
        abtnCancelCon45.topAnchor.constraint(equalTo: abtnOkieCon45.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocCon45.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocCon45)
        viewDiemcuocCon45.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocCon45)
        viewDiemcuocCon45.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieCon45,abtnCancelCon45)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocCon45.addTarget(self, action: #selector(ViewController.asldDiemcuocCon45), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieCon45.addTarget(self, action: #selector(ViewController.ActionforBtnOkieCon45), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM Con45, TRỞ VỀ BÀN
        abtnCancelCon45.addTarget(self, action: #selector(ViewController.ActionforBtnHuyCon45), for: UIControlEvents.touchUpInside)
    }

    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô Con45:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocCon45(){
        sldDiemcuocCon45.maximumValue = 1 * Float(diem)
        SoDiemCuocCon45 = Int(sldDiemcuocCon45.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocCon45.value = 0
                self.SoDiemCuocCon45 = Int(self.sldDiemcuocCon45.value)
                self.lblDiemCuocCon45.text = String("Đặt cược Con 4, 5: $\(self.SoDiemCuocCon45)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocCon45.text = String("Đặt cược Con 4, 5: $\(SoDiemCuocCon45)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieCon45(){
        SoDiemCuocCon45 = Int(sldDiemcuocCon45.value)
        viewDiemcuocCon45.isHidden = true
        if SoDiemCuocCon45 != 0 && SoDiemCuocCon45 <= diem{
            viewDaCuocCon45.isHidden = false
            lblSoDiemDaCuocCon45.text = String("$\(Int((sldDiemcuocCon45.value)))")
        }else{
            if SoDiemCuocCon45 != 0 && SoDiemCuocCon45 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocCon45.value = Float(self.diem)
                    self.SoDiemCuocCon45 = Int(self.sldDiemcuocCon45.value)
                    self.lblDiemCuocCon45.text = String("Đặt cược Con 4, 5: $\(self.SoDiemCuocCon45)")
                    self.lblSoDiemDaCuocCon45.text = String("$\(Int((self.sldDiemcuocCon45.value)))")
                    self.viewDaCuocCon45.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyCon45(){
        sldDiemcuocCon45.value = 0
        SoDiemCuocCon45 = Int(sldDiemcuocCon45.value)
        lblSoDiemDaCuocCon45.text = String("$\(Int((sldDiemcuocCon45.value)))")
        viewDaCuocCon45.isHidden = true
        viewDiemcuocCon45.isHidden = true
    }
    
    //B: Ô Con45 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocCon45:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocCon45:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Con45:
    func DiemDaDatCuocOCon45(){
        view45.addSubview(viewDaCuocCon45)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô Con36 (LABEL ĐIỂM CƯỢC)
        viewDaCuocCon45.addSubview(lblSoDiemDaCuocCon45)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ Con45:
        view45.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocCon45)
        view45.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocCon45)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocCon45.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocCon45)
        //2: CHIỀU NGANG:
        viewDaCuocCon45.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocCon45)
    }
//MARK 45: PHẦN 1: SET UP Ô CON46:
    //A: Ô CON46 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocCon46:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocCon46:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocCon46:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieCon46:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelCon46:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm Con46:
    //2.1: Hàm tổng quát
    func DatCuocOCon46(){
        viewDiemcuocCon46.isHidden = false
        setupViewCuocCon46()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Con46
    func setupViewCuocCon46(){
        view.addSubview(viewDiemcuocCon46)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM Con46 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocCon46.addSubview(sldDiemcuocCon46)
        viewDiemcuocCon46.addSubview(abtnOkieCon46)
        viewDiemcuocCon46.addSubview(abtnCancelCon46)
        viewDiemcuocCon46.addSubview(lblDiemCuocCon46)
        lblDiemCuocCon46.text = String("Đặt cược Con 4, 6: $\(Int(sldDiemcuocCon46.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô Con46:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocCon46)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocCon46)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocCon46.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocCon46,sldDiemcuocCon46)
        abtnOkieCon46.topAnchor.constraint(equalTo: sldDiemcuocCon46.bottomAnchor).isActive = true
        abtnCancelCon46.topAnchor.constraint(equalTo: abtnOkieCon46.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocCon46.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocCon46)
        viewDiemcuocCon46.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocCon46)
        viewDiemcuocCon46.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieCon46,abtnCancelCon46)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocCon46.addTarget(self, action: #selector(ViewController.asldDiemcuocCon46), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieCon46.addTarget(self, action: #selector(ViewController.ActionforBtnOkieCon46), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM Con45, TRỞ VỀ BÀN
        abtnCancelCon46.addTarget(self, action: #selector(ViewController.ActionforBtnHuyCon46), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô Con46:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocCon46(){
        sldDiemcuocCon46.maximumValue = 1 * Float(diem)
        SoDiemCuocCon46 = Int(sldDiemcuocCon46.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocCon46.value = 0
                self.SoDiemCuocCon46 = Int(self.sldDiemcuocCon46.value)
                self.lblDiemCuocCon46.text = String("Đặt cược Con 4, 6: $\(self.SoDiemCuocCon46)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocCon46.text = String("Đặt cược Con 4, 6: $\(SoDiemCuocCon46)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieCon46(){
        SoDiemCuocCon46 = Int(sldDiemcuocCon46.value)
        viewDiemcuocCon46.isHidden = true
        if SoDiemCuocCon46 != 0 && SoDiemCuocCon46 <= diem{
            viewDaCuocCon46.isHidden = false
            lblSoDiemDaCuocCon46.text = String("$\(Int((sldDiemcuocCon46.value)))")
        }else{
            if SoDiemCuocCon46 != 0 && SoDiemCuocCon46 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocCon46.value = Float(self.diem)
                    self.SoDiemCuocCon46 = Int(self.sldDiemcuocCon46.value)
                    self.lblDiemCuocCon46.text = String("Đặt cược Con 4, 6: $\(self.SoDiemCuocCon46)")
                    self.lblSoDiemDaCuocCon46.text = String("$\(Int((self.sldDiemcuocCon46.value)))")
                    self.viewDaCuocCon46.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyCon46(){
        sldDiemcuocCon46.value = 0
        SoDiemCuocCon46 = Int(sldDiemcuocCon46.value)
        lblSoDiemDaCuocCon46.text = String("$\(Int((sldDiemcuocCon46.value)))")
        viewDaCuocCon46.isHidden = true
        viewDiemcuocCon46.isHidden = true
    }
    
    //B: Ô Con46 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocCon46:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocCon46:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Con46:
    func DiemDaDatCuocOCon46(){
        view46.addSubview(viewDaCuocCon46)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô Con46 (LABEL ĐIỂM CƯỢC)
        viewDaCuocCon46.addSubview(lblSoDiemDaCuocCon46)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ Con46:
        view46.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocCon46)
        view46.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocCon46)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocCon46.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocCon46)
        //2: CHIỀU NGANG:
        viewDaCuocCon46.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocCon46)
    }
//MARK 46: PHẦN 1: SET UP Ô CON56:
    //A: Ô CON56 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocCon56:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocCon56:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocCon56:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieCon56:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelCon56:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm Con56:
    //2.1: Hàm tổng quát
    func DatCuocOCon56(){
        viewDiemcuocCon56.isHidden = false
        setupViewCuocCon56()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Con56
    func setupViewCuocCon56(){
        view.addSubview(viewDiemcuocCon56)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM Con56 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocCon56.addSubview(sldDiemcuocCon56)
        viewDiemcuocCon56.addSubview(abtnOkieCon56)
        viewDiemcuocCon56.addSubview(abtnCancelCon56)
        viewDiemcuocCon56.addSubview(lblDiemCuocCon56)
        lblDiemCuocCon56.text = String("Đặt cược Con 5, 6: $\(Int(sldDiemcuocCon56.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô Con56:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocCon56)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocCon56)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocCon56.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocCon56,sldDiemcuocCon56)
        abtnOkieCon56.topAnchor.constraint(equalTo: sldDiemcuocCon56.bottomAnchor).isActive = true
        abtnCancelCon56.topAnchor.constraint(equalTo: abtnOkieCon56.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocCon56.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocCon56)
        viewDiemcuocCon56.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocCon56)
        viewDiemcuocCon56.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieCon56,abtnCancelCon56)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocCon56.addTarget(self, action: #selector(ViewController.asldDiemcuocCon56), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieCon56.addTarget(self, action: #selector(ViewController.ActionforBtnOkieCon56), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM Con56, TRỞ VỀ BÀN
        abtnCancelCon56.addTarget(self, action: #selector(ViewController.ActionforBtnHuyCon56), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô Con56:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocCon56(){
        sldDiemcuocCon56.maximumValue = 1 * Float(diem)
        SoDiemCuocCon56 = Int(sldDiemcuocCon56.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocCon56.value = 0
                self.SoDiemCuocCon56 = Int(self.sldDiemcuocCon56.value)
                self.lblDiemCuocCon56.text = String("Đặt cược Con 4, 6: $\(self.SoDiemCuocCon56)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocCon56.text = String("Đặt cược Con 5, 6: $\(SoDiemCuocCon56)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieCon56(){
        SoDiemCuocCon56 = Int(sldDiemcuocCon56.value)
        viewDiemcuocCon56.isHidden = true
        if SoDiemCuocCon56 != 0 && SoDiemCuocCon56 <= diem{
            viewDaCuocCon56.isHidden = false
            lblSoDiemDaCuocCon56.text = String("$\(Int((sldDiemcuocCon56.value)))")
        }else{
            if SoDiemCuocCon56 != 0 && SoDiemCuocCon56 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocCon56.value = Float(self.diem)
                    self.SoDiemCuocCon56 = Int(self.sldDiemcuocCon56.value)
                    self.lblDiemCuocCon56.text = String("Đặt cược Con 5, 6: $\(self.SoDiemCuocCon56)")
                    self.lblSoDiemDaCuocCon56.text = String("$\(Int((self.sldDiemcuocCon56.value)))")
                    self.viewDaCuocCon56.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyCon56(){
        sldDiemcuocCon56.value = 0
        SoDiemCuocCon56 = Int(sldDiemcuocCon56.value)
        lblSoDiemDaCuocCon56.text = String("$\(Int((sldDiemcuocCon56.value)))")
        viewDaCuocCon56.isHidden = true
        viewDiemcuocCon56.isHidden = true
    }
    
    //B: Ô Con56 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocCon56:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocCon56:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Con56:
    func DiemDaDatCuocOCon56(){
        view56.addSubview(viewDaCuocCon56)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô Con56 (LABEL ĐIỂM CƯỢC)
        viewDaCuocCon56.addSubview(lblSoDiemDaCuocCon56)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ Con56:
        view56.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocCon56)
        view56.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocCon56)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocCon56.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocCon56)
        //2: CHIỀU NGANG:
        viewDaCuocCon56.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocCon56)
    }
// MARK: SET UP VIEW TỪNG CON SỐ:
    let viewConSo1:UIView = {
        let v = UIView()
        v.backgroundColor = .none
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let viewConSo2:UIView = {
        let v = UIView()
      //  v.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let viewConSo3:UIView = {
        let v = UIView()
//        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let viewConSo4:UIView = {
        let v = UIView()
//        v.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let viewConSo5:UIView = {
        let v = UIView()
//        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let viewConSo6:UIView = {
        let v = UIView()
//        v.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    func setupviewtungconso(){
        view123456.addSubview(viewConSo1)
        view123456.addSubview(viewConSo2)
        view123456.addSubview(viewConSo3)
        view123456.addSubview(viewConSo4)
        view123456.addSubview(viewConSo5)
        view123456.addSubview(viewConSo6)
        
        
        viewConSo1.topAnchor.constraint(equalTo: view123456.topAnchor).isActive = true
        viewConSo2.topAnchor.constraint(equalTo: view123456.topAnchor).isActive = true
        viewConSo3.topAnchor.constraint(equalTo: view123456.topAnchor).isActive = true
        viewConSo4.topAnchor.constraint(equalTo: view123456.topAnchor).isActive = true
        viewConSo5.topAnchor.constraint(equalTo: view123456.topAnchor).isActive = true
        viewConSo6.topAnchor.constraint(equalTo: view123456.topAnchor).isActive = true
        
        viewConSo1.bottomAnchor.constraint(equalTo: view123456.bottomAnchor).isActive = true
        viewConSo1.leftAnchor.constraint(equalTo: view123456.leftAnchor).isActive = true
        viewConSo1.widthAnchor.constraint(equalTo: view123456.widthAnchor, multiplier:1/6).isActive = true

        viewConSo2.bottomAnchor.constraint(equalTo: view123456.bottomAnchor).isActive = true
        viewConSo2.leftAnchor.constraint(equalTo: viewConSo1.rightAnchor).isActive = true
        viewConSo2.widthAnchor.constraint(equalTo: view123456.widthAnchor, multiplier: 1/6).isActive = true

        viewConSo3.bottomAnchor.constraint(equalTo: view123456.bottomAnchor).isActive = true
        viewConSo3.leftAnchor.constraint(equalTo: viewConSo2.rightAnchor).isActive = true
        viewConSo3.widthAnchor.constraint(equalTo: view123456.widthAnchor, multiplier: 1/6).isActive = true
        
        viewConSo4.bottomAnchor.constraint(equalTo: view123456.bottomAnchor).isActive = true
        viewConSo4.leftAnchor.constraint(equalTo: viewConSo3.rightAnchor).isActive = true
        viewConSo4.widthAnchor.constraint(equalTo: view123456.widthAnchor, multiplier: 1/6).isActive = true
        
        viewConSo5.bottomAnchor.constraint(equalTo: view123456.bottomAnchor).isActive = true
        viewConSo5.leftAnchor.constraint(equalTo: viewConSo4.rightAnchor).isActive = true
        viewConSo5.widthAnchor.constraint(equalTo: view123456.widthAnchor, multiplier: 1/6).isActive = true
        
        viewConSo6.bottomAnchor.constraint(equalTo: view123456.bottomAnchor).isActive = true
        viewConSo6.leftAnchor.constraint(equalTo: viewConSo5.rightAnchor).isActive = true
        viewConSo6.widthAnchor.constraint(equalTo: view123456.widthAnchor, multiplier: 1/6).isActive = true
    }
    
    
//MARK 47: PHẦN 1: SET UP Ô CON 1:
    //A: Ô CON SO 1 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocCon1:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocCon1:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocCon1:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieCon1:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelCon1:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm Con1:
    //2.1: Hàm tổng quát
    func DatCuocOCon1(){
        viewDiemcuocCon1.isHidden = false
        setupViewCuocCon1()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Con1
    func setupViewCuocCon1(){
        view.addSubview(viewDiemcuocCon1)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM Con1 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocCon1.addSubview(sldDiemcuocCon1)
        viewDiemcuocCon1.addSubview(abtnOkieCon1)
        viewDiemcuocCon1.addSubview(abtnCancelCon1)
        viewDiemcuocCon1.addSubview(lblDiemCuocCon1)
        lblDiemCuocCon1.text = String("Đặt cược Con 1: $\(Int(sldDiemcuocCon1.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô Con1:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocCon1)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocCon1)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocCon1.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocCon1,sldDiemcuocCon1)
        abtnOkieCon1.topAnchor.constraint(equalTo: sldDiemcuocCon1.bottomAnchor).isActive = true
        abtnCancelCon1.topAnchor.constraint(equalTo: abtnOkieCon1.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocCon1.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocCon1)
        viewDiemcuocCon1.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocCon1)
        viewDiemcuocCon1.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieCon1,abtnCancelCon1)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocCon1.addTarget(self, action: #selector(ViewController.asldDiemcuocCon1), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieCon1.addTarget(self, action: #selector(ViewController.ActionforBtnOkieCon1), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM Con1, TRỞ VỀ BÀN
        abtnCancelCon1.addTarget(self, action: #selector(ViewController.ActionforBtnHuyCon1), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô Con1:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocCon1(){
        sldDiemcuocCon1.maximumValue = 1 * Float(diem)
        SoDiemCuocCon1 = Int(sldDiemcuocCon1.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocCon1.value = 0
                self.SoDiemCuocCon1 = Int(self.sldDiemcuocCon1.value)
                self.lblDiemCuocCon1.text = String("Đặt cược Con 1: $\(self.SoDiemCuocCon1)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocCon1.text = String("Đặt cược Con 1: $\(SoDiemCuocCon1)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieCon1(){
        SoDiemCuocCon1 = Int(sldDiemcuocCon1.value)
        viewDiemcuocCon1.isHidden = true
        if SoDiemCuocCon1 != 0 && SoDiemCuocCon1 <= diem{
            viewDaCuocCon1.isHidden = false
            lblSoDiemDaCuocCon1.text = String("$\(Int((sldDiemcuocCon1.value)))")
        }else{
            if SoDiemCuocCon1 != 0 && SoDiemCuocCon1 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocCon1.value = Float(self.diem)
                    self.SoDiemCuocCon1 = Int(self.sldDiemcuocCon1.value)
                    self.lblDiemCuocCon1.text = String("Đặt cược Con 1: $\(self.SoDiemCuocCon1)")
                    self.lblSoDiemDaCuocCon1.text = String("$\(Int((self.sldDiemcuocCon1.value)))")
                    self.viewDaCuocCon1.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyCon1(){
        sldDiemcuocCon1.value = 0
        SoDiemCuocCon1 = Int(sldDiemcuocCon1.value)
        lblSoDiemDaCuocCon1.text = String("$\(Int((sldDiemcuocCon1.value)))")
        viewDaCuocCon1.isHidden = true
        viewDiemcuocCon1.isHidden = true
    }
    
    //B: Ô Con1 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocCon1:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocCon1:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Con56:
    func DiemDaDatCuocOCon1(){
        viewConSo1.addSubview(viewDaCuocCon1)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô Con1 (LABEL ĐIỂM CƯỢC)
        viewDaCuocCon1.addSubview(lblSoDiemDaCuocCon1)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ Con1:
        viewConSo1.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocCon1)
        viewConSo1.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocCon1)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocCon1.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocCon1)
        //2: CHIỀU NGANG:
        viewDaCuocCon1.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocCon1)
    }
//MARK 48: PHẦN 1: SET UP Ô CON 2:
    //A: Ô CON SO 2 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocCon2:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocCon2:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocCon2:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieCon2:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelCon2:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm Con2:
    //2.1: Hàm tổng quát
    func DatCuocOCon2(){
        viewDiemcuocCon2.isHidden = false
        setupViewCuocCon2()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Con2
    func setupViewCuocCon2(){
        view.addSubview(viewDiemcuocCon2)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM Con2 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocCon2.addSubview(sldDiemcuocCon2)
        viewDiemcuocCon2.addSubview(abtnOkieCon2)
        viewDiemcuocCon2.addSubview(abtnCancelCon2)
        viewDiemcuocCon2.addSubview(lblDiemCuocCon2)
        lblDiemCuocCon2.text = String("Đặt cược Con 2: $\(Int(sldDiemcuocCon2.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô Con2:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocCon2)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocCon2)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocCon2.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocCon2,sldDiemcuocCon2)
        abtnOkieCon2.topAnchor.constraint(equalTo: sldDiemcuocCon2.bottomAnchor).isActive = true
        abtnCancelCon2.topAnchor.constraint(equalTo: abtnOkieCon2.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocCon2.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocCon2)
        viewDiemcuocCon2.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocCon2)
        viewDiemcuocCon2.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieCon2,abtnCancelCon2)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocCon2.addTarget(self, action: #selector(ViewController.asldDiemcuocCon2), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieCon2.addTarget(self, action: #selector(ViewController.ActionforBtnOkieCon2), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM Con2, TRỞ VỀ BÀN
        abtnCancelCon2.addTarget(self, action: #selector(ViewController.ActionforBtnHuyCon2), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô Con2:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocCon2(){
        sldDiemcuocCon2.maximumValue = 1 * Float(diem)
        SoDiemCuocCon2 = Int(sldDiemcuocCon2.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocCon2.value = 0
                self.SoDiemCuocCon2 = Int(self.sldDiemcuocCon2.value)
                self.lblDiemCuocCon2.text = String("Đặt cược Con 2: $\(self.SoDiemCuocCon2)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocCon2.text = String("Đặt cược Con 2: $\(SoDiemCuocCon2)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieCon2(){
        SoDiemCuocCon2 = Int(sldDiemcuocCon2.value)
        viewDiemcuocCon2.isHidden = true
        if SoDiemCuocCon2 != 0 && SoDiemCuocCon2 <= diem{
            viewDaCuocCon2.isHidden = false
            lblSoDiemDaCuocCon2.text = String("$\(Int((sldDiemcuocCon2.value)))")
        }else{
            if SoDiemCuocCon2 != 0 && SoDiemCuocCon2 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocCon2.value = Float(self.diem)
                    self.SoDiemCuocCon2 = Int(self.sldDiemcuocCon2.value)
                    self.lblDiemCuocCon2.text = String("Đặt cược Con 2: $\(self.SoDiemCuocCon2)")
                    self.lblSoDiemDaCuocCon2.text = String("$\(Int((self.sldDiemcuocCon2.value)))")
                    self.viewDaCuocCon2.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyCon2(){
        sldDiemcuocCon2.value = 0
        SoDiemCuocCon2 = Int(sldDiemcuocCon2.value)
        lblSoDiemDaCuocCon2.text = String("$\(Int((sldDiemcuocCon2.value)))")
        viewDaCuocCon2.isHidden = true
        viewDiemcuocCon2.isHidden = true
    }
    
    //B: Ô Con2 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocCon2:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocCon2:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Con2:
    func DiemDaDatCuocOCon2(){
        viewConSo2.addSubview(viewDaCuocCon2)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô Con2 (LABEL ĐIỂM CƯỢC)
        viewDaCuocCon2.addSubview(lblSoDiemDaCuocCon2)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ Con2:
        viewConSo2.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocCon2)
        viewConSo2.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocCon2)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocCon2.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocCon2)
        //2: CHIỀU NGANG:
        viewDaCuocCon2.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocCon2)
    }
//MARK 49: PHẦN 1: SET UP Ô CON 3:
    //A: Ô CON SO 3 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocCon3:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocCon3:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocCon3:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieCon3:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelCon3:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm Con3:
    //2.1: Hàm tổng quát
    func DatCuocOCon3(){
        viewDiemcuocCon3.isHidden = false
        setupViewCuocCon3()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Con3
    func setupViewCuocCon3(){
        view.addSubview(viewDiemcuocCon3)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM Con3 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocCon3.addSubview(sldDiemcuocCon3)
        viewDiemcuocCon3.addSubview(abtnOkieCon3)
        viewDiemcuocCon3.addSubview(abtnCancelCon3)
        viewDiemcuocCon3.addSubview(lblDiemCuocCon3)
        lblDiemCuocCon3.text = String("Đặt cược Con 3: $\(Int(sldDiemcuocCon3.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô Con3:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocCon3)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocCon3)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocCon3.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocCon3,sldDiemcuocCon3)
        abtnOkieCon3.topAnchor.constraint(equalTo: sldDiemcuocCon3.bottomAnchor).isActive = true
        abtnCancelCon3.topAnchor.constraint(equalTo: abtnOkieCon3.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocCon3.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocCon3)
        viewDiemcuocCon3.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocCon3)
        viewDiemcuocCon3.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieCon3,abtnCancelCon3)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocCon3.addTarget(self, action: #selector(ViewController.asldDiemcuocCon3), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieCon3.addTarget(self, action: #selector(ViewController.ActionforBtnOkieCon3), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM Con2, TRỞ VỀ BÀN
        abtnCancelCon3.addTarget(self, action: #selector(ViewController.ActionforBtnHuyCon3), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô Con3:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocCon3(){
        sldDiemcuocCon3.maximumValue = 1 * Float(diem)
        SoDiemCuocCon3 = Int(sldDiemcuocCon3.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocCon3.value = 0
                self.SoDiemCuocCon3 = Int(self.sldDiemcuocCon3.value)
                self.lblDiemCuocCon3.text = String("Đặt cược Con 3: $\(self.SoDiemCuocCon3)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocCon3.text = String("Đặt cược Con 3: $\(SoDiemCuocCon3)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieCon3(){
        SoDiemCuocCon3 = Int(sldDiemcuocCon3.value)
        viewDiemcuocCon3.isHidden = true
        if SoDiemCuocCon3 != 0 && SoDiemCuocCon3 <= diem{
            viewDaCuocCon3.isHidden = false
            lblSoDiemDaCuocCon3.text = String("$\(Int((sldDiemcuocCon3.value)))")
        }else{
            if SoDiemCuocCon3 != 0 && SoDiemCuocCon3 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocCon3.value = Float(self.diem)
                    self.SoDiemCuocCon3 = Int(self.sldDiemcuocCon3.value)
                    self.lblDiemCuocCon3.text = String("Đặt cược Con 3: $\(self.SoDiemCuocCon3)")
                    self.lblSoDiemDaCuocCon3.text = String("$\(Int((self.sldDiemcuocCon3.value)))")
                    self.viewDaCuocCon3.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyCon3(){
        sldDiemcuocCon3.value = 0
        SoDiemCuocCon3 = Int(sldDiemcuocCon3.value)
        lblSoDiemDaCuocCon3.text = String("$\(Int((sldDiemcuocCon3.value)))")
        viewDaCuocCon3.isHidden = true
        viewDiemcuocCon3.isHidden = true
    }
    
    //B: Ô Con3 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocCon3:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocCon3:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Con3:
    func DiemDaDatCuocOCon3(){
        viewConSo3.addSubview(viewDaCuocCon3)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô Con3 (LABEL ĐIỂM CƯỢC)
        viewDaCuocCon3.addSubview(lblSoDiemDaCuocCon3)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ Con3:
        viewConSo3.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocCon3)
        viewConSo3.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocCon3)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocCon3.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocCon3)
        //2: CHIỀU NGANG:
        viewDaCuocCon3.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocCon3)
    }
//MARK 50: PHẦN 1: SET UP Ô CON 4:
    //A: Ô CON SO 4 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocCon4:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocCon4:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocCon4:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieCon4:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelCon4:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm Con4:
    //2.1: Hàm tổng quát
    func DatCuocOCon4(){
        viewDiemcuocCon4.isHidden = false
        setupViewCuocCon4()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Con4
    func setupViewCuocCon4(){
        view.addSubview(viewDiemcuocCon4)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM Con3 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocCon4.addSubview(sldDiemcuocCon4)
        viewDiemcuocCon4.addSubview(abtnOkieCon4)
        viewDiemcuocCon4.addSubview(abtnCancelCon4)
        viewDiemcuocCon4.addSubview(lblDiemCuocCon4)
        lblDiemCuocCon4.text = String("Đặt cược Con 4: $\(Int(sldDiemcuocCon4.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô Con4:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocCon4)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocCon4)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocCon4.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocCon4,sldDiemcuocCon4)
        abtnOkieCon4.topAnchor.constraint(equalTo: sldDiemcuocCon4.bottomAnchor).isActive = true
        abtnCancelCon4.topAnchor.constraint(equalTo: abtnOkieCon4.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocCon4.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocCon4)
        viewDiemcuocCon4.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocCon4)
        viewDiemcuocCon4.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieCon4,abtnCancelCon4)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocCon4.addTarget(self, action: #selector(ViewController.asldDiemcuocCon4), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieCon4.addTarget(self, action: #selector(ViewController.ActionforBtnOkieCon4), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM Con4, TRỞ VỀ BÀN
        abtnCancelCon4.addTarget(self, action: #selector(ViewController.ActionforBtnHuyCon4), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô Con4:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocCon4(){
        sldDiemcuocCon4.maximumValue = 1 * Float(diem)
        SoDiemCuocCon4 = Int(sldDiemcuocCon4.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocCon4.value = 0
                self.SoDiemCuocCon4 = Int(self.sldDiemcuocCon4.value)
                self.lblDiemCuocCon4.text = String("Đặt cược Con 4: $\(self.SoDiemCuocCon4)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocCon4.text = String("Đặt cược Con 4: $\(SoDiemCuocCon4)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieCon4(){
        SoDiemCuocCon4 = Int(sldDiemcuocCon4.value)
        viewDiemcuocCon4.isHidden = true
        if SoDiemCuocCon4 != 0 && SoDiemCuocCon4 <= diem{
            viewDaCuocCon4.isHidden = false
            lblSoDiemDaCuocCon4.text = String("$\(Int((sldDiemcuocCon4.value)))")
        }else{
            if SoDiemCuocCon4 != 0 && SoDiemCuocCon4 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocCon4.value = Float(self.diem)
                    self.SoDiemCuocCon4 = Int(self.sldDiemcuocCon4.value)
                    self.lblDiemCuocCon4.text = String("Đặt cược Con 4: $\(self.SoDiemCuocCon4)")
                    self.lblSoDiemDaCuocCon4.text = String("$\(Int((self.sldDiemcuocCon4.value)))")
                    self.viewDaCuocCon4.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyCon4(){
        sldDiemcuocCon4.value = 0
        SoDiemCuocCon4 = Int(sldDiemcuocCon4.value)
        lblSoDiemDaCuocCon4.text = String("$\(Int((sldDiemcuocCon4.value)))")
        viewDaCuocCon4.isHidden = true
        viewDiemcuocCon4.isHidden = true
    }
    
    //B: Ô Con4 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocCon4:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocCon4:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Con4:
    func DiemDaDatCuocOCon4(){
        viewConSo4.addSubview(viewDaCuocCon4)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô Con4 (LABEL ĐIỂM CƯỢC)
        viewDaCuocCon4.addSubview(lblSoDiemDaCuocCon4)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ Con4:
        viewConSo4.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocCon4)
        viewConSo4.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocCon4)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocCon4.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocCon4)
        //2: CHIỀU NGANG:
        viewDaCuocCon4.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocCon4)
    }
//MARK 51: PHẦN 1: SET UP Ô CON 5:
    //A: Ô CON SO 5 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocCon5:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocCon5:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocCon5:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieCon5:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelCon5:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm Con5:
    //2.1: Hàm tổng quát
    func DatCuocOCon5(){
        viewDiemcuocCon5.isHidden = false
        setupViewCuocCon5()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Con5
    func setupViewCuocCon5(){
        view.addSubview(viewDiemcuocCon5)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM Con5 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocCon5.addSubview(sldDiemcuocCon5)
        viewDiemcuocCon5.addSubview(abtnOkieCon5)
        viewDiemcuocCon5.addSubview(abtnCancelCon5)
        viewDiemcuocCon5.addSubview(lblDiemCuocCon5)
        lblDiemCuocCon5.text = String("Đặt cược Con 5: $\(Int(sldDiemcuocCon5.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô Con4:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocCon5)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocCon5)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocCon5.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocCon5,sldDiemcuocCon5)
        abtnOkieCon5.topAnchor.constraint(equalTo: sldDiemcuocCon5.bottomAnchor).isActive = true
        abtnCancelCon5.topAnchor.constraint(equalTo: abtnOkieCon5.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocCon5.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocCon5)
        viewDiemcuocCon5.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocCon5)
        viewDiemcuocCon5.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieCon5,abtnCancelCon5)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocCon5.addTarget(self, action: #selector(ViewController.asldDiemcuocCon5), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieCon5.addTarget(self, action: #selector(ViewController.ActionforBtnOkieCon5), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM Con5, TRỞ VỀ BÀN
        abtnCancelCon5.addTarget(self, action: #selector(ViewController.ActionforBtnHuyCon5), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô Con5:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocCon5(){
        sldDiemcuocCon5.maximumValue = 1 * Float(diem)
        SoDiemCuocCon5 = Int(sldDiemcuocCon5.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocCon5.value = 0
                self.SoDiemCuocCon5 = Int(self.sldDiemcuocCon5.value)
                self.lblDiemCuocCon5.text = String("Đặt cược Con 5: $\(self.SoDiemCuocCon5)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocCon5.text = String("Đặt cược Con 5: $\(SoDiemCuocCon5)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieCon5(){
        SoDiemCuocCon5 = Int(sldDiemcuocCon5.value)
        viewDiemcuocCon5.isHidden = true
        if SoDiemCuocCon5 != 0 && SoDiemCuocCon5 <= diem{
            viewDaCuocCon5.isHidden = false
            lblSoDiemDaCuocCon5.text = String("$\(Int((sldDiemcuocCon5.value)))")
        }else{
            if SoDiemCuocCon5 != 0 && SoDiemCuocCon5 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocCon5.value = Float(self.diem)
                    self.SoDiemCuocCon5 = Int(self.sldDiemcuocCon5.value)
                    self.lblDiemCuocCon5.text = String("Đặt cược Con 5: $\(self.SoDiemCuocCon5)")
                    self.lblSoDiemDaCuocCon5.text = String("$\(Int((self.sldDiemcuocCon5.value)))")
                    self.viewDaCuocCon5.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyCon5(){
        sldDiemcuocCon5.value = 0
        SoDiemCuocCon5 = Int(sldDiemcuocCon5.value)
        lblSoDiemDaCuocCon5.text = String("$\(Int((sldDiemcuocCon5.value)))")
        viewDaCuocCon5.isHidden = true
        viewDiemcuocCon5.isHidden = true
    }
    
    //B: Ô Con5 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocCon5:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocCon5:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Con5:
    func DiemDaDatCuocOCon5(){
        viewConSo5.addSubview(viewDaCuocCon5)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô Con5 (LABEL ĐIỂM CƯỢC)
        viewDaCuocCon5.addSubview(lblSoDiemDaCuocCon5)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ Con5:
        viewConSo5.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocCon5)
        viewConSo5.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocCon5)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocCon5.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocCon5)
        //2: CHIỀU NGANG:
        viewDaCuocCon5.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocCon5)
    }
//MARK 52: PHẦN 1: SET UP Ô CON 6:
    //A: Ô CON SO 6 ĐỂ ĐẶT CƯỢC:
    //1: Khai báo biến: view đặt cược chứa: slider điểm, label tiêu đề view, label điểm cược, nút okie và nút cancel
    let viewDiemcuocCon6:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let sldDiemcuocCon6:UISlider = {
        let sld = UISlider()
        sld.maximumValue = 1000
        sld.minimumValue = 0
        sld.value = 100
        sld.tintColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        sld.translatesAutoresizingMaskIntoConstraints = false
        return sld
    }()
    var lblDiemCuocCon6:UILabel = {
        let lblDCL = UILabel()
        lblDCL.textColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        lblDCL.font.withSize(100)
        // lblDCL.adjustsFontSizeToFitWidth = true
        lblDCL.translatesAutoresizingMaskIntoConstraints = false
        return lblDCL
    }()
    let abtnOkieCon6:UIButton = {
        let abtnOk = UIButton()
        abtnOk.setTitle("Đồng ý", for: UIControlState.normal)
        abtnOk.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnOk.translatesAutoresizingMaskIntoConstraints = false
        return abtnOk
    }()
    let abtnCancelCon6:UIButton = {
        let abtnHuy = UIButton()
        abtnHuy.setTitle("Huỷ", for: UIControlState.normal)
        abtnHuy.setTitleColor(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), for: UIControlState.normal)
        abtnHuy.translatesAutoresizingMaskIntoConstraints = false
        return abtnHuy
    }()
    
    //2: Xây dựng hàm đặt cược ô Điểm Con6:
    //2.1: Hàm tổng quát
    func DatCuocOCon6(){
        viewDiemcuocCon6.isHidden = false
        setupViewCuocCon6()
    }
    ////2.2: Hàm set up vị trí các phần tử trog view đặt cược ô Con6
    func setupViewCuocCon6(){
        view.addSubview(viewDiemcuocCon6)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐIỂM CƯỢC Ô ĐIỂM Con5 (SLIDER ĐIỂM, LABEL TÊN VIEW, LABEL ĐIỂM CƯỢC, NÚT ĐỒNG Ý, NÚT HUỶ)
        viewDiemcuocCon6.addSubview(sldDiemcuocCon6)
        viewDiemcuocCon6.addSubview(abtnOkieCon6)
        viewDiemcuocCon6.addSubview(abtnCancelCon6)
        viewDiemcuocCon6.addSubview(lblDiemCuocCon6)
        lblDiemCuocCon6.text = String("Đặt cược Con 6: $\(Int(sldDiemcuocCon6.value))")
        
        //AUTOLAYOUT VIEW ĐIỂM CƯỢC Ô Con6:
        let height = UIScreen.main.bounds.height / 3
        let width = UIScreen.main.bounds.width / 5
        view.addContrainWithVS(format: "H:|-\(width)-[v0]-\(width)-|", views: viewDiemcuocCon6)
        view.addContrainWithVS(format: "V:|-\(height)-[v0]-\(height)-|", views: viewDiemcuocCon6)
        
        //AUTOLAYOUT LABEL, SLIDER, NÚT ĐỒNG Ý VÀ HUỶ
        //1: CHIỀU DỌC:
        viewDiemcuocCon6.addContrainWithVS(format: "V:|-10-[v0]-10-[v1]", views: lblDiemCuocCon6,sldDiemcuocCon6)
        abtnOkieCon6.topAnchor.constraint(equalTo: sldDiemcuocCon6.bottomAnchor).isActive = true
        abtnCancelCon6.topAnchor.constraint(equalTo: abtnOkieCon6.topAnchor).isActive = true
        //2: CHIỀU NGANG:
        viewDiemcuocCon6.addContrainWithVS(format: "H:|-20-[v0]|", views: lblDiemCuocCon6)
        viewDiemcuocCon6.addContrainWithVS(format: "H:|-20-[v0]-20-|", views: sldDiemcuocCon6)
        viewDiemcuocCon6.addContrainWithVS(format: "H:|-20-[v0][v1]-20-|", views: abtnOkieCon6,abtnCancelCon6)
        
        // ADD HÀNH ĐỘNG CHO SLIDER, NÚT ĐỒNG Ý VÀ NÚT HUỶ:
        //1: HÀNH ĐỘNG CHO SLIDER: CHỌN ĐIỂM
        sldDiemcuocCon6.addTarget(self, action: #selector(ViewController.asldDiemcuocCon6), for: UIControlEvents.touchUpInside)
        //2: HÀNH ĐỘNG CHO NÚT ĐỒNG Ý: LƯU ĐIỂM VÀ TRỞ VỀ BÀN
        abtnOkieCon6.addTarget(self, action: #selector(ViewController.ActionforBtnOkieCon6), for: UIControlEvents.touchUpInside)
        //3: HÀNH ĐỘNG CHO NÚT HUỶ: THOÁT KHỎI HÀNH ĐỘNG ĐẶT CƯỢC Ô ĐIỂM Con6, TRỞ VỀ BÀN
        abtnCancelCon6.addTarget(self, action: #selector(ViewController.ActionforBtnHuyCon6), for: UIControlEvents.touchUpInside)
    }
    
    ////2.3: CÁC FUNC CHO CÁC PHẦN TỬ BÊN TRONG VIEW CƯỢC Ô Con6:
    //2.3.1: FUNC CHO SLIDER ĐỂ CHỌN ĐIỂM
    func asldDiemcuocCon6(){
        sldDiemcuocCon6.maximumValue = 1 * Float(diem)
        SoDiemCuocCon6 = Int(sldDiemcuocCon6.value)
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        if DiemCuoc > diem{
            let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
            let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                self.sldDiemcuocCon6.value = 0
                self.SoDiemCuocCon6 = Int(self.sldDiemcuocCon6.value)
                self.lblDiemCuocCon6.text = String("Đặt cược Con 6: $\(self.SoDiemCuocCon6)")
            })
            alert.addAction(btnok)
            self.present(alert, animated: true, completion: nil)
        }
        lblDiemCuocCon6.text = String("Đặt cược Con 5: $\(SoDiemCuocCon6)")
    }
    //2.3.2: FUNC CHO NÚT ĐỒNG Ý, LƯU ĐIỂM CƯỢC VÀ TRỞ VỀ BÀN
    func ActionforBtnOkieCon6(){
        SoDiemCuocCon6 = Int(sldDiemcuocCon6.value)
        viewDiemcuocCon6.isHidden = true
        if SoDiemCuocCon6 != 0 && SoDiemCuocCon6 <= diem{
            viewDaCuocCon6.isHidden = false
            lblSoDiemDaCuocCon6.text = String("$\(Int((sldDiemcuocCon6.value)))")
        }else{
            if SoDiemCuocCon6 != 0 && SoDiemCuocCon6 > diem{
                
                let alert:UIAlertController = UIAlertController(title: "THÔNG BÁO", message: "Bạn đặt cược quá mức điểm bạn có. Bạn có: $\(self.diem)", preferredStyle: .alert)
                let btnok:UIAlertAction = UIAlertAction(title: "Tắt thông báo", style: UIAlertActionStyle.cancel, handler: { (nil) in
                    self.sldDiemcuocCon6.value = Float(self.diem)
                    self.SoDiemCuocCon6 = Int(self.sldDiemcuocCon6.value)
                    self.lblDiemCuocCon6.text = String("Đặt cược Con 6: $\(self.SoDiemCuocCon6)")
                    self.lblSoDiemDaCuocCon6.text = String("$\(Int((self.sldDiemcuocCon6.value)))")
                    self.viewDaCuocCon6.isHidden = false
                })
                alert.addAction(btnok)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    //2.3.3: FUNC CHO NÚT HUỶ, TRỞ VỀ BÀN
    func ActionforBtnHuyCon6(){
        sldDiemcuocCon6.value = 0
        SoDiemCuocCon6 = Int(sldDiemcuocCon6.value)
        lblSoDiemDaCuocCon6.text = String("$\(Int((sldDiemcuocCon6.value)))")
        viewDaCuocCon6.isHidden = true
        viewDiemcuocCon6.isHidden = true
    }
    
    //B: Ô Con6 THỂ HIỆN ĐIỂM CƯỢC:
    //1: Khai báo biến: view chứa: label điểm cược
    let viewDaCuocCon6:UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let lblSoDiemDaCuocCon6:UILabel = {
        let lblTB = UILabel()
        lblTB.textColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        // lblTB.font.withSize(100)
        // lblTB.adjustsFontSizeToFitWidth = true
        lblTB.translatesAutoresizingMaskIntoConstraints = false
        return lblTB
    }()
    //2: Xây dựng hàm thể hiện điểm đã đặt cược ô Con6:
    func DiemDaDatCuocOCon6(){
        viewConSo6.addSubview(viewDaCuocCon6)
        //ADD CÁC THÀNH PHẦN VÀO VIEW ĐÃ CƯỢC Ô Con6 (LABEL ĐIỂM CƯỢC)
        viewDaCuocCon6.addSubview(lblSoDiemDaCuocCon6)
        
        //AUTOLAYOUT VIEW ĐÃ CƯỢC Ô SỐ Con6:
        viewConSo6.addContrainWithVS(format: "H:|[v0]|", views: viewDaCuocCon6)
        viewConSo6.addContrainWithVS(format: "V:|[v0]|", views: viewDaCuocCon6)
        //AUTOLAYOUT LABEL
        //1: CHIỀU DỌC:
        viewDaCuocCon6.addContrainWithVS(format: "V:|[v0(20)]|", views: lblSoDiemDaCuocCon6)
        //2: CHIỀU NGANG:
        viewDaCuocCon6.addContrainWithVS(format: "H:|-5-[v0]|", views: lblSoDiemDaCuocCon6)
    }
//MARK: NÚT LƯU ĐIỂM
    let abtnLuudiem:UIButton = {
        let abtnLuu = UIButton()
        abtnLuu.setTitle("Lưu điểm", for: UIControlState.normal)
        abtnLuu.setTitleColor(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1), for: UIControlState.normal)
        abtnLuu.translatesAutoresizingMaskIntoConstraints = false
        return abtnLuu
    }()
//MARK: NÚT TOP
    let abtnTop10:UIButton = {
        let abtnTop = UIButton()
        abtnTop.setTitle("Xem Top điểm cao", for: UIControlState.normal)
        abtnTop.setTitleColor(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1), for: UIControlState.normal)
        abtnTop.translatesAutoresizingMaskIntoConstraints = false
        return abtnTop
    }()
   
    func test(){
        print("test ma")
    }
    
// CREATE FUNCTION ADD AD FULL SCREEN:
    func createAndLoadInterstitial() -> GADInterstitial {
        let request = GADRequest()
        let interstitial = GADInterstitial(adUnitID: "ca-app-pub-4012719716442350/8512965028")
        interstitial.delegate = self
        interstitial.load(request)
        return interstitial
    }
    func interstitialDidDismissScreen(_ ad: GADInterstitial) {
        interstitialAd = createAndLoadInterstitial()
    }
// ADD AD BANNER
    func adViewDidReceiveAd(_ bannerView: GADBannerView) {
        AdBanner.isHidden = false
    }
    func adView(_ bannerView: GADBannerView, didFailToReceiveAdWithError erro: GADRequestError) {
        AdBanner.isHidden = true
    }
// ADD NATIVE EXPRESS BANNER - GADNativeExpressAdViewDelegate
    
    func nativeExpressAdViewDidReceiveAd(_ nativeExpressAdView: GADNativeExpressAdView) {
        if viewthuacuoc.AdNative.videoController.hasVideoContent() {
            print("Received an ad with a video asset.")
        } else {
            print("Received an ad without a video asset.")
        }
    }
    
    // MARK: - GADVideoControllerDelegate
    
    func videoControllerDidEndVideoPlayback(_ videoController: GADVideoController) {
        print("The video asset has completed playback.")
    }
//////////////////
/////MARK: TỔNG QUÁT CỦA VIEWDIDLOAD
    override func viewDidLoad() {
        super.viewDidLoad()
        setupviewtungconso()
        lblDiem.text = String(diem)
        lblMoiDatCuoc.text = "Mời chọn ô đặt cược."
        btnStop.isHidden = true
        viewthuacuoc.isHidden = true
        view.addSubview(abtnLuudiem)
        view.addSubview(abtnTop10)
        
        //SET SOUND
        let path:String = Bundle.main.path(forResource: "dice", ofType: "mp3")!
        let url:URL = URL(fileURLWithPath: path)
        do
        {
            player = try AVAudioPlayer(contentsOf: url)
        }catch{}
        
        viewluudiem.isHidden = true
        abtnLuudiem.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        abtnLuudiem.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        abtnLuudiem.rightAnchor.constraint(equalTo: view123456.leftAnchor).isActive = true
        abtnLuudiem.heightAnchor.constraint(equalToConstant: 50).isActive = true
        abtnLuudiem.addTarget(self, action: #selector(ViewController.setupviewluudiem), for: UIControlEvents.touchUpInside)
  
        viewTopdiem.Bangdiem.dataSource = self
        abtnTop10.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        abtnTop10.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        abtnTop10.leftAnchor.constraint(equalTo: view123456.rightAnchor).isActive = true
        abtnTop10.heightAnchor.constraint(equalToConstant: 50).isActive = true
        abtnTop10.addTarget(self, action: #selector(ViewController.setupviewTopdiem), for: UIControlEvents.touchUpInside)
        btnPlay.dinhdang(doRongVien: 1, mauSacVien: UIColor.yellow.cgColor, doBoTron: 7, mauSacChu: UIColor.red, mauNen: UIColor.clear)
        btnStop.dinhdang(doRongVien: 1, mauSacVien: UIColor.yellow.cgColor, doBoTron: 7, mauSacChu: UIColor.blue, mauNen: UIColor.clear)
        abtnTop10.dinhdang(doRongVien: 1, mauSacVien: UIColor.yellow.cgColor, doBoTron: 7, mauSacChu: UIColor.red, mauNen: UIColor.clear)
        abtnLuudiem.dinhdang(doRongVien: 1, mauSacVien: UIColor.yellow.cgColor, doBoTron: 7, mauSacChu: UIColor.red, mauNen: UIColor.clear)
        viewthuacuoc.abtnchoilai.dinhdang(doRongVien: 1, mauSacVien: UIColor.brown.cgColor, doBoTron: 7, mauSacChu: UIColor.red, mauNen: UIColor.cyan)
        viewTopdiem.abtnDong.dinhdang(doRongVien: 1, mauSacVien: UIColor.red.cgColor, doBoTron: 7, mauSacChu: UIColor.red, mauNen: UIColor.cyan)
        viewluudiem.abtnDongy.dinhdang(doRongVien: 1, mauSacVien: UIColor.red.cgColor, doBoTron: 7, mauSacChu: UIColor.red, mauNen: UIColor.cyan)
        viewluudiem.abtnHuyluudiem.dinhdang(doRongVien: 1, mauSacVien: UIColor.red.cgColor, doBoTron: 7, mauSacChu: UIColor.red, mauNen: UIColor.cyan)
        pckview.dataSource = self
        pckview.delegate = self
        
        pckview.selectRow(arrhinh[0].count * 300 / 2, inComponent: 0, animated: true)
        pckview.selectRow(arrhinh[1].count * 300 / 2, inComponent: 1, animated: true)
        pckview.selectRow(arrhinh[2].count * 300 / 2, inComponent: 2, animated: true)
        
        DiemCuoc = SoDiemCuocLe + SoDiemCuocChan + SoDiemCuocTai + SoDiemCuocXiu + SoDiemCuocCap1 + SoDiemCuocCap2 + SoDiemCuocCap3 + SoDiemCuocCap4 + SoDiemCuocCap5 + SoDiemCuocCap6 + SoDiemCuocBa + SoDiemCuocBa1 + SoDiemCuocBa2 + SoDiemCuocBa3 + SoDiemCuocBa4 + SoDiemCuocBa5 + SoDiemCuocBa6 + SoDiemCuoc4 + SoDiemCuoc5 + SoDiemCuoc6 + SoDiemCuoc7 + SoDiemCuoc8 + SoDiemCuoc9 + SoDiemCuoc10 + SoDiemCuoc11 + SoDiemCuoc12 + SoDiemCuoc13 + SoDiemCuoc14 + SoDiemCuoc15 + SoDiemCuoc16 + SoDiemCuoc17 + SoDiemCuocCon12 + SoDiemCuocCon13 + SoDiemCuocCon14 + SoDiemCuocCon15 + SoDiemCuocCon16 + SoDiemCuocCon23 + SoDiemCuocCon24 + SoDiemCuocCon25 + SoDiemCuocCon26 + SoDiemCuocCon34 + SoDiemCuocCon35 + SoDiemCuocCon36 + SoDiemCuocCon45 + SoDiemCuocCon46 + SoDiemCuocCon56 + SoDiemCuocCon1 + SoDiemCuocCon2 + SoDiemCuocCon3 + SoDiemCuocCon4 + SoDiemCuocCon5 + SoDiemCuocCon6
        
  //LOAD DANH SACH TOP PLAYER
        let userdefault:UserDefaults = UserDefaults()
        if let index2:Int = userdefault.object(forKey: "index") as? Int{
            index = index2
        }
     /*
        let ref: FIRDatabaseReference = FIRDatabase.database().reference()
        ref.child("Player").observe(FIRDataEventType.value, with: { (snapshot) in
            let arrOb:Dictionary<String,Dictionary<String,AnyObject>> = snapshot.value as! Dictionary<String,Dictionary<String,AnyObject>>
            for i in arrOb{
                self.arrPlayer.append(Player(object: i.value))
            }
    
            DispatchQueue.main.async {
                self.viewTopdiem.Bangdiem.reloadData()
            }
        })
        viewTopdiem.Bangdiem.dataSource = self
        */
        let ref: FIRDatabaseReference = FIRDatabase.database().reference()
        let ref1 = ref.child("Player").queryOrdered(byChild: "diemPlayer").queryLimited(toLast: 10)
        
        ref1.observe(.value, with: { snapshot in
            let arrOb1:Dictionary<String,Dictionary<String,AnyObject>> = snapshot.value as! Dictionary<String,Dictionary<String,AnyObject>>
            for i in arrOb1{
                self.arrPlayers.append(Player(object: i.value))
            }
            
            print(self.arrPlayers)
            DispatchQueue.main.async {
                self.viewTopdiem.Bangdiem.reloadData()
            }
            self.viewTopdiem.Bangdiem.dataSource = self
           
        })
        
//ADD ADFULLSCREEN AND BANNER
        interstitialAd = createAndLoadInterstitial()
        AdBanner.isHidden = true
        AdBanner.delegate = self
        AdBanner.adUnitID = "ca-app-pub-4012719716442350/9376805420"
        AdBanner.rootViewController = self
        AdBanner.load(GADRequest())
//ADD NATIVE EXPRESS BANNER
        viewthuacuoc.AdNative.adUnitID = adUnitId
        viewthuacuoc.AdNative.rootViewController = self
        viewthuacuoc.AdNative.delegate = self
        
        // The video options object can be used to control the initial mute state of video assets.
        // By default, they start muted.
        let videoOptions = GADVideoOptions()
        videoOptions.startMuted = true
        viewthuacuoc.AdNative.setAdOptions([videoOptions])
        
        // Set this UIViewController as the video controller delegate, so it will be notified of events
        // in the video lifecycle.
        viewthuacuoc.AdNative.videoController.delegate = self
        
        let request = GADRequest()
        request.testDevices = [kGADSimulatorID]
        viewthuacuoc.AdNative.load(request)
//1: ĐẶT CƯỢC Ô CHẴN:
        let tapGesChan = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOChan))
        viewChan.addGestureRecognizer(tapGesChan)
        viewDiemcuocChan.isHidden = true
        DiemDaDatCuocOChan()
        lblSoDiemDaCuocChan.text = String("$\(Int((sldDiemcuocChan.value)))")
        if SoDiemCuocChan != 0{
            viewDaCuocChan.isHidden = false
        }else{
            viewDaCuocChan.isHidden = true
        }
//2: ĐẶT CƯỢC Ô LẺ:
        let tapGesLe = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOLe))
        viewLe.addGestureRecognizer(tapGesLe)
        viewDiemcuocLe.isHidden = true
        DiemDaDatCuocOLe()
        lblSoDiemDaCuocLe.text = String("$\(Int((sldDiemcuocLe.value)))")
        if SoDiemCuocLe != 0{
            viewDaCuocLe.isHidden = false
        }else{
            viewDaCuocLe.isHidden = true
        }
//3: ĐẶT CƯỢC Ô TÀI:
        let tapGesTai = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOTai))
        viewTai.addGestureRecognizer(tapGesTai)
        viewDiemcuocTai.isHidden = true
        DiemDaDatCuocOTai()
        lblSoDiemDaCuocTai.text = String("$\(Int((sldDiemcuocTai.value)))")
        if SoDiemCuocTai != 0{
            viewDaCuocTai.isHidden = false
        }else{
            viewDaCuocTai.isHidden = true
        }
//4: ĐẶT CƯỢC Ô XỈU:
        let tapGesXiu = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOXiu))
        viewXiu.addGestureRecognizer(tapGesXiu)
        viewDiemcuocXiu.isHidden = true
        DiemDaDatCuocOXiu()
        lblSoDiemDaCuocXiu.text = String("$\(Int((sldDiemcuocXiu.value)))")
        if SoDiemCuocXiu != 0{
            viewDaCuocXiu.isHidden = false
        }else{
            viewDaCuocXiu.isHidden = true
        }
//5: ĐẶT CƯỢC Ô CẶP 1:
        let tapGesCap1 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOCap1))
        viewCap1.addGestureRecognizer(tapGesCap1)
        viewDiemcuocCap1.isHidden = true
        DiemDaDatCuocOCap1()
        lblSoDiemDaCuocCap1.text = String("$\(Int((sldDiemcuocCap1.value)))")
        if SoDiemCuocCap1 != 0{
            viewDaCuocCap1.isHidden = false
        }else{
            viewDaCuocCap1.isHidden = true
        }
//6: ĐẶT CƯỢC Ô CẶP 2:
        let tapGesCap2 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOCap2))
        viewCap2.addGestureRecognizer(tapGesCap2)
        viewDiemcuocCap2.isHidden = true
        DiemDaDatCuocOCap2()
        lblSoDiemDaCuocCap2.text = String("$\(Int((sldDiemcuocCap2.value)))")
        if SoDiemCuocCap2 != 0{
            viewDaCuocCap2.isHidden = false
        }else{
            viewDaCuocCap2.isHidden = true
        }
//7: ĐẶT CƯỢC Ô CẶP 3:
        let tapGesCap3 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOCap3))
        viewCap3.addGestureRecognizer(tapGesCap3)
        viewDiemcuocCap3.isHidden = true
        DiemDaDatCuocOCap3()
        lblSoDiemDaCuocCap3.text = String("$\(Int((sldDiemcuocCap3.value)))")
        if SoDiemCuocCap3 != 0{
            viewDaCuocCap3.isHidden = false
        }else{
            viewDaCuocCap3.isHidden = true
        }
//8: ĐẶT CƯỢC Ô CẶP 4:
        let tapGesCap4 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOCap4))
        viewCap4.addGestureRecognizer(tapGesCap4)
        viewDiemcuocCap4.isHidden = true
        DiemDaDatCuocOCap4()
        lblSoDiemDaCuocCap4.text = String("$\(Int((sldDiemcuocCap4.value)))")
        if SoDiemCuocCap4 != 0{
            viewDaCuocCap4.isHidden = false
        }else{
            viewDaCuocCap4.isHidden = true
        }
//9: ĐẶT CƯỢC Ô CẶP 5:
        let tapGesCap5 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOCap5))
        viewCap5.addGestureRecognizer(tapGesCap5)
        viewDiemcuocCap5.isHidden = true
        DiemDaDatCuocOCap5()
        lblSoDiemDaCuocCap5.text = String("$\(Int((sldDiemcuocCap5.value)))")
        if SoDiemCuocCap5 != 0{
            viewDaCuocCap5.isHidden = false
        }else{
            viewDaCuocCap5.isHidden = true
        }
//10: ĐẶT CƯỢC Ô CẶP 6:
        let tapGesCap6 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOCap6))
        viewCap6.addGestureRecognizer(tapGesCap6)
        viewDiemcuocCap6.isHidden = true
        DiemDaDatCuocOCap6()
        lblSoDiemDaCuocCap6.text = String("$\(Int((sldDiemcuocCap6.value)))")
        if SoDiemCuocCap6 != 0{
            viewDaCuocCap6.isHidden = false
        }else{
            viewDaCuocCap6.isHidden = true
        }
//11: ĐẶT CƯỢC Ô BA:
        let tapGesBa = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOBa))
        viewBa.addGestureRecognizer(tapGesBa)
        viewDiemcuocBa.isHidden = true
        DiemDaDatCuocOBa()
        lblSoDiemDaCuocBa.text = String("$\(Int((sldDiemcuocBa.value)))")
        if SoDiemCuocBa != 0{
            viewDaCuocBa.isHidden = false
        }else{
            viewDaCuocBa.isHidden = true
        }
//12: ĐẶT CƯỢC Ô BA 1:
        let tapGesBa1 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOBa1))
        viewBa1.addGestureRecognizer(tapGesBa1)
        viewDiemcuocBa1.isHidden = true
        DiemDaDatCuocOBa1()
        lblSoDiemDaCuocBa1.text = String("$\(Int((sldDiemcuocBa1.value)))")
        if SoDiemCuocBa1 != 0{
            viewDaCuocBa1.isHidden = false
        }else{
            viewDaCuocBa1.isHidden = true
        }
//13: ĐẶT CƯỢC Ô BA 2:
        let tapGesBa2 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOBa2))
        viewBa2.addGestureRecognizer(tapGesBa2)
        viewDiemcuocBa2.isHidden = true
        DiemDaDatCuocOBa2()
        lblSoDiemDaCuocBa2.text = String("$\(Int((sldDiemcuocBa2.value)))")
        if SoDiemCuocBa2 != 0{
            viewDaCuocBa2.isHidden = false
        }else{
            viewDaCuocBa2.isHidden = true
        }
//14: ĐẶT CƯỢC Ô BA 3:
        let tapGesBa3 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOBa3))
        viewBa3.addGestureRecognizer(tapGesBa3)
        viewDiemcuocBa3.isHidden = true
        DiemDaDatCuocOBa3()
        lblSoDiemDaCuocBa3.text = String("$\(Int((sldDiemcuocBa3.value)))")
        if SoDiemCuocBa3 != 0{
            viewDaCuocBa3.isHidden = false
        }else{
            viewDaCuocBa3.isHidden = true
        }
//15: ĐẶT CƯỢC Ô BA 4:
        let tapGesBa4 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOBa4))
        viewBa4.addGestureRecognizer(tapGesBa4)
        viewDiemcuocBa4.isHidden = true
        DiemDaDatCuocOBa4()
        lblSoDiemDaCuocBa4.text = String("$\(Int((sldDiemcuocBa4.value)))")
        if SoDiemCuocBa4 != 0{
            viewDaCuocBa4.isHidden = false
        }else{
            viewDaCuocBa4.isHidden = true
        }
//16: ĐẶT CƯỢC Ô BA 5:
        let tapGesBa5 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOBa5))
        viewBa5.addGestureRecognizer(tapGesBa5)
        viewDiemcuocBa5.isHidden = true
        DiemDaDatCuocOBa5()
        lblSoDiemDaCuocBa5.text = String("$\(Int((sldDiemcuocBa5.value)))")
        if SoDiemCuocBa5 != 0{
            viewDaCuocBa5.isHidden = false
        }else{
            viewDaCuocBa5.isHidden = true
        }
//17: ĐẶT CƯỢC Ô BA 6:
        let tapGesBa6 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOBa6))
        viewBa6.addGestureRecognizer(tapGesBa6)
        viewDiemcuocBa6.isHidden = true
        DiemDaDatCuocOBa6()
        lblSoDiemDaCuocBa6.text = String("$\(Int((sldDiemcuocBa6.value)))")
        if SoDiemCuocBa6 != 0{
            viewDaCuocBa6.isHidden = false
        }else{
            viewDaCuocBa6.isHidden = true
        }
//18: ĐẶT CƯỢC Ô SỐ 4:
        let tapGes4 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocO4))
        viewDiem4.addGestureRecognizer(tapGes4)
        viewDiemcuoc4.isHidden = true
        DiemDaDatCuocO4()
        lblSoDiemDaCuoc4.text = String("$\(Int((sldDiemcuoc4.value)))")
        if SoDiemCuoc4 != 0{
            viewDaCuoc4.isHidden = false
        }else{
            viewDaCuoc4.isHidden = true
        }
//19: ĐẶT CƯỢC Ô SỐ 5:
        let tapGes5 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocO5))
        viewDiem5.addGestureRecognizer(tapGes5)
        viewDiemcuoc5.isHidden = true
        DiemDaDatCuocO5()
        lblSoDiemDaCuoc5.text = String("$\(Int((sldDiemcuoc5.value)))")
        if SoDiemCuoc5 != 0{
            viewDaCuoc5.isHidden = false
        }else{
            viewDaCuoc5.isHidden = true
        }
//20: ĐẶT CƯỢC Ô SỐ 6:
        let tapGes6 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocO6))
        viewDiem6.addGestureRecognizer(tapGes6)
        viewDiemcuoc6.isHidden = true
        DiemDaDatCuocO6()
        lblSoDiemDaCuoc6.text = String("$\(Int((sldDiemcuoc6.value)))")
        if SoDiemCuoc6 != 0{
            viewDaCuoc6.isHidden = false
        }else{
            viewDaCuoc6.isHidden = true
        }
//21: ĐẶT CƯỢC Ô SỐ 7:
        let tapGes7 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocO7))
        viewDiem7.addGestureRecognizer(tapGes7)
        viewDiemcuoc7.isHidden = true
        DiemDaDatCuocO7()
        lblSoDiemDaCuoc7.text = String("$\(Int((sldDiemcuoc7.value)))")
        if SoDiemCuoc7 != 0{
            viewDaCuoc7.isHidden = false
        }else{
            viewDaCuoc7.isHidden = true
        }
//22: ĐẶT CƯỢC Ô SỐ 8:
        let tapGes8 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocO8))
        viewDiem8.addGestureRecognizer(tapGes8)
        viewDiemcuoc8.isHidden = true
        DiemDaDatCuocO8()
        lblSoDiemDaCuoc8.text = String("$\(Int((sldDiemcuoc8.value)))")
        if SoDiemCuoc8 != 0{
            viewDaCuoc8.isHidden = false
        }else{
            viewDaCuoc8.isHidden = true
        }
//23: ĐẶT CƯỢC Ô SỐ 9:
        let tapGes9 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocO9))
        viewDiem9.addGestureRecognizer(tapGes9)
        viewDiemcuoc9.isHidden = true
        DiemDaDatCuocO9()
        lblSoDiemDaCuoc9.text = String("$\(Int((sldDiemcuoc9.value)))")
        if SoDiemCuoc9 != 0{
            viewDaCuoc9.isHidden = false
        }else{
            viewDaCuoc9.isHidden = true
        }
//24: ĐẶT CƯỢC Ô SỐ 10:
        let tapGes10 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocO10))
        viewDiem10.addGestureRecognizer(tapGes10)
        viewDiemcuoc10.isHidden = true
        DiemDaDatCuocO10()
        lblSoDiemDaCuoc10.text = String("$\(Int((sldDiemcuoc10.value)))")
        if SoDiemCuoc10 != 0{
            viewDaCuoc10.isHidden = false
        }else{
            viewDaCuoc10.isHidden = true
        }
//25: ĐẶT CƯỢC Ô SỐ 11:
        let tapGes11 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocO11))
        viewDiem11.addGestureRecognizer(tapGes11)
        viewDiemcuoc11.isHidden = true
        DiemDaDatCuocO11()
        lblSoDiemDaCuoc11.text = String("$\(Int((sldDiemcuoc11.value)))")
        if SoDiemCuoc11 != 0{
            viewDaCuoc11.isHidden = false
        }else{
            viewDaCuoc11.isHidden = true
        }
//26: ĐẶT CƯỢC Ô SỐ 12:
        let tapGes12 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocO12))
        viewDiem12.addGestureRecognizer(tapGes12)
        viewDiemcuoc12.isHidden = true
        DiemDaDatCuocO12()
        lblSoDiemDaCuoc12.text = String("$\(Int((sldDiemcuoc12.value)))")
        if SoDiemCuoc12 != 0{
            viewDaCuoc12.isHidden = false
        }else{
            viewDaCuoc12.isHidden = true
        }
//27: ĐẶT CƯỢC Ô SỐ 13:
        let tapGes13 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocO13))
        viewDiem13.addGestureRecognizer(tapGes13)
        viewDiemcuoc13.isHidden = true
        DiemDaDatCuocO13()
        lblSoDiemDaCuoc13.text = String("$\(Int((sldDiemcuoc13.value)))")
        if SoDiemCuoc13 != 0{
            viewDaCuoc13.isHidden = false
        }else{
            viewDaCuoc13.isHidden = true
        }
//28: ĐẶT CƯỢC Ô SỐ 14:
        let tapGes14 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocO14))
        viewDiem14.addGestureRecognizer(tapGes14)
        viewDiemcuoc14.isHidden = true
        DiemDaDatCuocO14()
        lblSoDiemDaCuoc14.text = String("$\(Int((sldDiemcuoc14.value)))")
        if SoDiemCuoc14 != 0{
            viewDaCuoc14.isHidden = false
        }else{
            viewDaCuoc14.isHidden = true
        }
//29: ĐẶT CƯỢC Ô SỐ 15:
        let tapGes15 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocO15))
        viewDiem15.addGestureRecognizer(tapGes15)
        viewDiemcuoc15.isHidden = true
        DiemDaDatCuocO15()
        lblSoDiemDaCuoc15.text = String("$\(Int((sldDiemcuoc15.value)))")
        if SoDiemCuoc15 != 0{
            viewDaCuoc15.isHidden = false
        }else{
            viewDaCuoc15.isHidden = true
        }
//30: ĐẶT CƯỢC Ô SỐ 16:
        let tapGes16 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocO16))
        viewDiem16.addGestureRecognizer(tapGes16)
        viewDiemcuoc16.isHidden = true
        DiemDaDatCuocO16()
        lblSoDiemDaCuoc16.text = String("$\(Int((sldDiemcuoc16.value)))")
        if SoDiemCuoc16 != 0{
            viewDaCuoc16.isHidden = false
        }else{
            viewDaCuoc16.isHidden = true
        }
//31: ĐẶT CƯỢC Ô SỐ 17:
        let tapGes17 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocO17))
        viewDiem17.addGestureRecognizer(tapGes17)
        viewDiemcuoc17.isHidden = true
        DiemDaDatCuocO17()
        lblSoDiemDaCuoc17.text = String("$\(Int((sldDiemcuoc17.value)))")
        if SoDiemCuoc17 != 0{
            viewDaCuoc17.isHidden = false
        }else{
            viewDaCuoc17.isHidden = true
        }
//32: ĐẶT CƯỢC Ô CON12:
        let tapGesCon12 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOCon12))
        view12.addGestureRecognizer(tapGesCon12)
        viewDiemcuocCon12.isHidden = true
        DiemDaDatCuocOCon12()
        lblSoDiemDaCuocCon12.text = String("$\(Int((sldDiemcuocCon12.value)))")
        if SoDiemCuocCon12 != 0{
            viewDaCuocCon12.isHidden = false
        }else{
            viewDaCuocCon12.isHidden = true
        }
//33: ĐẶT CƯỢC Ô CON13:
    let tapGesCon13 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOCon13))
    view13.addGestureRecognizer(tapGesCon13)
    viewDiemcuocCon13.isHidden = true
    DiemDaDatCuocOCon13()
    lblSoDiemDaCuocCon13.text = String("$\(Int((sldDiemcuocCon13.value)))")
    if SoDiemCuocCon13 != 0{
    viewDaCuocCon13.isHidden = false
    }else{
    viewDaCuocCon13.isHidden = true
    }
//34: ĐẶT CƯỢC Ô CON14:
        let tapGesCon14 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOCon14))
        view14.addGestureRecognizer(tapGesCon14)
        viewDiemcuocCon14.isHidden = true
        DiemDaDatCuocOCon14()
        lblSoDiemDaCuocCon14.text = String("$\(Int((sldDiemcuocCon14.value)))")
        if SoDiemCuocCon14 != 0{
            viewDaCuocCon14.isHidden = false
        }else{
            viewDaCuocCon14.isHidden = true
        }
//35: ĐẶT CƯỢC Ô CON15:
        let tapGesCon15 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOCon15))
        view15.addGestureRecognizer(tapGesCon15)
        viewDiemcuocCon15.isHidden = true
        DiemDaDatCuocOCon15()
        lblSoDiemDaCuocCon15.text = String("$\(Int((sldDiemcuocCon15.value)))")
        if SoDiemCuocCon15 != 0{
            viewDaCuocCon15.isHidden = false
        }else{
            viewDaCuocCon15.isHidden = true
        }
//36: ĐẶT CƯỢC Ô CON16:
        let tapGesCon16 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOCon16))
        view16.addGestureRecognizer(tapGesCon16)
        viewDiemcuocCon16.isHidden = true
        DiemDaDatCuocOCon16()
        lblSoDiemDaCuocCon16.text = String("$\(Int((sldDiemcuocCon16.value)))")
        if SoDiemCuocCon16 != 0{
            viewDaCuocCon16.isHidden = false
        }else{
            viewDaCuocCon16.isHidden = true
        }
//37: ĐẶT CƯỢC Ô CON23:
        let tapGesCon23 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOCon23))
        view23.addGestureRecognizer(tapGesCon23)
        viewDiemcuocCon23.isHidden = true
        DiemDaDatCuocOCon23()
        lblSoDiemDaCuocCon23.text = String("$\(Int((sldDiemcuocCon23.value)))")
        if SoDiemCuocCon23 != 0{
            viewDaCuocCon23.isHidden = false
        }else{
            viewDaCuocCon23.isHidden = true
        }
//38: ĐẶT CƯỢC Ô CON24:
        let tapGesCon24 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOCon24))
        view24.addGestureRecognizer(tapGesCon24)
        viewDiemcuocCon24.isHidden = true
        DiemDaDatCuocOCon24()
        lblSoDiemDaCuocCon24.text = String("$\(Int((sldDiemcuocCon24.value)))")
        if SoDiemCuocCon24 != 0{
            viewDaCuocCon24.isHidden = false
        }else{
            viewDaCuocCon24.isHidden = true
        }
//39: ĐẶT CƯỢC Ô CON25:
        let tapGesCon25 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOCon25))
        view25.addGestureRecognizer(tapGesCon25)
        viewDiemcuocCon25.isHidden = true
        DiemDaDatCuocOCon25()
        lblSoDiemDaCuocCon25.text = String("$\(Int((sldDiemcuocCon25.value)))")
        if SoDiemCuocCon25 != 0{
            viewDaCuocCon25.isHidden = false
        }else{
            viewDaCuocCon25.isHidden = true
        }
//40: ĐẶT CƯỢC Ô CON26:
        let tapGesCon26 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOCon26))
        view26.addGestureRecognizer(tapGesCon26)
        viewDiemcuocCon26.isHidden = true
        DiemDaDatCuocOCon26()
        lblSoDiemDaCuocCon26.text = String("$\(Int((sldDiemcuocCon26.value)))")
        if SoDiemCuocCon26 != 0{
            viewDaCuocCon26.isHidden = false
        }else{
            viewDaCuocCon26.isHidden = true
        }
//41: ĐẶT CƯỢC Ô CON34:
        let tapGesCon34 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOCon34))
        view34.addGestureRecognizer(tapGesCon34)
        viewDiemcuocCon34.isHidden = true
        DiemDaDatCuocOCon34()
        lblSoDiemDaCuocCon34.text = String("$\(Int((sldDiemcuocCon34.value)))")
        if SoDiemCuocCon34 != 0{
            viewDaCuocCon34.isHidden = false
        }else{
            viewDaCuocCon34.isHidden = true
        }
//42: ĐẶT CƯỢC Ô CON35:
        let tapGesCon35 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOCon35))
        view35.addGestureRecognizer(tapGesCon35)
        viewDiemcuocCon35.isHidden = true
        DiemDaDatCuocOCon35()
        lblSoDiemDaCuocCon35.text = String("$\(Int((sldDiemcuocCon35.value)))")
        if SoDiemCuocCon35 != 0{
            viewDaCuocCon35.isHidden = false
        }else{
            viewDaCuocCon35.isHidden = true
        }
//43: ĐẶT CƯỢC Ô CON36:
        let tapGesCon36 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOCon36))
        view36.addGestureRecognizer(tapGesCon36)
        viewDiemcuocCon36.isHidden = true
        DiemDaDatCuocOCon36()
        lblSoDiemDaCuocCon36.text = String("$\(Int((sldDiemcuocCon36.value)))")
        if SoDiemCuocCon36 != 0{
            viewDaCuocCon36.isHidden = false
        }else{
            viewDaCuocCon36.isHidden = true
        }
//44: ĐẶT CƯỢC Ô CON45:
        let tapGesCon45 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOCon45))
        view45.addGestureRecognizer(tapGesCon45)
        viewDiemcuocCon45.isHidden = true
        DiemDaDatCuocOCon45()
        lblSoDiemDaCuocCon45.text = String("$\(Int((sldDiemcuocCon45.value)))")
        if SoDiemCuocCon45 != 0{
            viewDaCuocCon45.isHidden = false
        }else{
            viewDaCuocCon45.isHidden = true
        }
//45: ĐẶT CƯỢC Ô CON46:
        let tapGesCon46 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOCon46))
        view46.addGestureRecognizer(tapGesCon46)
        viewDiemcuocCon46.isHidden = true
        DiemDaDatCuocOCon46()
        lblSoDiemDaCuocCon46.text = String("$\(Int((sldDiemcuocCon46.value)))")
        if SoDiemCuocCon46 != 0{
            viewDaCuocCon46.isHidden = false
        }else{
            viewDaCuocCon46.isHidden = true
        }
//46: ĐẶT CƯỢC Ô CON56:
        let tapGesCon56 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOCon56))
        view56.addGestureRecognizer(tapGesCon56)
        viewDiemcuocCon56.isHidden = true
        DiemDaDatCuocOCon56()
        lblSoDiemDaCuocCon56.text = String("$\(Int((sldDiemcuocCon56.value)))")
        if SoDiemCuocCon56 != 0{
            viewDaCuocCon56.isHidden = false
        }else{
            viewDaCuocCon56.isHidden = true
        }
//47: ĐẶT CƯỢC Ô CON1:
        let tapGesCon1 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOCon1))
        viewConSo1.addGestureRecognizer(tapGesCon1)
        viewDiemcuocCon1.isHidden = true
        DiemDaDatCuocOCon1()
        lblSoDiemDaCuocCon1.text = String("$\(Int((sldDiemcuocCon1.value)))")
        if SoDiemCuocCon1 != 0{
            viewDaCuocCon1.isHidden = false
        }else{
            viewDaCuocCon1.isHidden = true
        }
//48: ĐẶT CƯỢC Ô CON2:
        let tapGesCon2 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOCon2))
        viewConSo2.addGestureRecognizer(tapGesCon2)
        viewDiemcuocCon2.isHidden = true
        DiemDaDatCuocOCon2()
        lblSoDiemDaCuocCon2.text = String("$\(Int((sldDiemcuocCon2.value)))")
        if SoDiemCuocCon2 != 0{
            viewDaCuocCon2.isHidden = false
        }else{
            viewDaCuocCon2.isHidden = true
        }
//49: ĐẶT CƯỢC Ô CON3:
        let tapGesCon3 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOCon3))
        viewConSo3.addGestureRecognizer(tapGesCon3)
        viewDiemcuocCon3.isHidden = true
        DiemDaDatCuocOCon3()
        lblSoDiemDaCuocCon3.text = String("$\(Int((sldDiemcuocCon3.value)))")
        if SoDiemCuocCon3 != 0{
            viewDaCuocCon3.isHidden = false
        }else{
            viewDaCuocCon3.isHidden = true
        }
//50: ĐẶT CƯỢC Ô CON4:
        let tapGesCon4 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOCon4))
        viewConSo4.addGestureRecognizer(tapGesCon4)
        viewDiemcuocCon4.isHidden = true
        DiemDaDatCuocOCon4()
        lblSoDiemDaCuocCon4.text = String("$\(Int((sldDiemcuocCon4.value)))")
        if SoDiemCuocCon4 != 0{
            viewDaCuocCon4.isHidden = false
        }else{
            viewDaCuocCon4.isHidden = true
        }
//51: ĐẶT CƯỢC Ô CON5:
        let tapGesCon5 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOCon5))
        viewConSo5.addGestureRecognizer(tapGesCon5)
        viewDiemcuocCon5.isHidden = true
        DiemDaDatCuocOCon5()
        lblSoDiemDaCuocCon5.text = String("$\(Int((sldDiemcuocCon5.value)))")
        if SoDiemCuocCon5 != 0{
            viewDaCuocCon5.isHidden = false
        }else{
            viewDaCuocCon5.isHidden = true
        }
//52: ĐẶT CƯỢC Ô CON6:
        let tapGesCon6 = UITapGestureRecognizer(target: self, action: #selector(ViewController.DatCuocOCon6))
        viewConSo6.addGestureRecognizer(tapGesCon6)
        viewDiemcuocCon6.isHidden = true
        DiemDaDatCuocOCon6()
        lblSoDiemDaCuocCon6.text = String("$\(Int((sldDiemcuocCon6.value)))")
        if SoDiemCuocCon6 != 0{
            viewDaCuocCon6.isHidden = false
        }else{
            viewDaCuocCon6.isHidden = true
        }
        

}
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
@available(iOS 9.0, *)
extension ViewController:UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrPlayers.count
    }

   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! Cell
            cell.lblplayer.text = arrPlayers[indexPath.row].ten
            cell.lbldiem.text = String(arrPlayers[indexPath.row].diem)
            return cell
    }
}


