//
//  NEWSViewController.swift
//  DICSIRS3
//
//  Created by Matsui Keiji on 2015/01/13.
//  Copyright (c) 2015年 Matsui Keiji. All rights reserved.
//

import UIKit

class NEWSViewController: UIViewController {
    @IBOutlet var RR:UISegmentedControl!
    @IBOutlet var SPO2:UISegmentedControl!
    @IBOutlet var Oxygen:UISegmentedControl!
    @IBOutlet var BT:UISegmentedControl!
    @IBOutlet var SBP:UISegmentedControl!
    @IBOutlet var HR:UISegmentedControl!
    @IBOutlet var Level:UISegmentedControl!
    @IBOutlet var MyPoint:UILabel!
    @IBOutlet var LowRisk:UILabel!
    @IBOutlet var MidRisk:UILabel!
    @IBOutlet var HighRisk:UILabel!
    @IBOutlet var ResetButton:UIButton!
    @IBOutlet var FrequencyOfMonitoring:UILabel!
    @IBOutlet var ClinicalResponse1:UILabel!
    @IBOutlet var ClinicalResponse2:UILabel!
    @IBOutlet var ClinicalResponse3:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        RR.selectedSegmentIndex=2
        SPO2.selectedSegmentIndex=3
        Oxygen.selectedSegmentIndex=1
        BT.selectedSegmentIndex=2
        SBP.selectedSegmentIndex=3
        HR.selectedSegmentIndex=2
        Level.selectedSegmentIndex=0
        MyPoint.text="0"
        LowRisk.isHidden=false
        MidRisk.isHidden=true
        HighRisk.isHidden=true
        FrequencyOfMonitoring.text="モニタリング間隔：12時間毎"
        ClinicalResponse1.text="定期的にNEWSスコアをモニター"
        ClinicalResponse2.text=""
        ClinicalResponse3.text=""

        // Do any additional setup after loading the view.
    }
    
    @IBAction func myActionRUN(){
        var vRR=0
        var vSPO2=0
        var vOxgen=0
        var vBT=0
        var vSBP=0
        var vHR=0
        var vLevel=0
        switch RR.selectedSegmentIndex {
        case 0:
            vRR=3
        case 1:
            vRR=1
        case 2:
            vRR=0
        case 3:
            vRR=2
        case 4:
            vRR=3
        default:
            vRR=0
        }//switch RR.selectedSegmentIndex)
        switch SPO2.selectedSegmentIndex {
        case 0:
            vSPO2=3
        case 1:
            vSPO2=2
        case 2:
            vSPO2=1
        case 3:
            vSPO2=0
        default:
            vSPO2=0
        }//switch SPO2.selectedSegmentIndex)
        switch Oxygen.selectedSegmentIndex {
        case 0:
            vOxgen=2
            
        case 1:
            vOxgen=0
            
        default:
            vOxgen=0
        }//switch Oxygen.selectedSegmentIndex)
        switch BT.selectedSegmentIndex {
        case 0:
            vBT=3
        case 1:
            vBT=1
        case 2:
            vBT=0
        case 3:
            vBT=1
        case 4:
            vBT=2
        default:
            vBT=0
        }//switch BT.selectedSegmentIndex)
        switch SBP.selectedSegmentIndex {
        case 0:
            vSBP=3
        case 1:
            vSBP=2
        case 2:
            vSBP=1
        case 3:
            vSBP=0
        case 4:
            vSBP=3
        default:
            vSBP=0
        }//switch SBP.selectedSegmentIndex)
        switch HR.selectedSegmentIndex {
        case 0:
            vHR=3
        case 1:
            vHR=1
        case 2:
            vHR=0
        case 3:
            vHR=1
        case 4:
            vHR=2
        case 5:
            vHR=3
        default:
            vHR=0
        }//switch HR.selectedSegmentIndex)
        switch Level.selectedSegmentIndex {
        case 0:
            vLevel=0
        case 1:
            vLevel=3
        default:
            vLevel=0
        }//switch Level.selectedSegmentIndex)
        var yellowFlag=true
        if vRR==3 || vSPO2==3 || vOxgen==3 || vBT==3 || vSBP==3 || vHR==3 || vLevel==3 {
            yellowFlag=true
        }//if vRR==3 || vSPO2==3 || vOxgen==3 || vBT==3 || vSBP==3 || vHR==3 || vLevel==3)
        else {
            yellowFlag=false
        }
        let vPoint=vRR+vSPO2+vOxgen+vBT+vSBP+vHR+vLevel
        MyPoint.text="\(vPoint)"
        if vPoint==0 {
            LowRisk.isHidden=false
            MidRisk.isHidden=true
            HighRisk.isHidden=true
            FrequencyOfMonitoring.text="モニタリング間隔：12時間毎"
            ClinicalResponse1.text="定期的にNEWSスコアをモニター"
            ClinicalResponse2.text=""
            ClinicalResponse3.text=""
        }
        if vPoint<=4 && vPoint>=1 && yellowFlag==false {
            LowRisk.isHidden=false
            MidRisk.isHidden=true
            HighRisk.isHidden=true
            FrequencyOfMonitoring.text="モニタリング間隔：4~6時間毎"
            ClinicalResponse1.text="看護師に報告"
            ClinicalResponse2.text="看護師はモニター頻度や臨床的対応の再評価をする"
            ClinicalResponse3.text=""
        }
        if vPoint<=4 && yellowFlag==true {
            LowRisk.isHidden=true
            MidRisk.isHidden=false
            HighRisk.isHidden=true
            FrequencyOfMonitoring.text="モニタリング間隔：1時間毎（最低でも）"
            ClinicalResponse1.text="看護師は主治医チームに直ちに報告する"
            ClinicalResponse2.text="主治医チームによる緊急評価を行う"
            ClinicalResponse3.text="モニター可能な環境で治療・ケアを行う"
        }
        if vPoint==5 || vPoint==6 {
            LowRisk.isHidden=true
            MidRisk.isHidden=false
            HighRisk.isHidden=true
            FrequencyOfMonitoring.text="モニタリング間隔：1時間毎（最低でも）"
            ClinicalResponse1.text="看護師は主治医チームに直ちに報告する"
            ClinicalResponse2.text="主治医チームによる緊急評価を行う"
            ClinicalResponse3.text="モニター可能な環境で治療・ケアを行う"
        }
        if vPoint>=7 {
            LowRisk.isHidden=true
            MidRisk.isHidden=true
            HighRisk.isHidden=false
            FrequencyOfMonitoring.text="モニタリング間隔：持続的モニター"
            ClinicalResponse1.text="看護師は緊急に主治医チームに報告する"
            ClinicalResponse2.text="主治医チームによる緊急評価を行い,CPA対応も準備する"
            ClinicalResponse3.text="ICUまたはそれに準ずる環境に患者を移送する"
        }
    }//@IBAction func myActionRUN()
    
    @IBAction func myActionReset(){
        RR.selectedSegmentIndex=2
        SPO2.selectedSegmentIndex=3
        Oxygen.selectedSegmentIndex=1
        BT.selectedSegmentIndex=2
        SBP.selectedSegmentIndex=3
        HR.selectedSegmentIndex=2
        Level.selectedSegmentIndex=0
        MyPoint.text="0"
        LowRisk.isHidden=false
        MidRisk.isHidden=true
        HighRisk.isHidden=true
        FrequencyOfMonitoring.text="モニタリング間隔：12時間毎"
        ClinicalResponse1.text="定期的にNEWSスコアをモニター"
        ClinicalResponse2.text=""
        ClinicalResponse3.text=""
    }//@IBAction func myActionReset()

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
