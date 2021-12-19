//
//  ShiketsuViewController.swift
//  DICSIRS3
//
//  Created by Matsui Keiji on 2018/02/11.
//  Copyright © 2018年 Matsui Keiji. All rights reserved.
//

import UIKit

class ShiketsuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        HanteiLabel.text = ""
        ZoketsuChushaku.isHidden = true
        KansenChushaku.isHidden = true
        Katenshinai.isHidden = true
        KanouseiHikui.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var Byoukei:UISegmentedControl!
    @IBOutlet var Kesshoubansu:UISegmentedControl!
    @IBOutlet var Nijuyojikan:UISegmentedControl!
    @IBOutlet var FDP:UISegmentedControl!
    @IBOutlet var Fibrinogen:UISegmentedControl!
    @IBOutlet var PTratio:UISegmentedControl!
    @IBOutlet var AT:UISegmentedControl!
    @IBOutlet var TAT:UISegmentedControl!
    @IBOutlet var Kanfuzen:UISegmentedControl!
    @IBOutlet var KesshoubansuLabel:UILabel!
    @IBOutlet var NijuyojikanLabel:UILabel!
    @IBOutlet var Sanju:UILabel!
    @IBOutlet var Katenshinai:UILabel!
    @IBOutlet var FibrinogenLabel:UILabel!
    @IBOutlet var resetButton:UIButton!
    @IBOutlet var DICscore:UILabel!
    @IBOutlet var HanteiLabel:UILabel!
    @IBOutlet var ZoketsuChushaku:UILabel!
    @IBOutlet var KansenChushaku:UILabel!
    @IBOutlet var KanouseiHikui:UILabel!
    
    @IBAction func myActionRUN(){
        KanouseiHikui.isHidden = true
        let vByoukei = Byoukei.selectedSegmentIndex
        let vKesshobansu = Kesshoubansu.selectedSegmentIndex
        let vNijuyojikan = Nijuyojikan.selectedSegmentIndex
        let vFDP = FDP.selectedSegmentIndex
        let vFibrinogen = Fibrinogen.selectedSegmentIndex
        let vPTratio = PTratio.selectedSegmentIndex
        let vAT = AT.selectedSegmentIndex
        let vTAT = TAT.selectedSegmentIndex
        let vKanfuzen = Kanfuzen.selectedSegmentIndex * (-3)
        var vDICscore = 0
        if vKesshobansu == 3{
            Nijuyojikan.isHidden = true
            Katenshinai.isHidden = false
        }
        else{
            Nijuyojikan.isHidden = false
            Katenshinai.isHidden = true
        }
        if vByoukei == 0{
            KesshoubansuLabel.isHidden = false
            Kesshoubansu.isHidden = false
            NijuyojikanLabel.isHidden = false
            Sanju.isHidden = false
            ZoketsuChushaku.isHidden = true
            KansenChushaku.isHidden = true
            FibrinogenLabel.isHidden = false
            Fibrinogen.isHidden = false
            vDICscore = vKesshobansu + vFDP + vFibrinogen + vPTratio + vAT + vTAT + vKanfuzen
            if vKesshobansu <= 2 && vNijuyojikan == 1{
                vDICscore = vDICscore + 1
            }
            if vDICscore >= 6{
                if vFDP == 0{
                    KanouseiHikui.isHidden = false
                    HanteiLabel.text = "※DIC"
                }
                else{
                    HanteiLabel.text = "DIC"
                }
            }
            else{
                HanteiLabel.text = ""
            }
        }//if vByoukei == 0
        if vByoukei == 1{
            KesshoubansuLabel.isHidden = true
            Kesshoubansu.isHidden = true
            NijuyojikanLabel.isHidden = true
            Sanju.isHidden = true
            Nijuyojikan.isHidden = true
            Katenshinai.isHidden = true
            ZoketsuChushaku.isHidden = false
            KansenChushaku.isHidden = true
            FibrinogenLabel.isHidden = false
            Fibrinogen.isHidden = false
            vDICscore = vFDP + vFibrinogen + vPTratio + vAT + vTAT + vKanfuzen
            if vDICscore >= 4{
                if vFDP == 0{
                    KanouseiHikui.isHidden = false
                    HanteiLabel.text = "※DIC"
                }
                else{
                    HanteiLabel.text = "DIC"
                }
            }
            else{
                HanteiLabel.text = ""
            }
        }//if vByoukei == 1
        if vByoukei == 2{
            KesshoubansuLabel.isHidden = false
            Kesshoubansu.isHidden = false
            NijuyojikanLabel.isHidden = false
            Sanju.isHidden = false
            ZoketsuChushaku.isHidden = true
            KansenChushaku.isHidden = false
            FibrinogenLabel.isHidden = true
            Fibrinogen.isHidden = true
            vDICscore = vKesshobansu + vFDP + vPTratio + vAT + vTAT + vKanfuzen
            if vKesshobansu <= 2 && vNijuyojikan == 1{
                vDICscore = vDICscore + 1
            }
            if vDICscore >= 5{
                if vFDP == 0{
                    KanouseiHikui.isHidden = false
                    HanteiLabel.text = "※DIC"
                }
                else{
                    HanteiLabel.text = "DIC"
                }
            }
            else{
                HanteiLabel.text = ""
            }
        }//if vByoukei == 2
        DICscore.text = String(vDICscore) + "点"
    }//@IBAction func myActionRUN()
    
    @IBAction func myActionReset(){
        KesshoubansuLabel.isHidden = false
        Kesshoubansu.isHidden = false
        NijuyojikanLabel.isHidden = false
        Sanju.isHidden = false
        Nijuyojikan.isHidden = false
        Katenshinai.isHidden = true
        ZoketsuChushaku.isHidden = true
        KansenChushaku.isHidden = true
        FibrinogenLabel.isHidden = false
        Fibrinogen.isHidden = false
        Byoukei.selectedSegmentIndex = 0
        Kesshoubansu.selectedSegmentIndex = 0
        Nijuyojikan.selectedSegmentIndex = 0
        FDP.selectedSegmentIndex = 0
        Fibrinogen.selectedSegmentIndex = 0
        PTratio.selectedSegmentIndex = 0
        AT.selectedSegmentIndex = 0
        TAT.selectedSegmentIndex = 0
        Kanfuzen.selectedSegmentIndex = 0
        HanteiLabel.text = ""
        DICscore.text = "0点"
        KanouseiHikui.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
