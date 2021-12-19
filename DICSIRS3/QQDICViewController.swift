//
//  QQDICViewController.swift
//  DICSIRS3
//
//  Created by Matsui Keiji on 2015/01/13.
//  Copyright (c) 2015年 Matsui Keiji. All rights reserved.
//

import UIKit

class QQDICViewController: UIViewController {
    @IBOutlet var Taion:UISegmentedControl!
    @IBOutlet var Shinpakusu:UISegmentedControl!
    @IBOutlet var Kokyusu:UISegmentedControl!
    @IBOutlet var WBC:UISegmentedControl!
    @IBOutlet var Platelet:UISegmentedControl!
    @IBOutlet var PTratio:UISegmentedControl!
    @IBOutlet var FDP:UISegmentedControl!
    @IBOutlet var ScoreDIC:UILabel!
    @IBOutlet var Hantei:UILabel!
    @IBOutlet var clearButton:UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        Hantei.text=""
        // Do any additional setup after loading the view.
    }
    
    @IBAction func myActionRUN(){
        let vTaion=Taion.selectedSegmentIndex
        let vShinpakusu=Shinpakusu.selectedSegmentIndex
        let vKokyusu=Kokyusu.selectedSegmentIndex
        let vWBC=WBC.selectedSegmentIndex
        var vScoreSIRS=0
        if vTaion+vShinpakusu+vKokyusu+vWBC>=3 {
            vScoreSIRS=1
        }
        else {
            vScoreSIRS=0
        }
        var vPlatelet=Platelet.selectedSegmentIndex
        if vPlatelet==2 {
            vPlatelet=3
        }
        let vPTratio=PTratio.selectedSegmentIndex
        var vFDP=FDP.selectedSegmentIndex
        if vFDP==2 {
            vFDP=3
        }
        let vScoreDIC=vScoreSIRS+vPlatelet+vPTratio+vFDP
        ScoreDIC.text="\(vScoreDIC)"
        if vScoreDIC>=4 {
            Hantei.text="DIC"
        }
        else {
            Hantei.text=""
        }
    }//@IBAction func myActionRUN()
    
    @IBAction func myActionClear(){
        Taion.selectedSegmentIndex=0
        Shinpakusu.selectedSegmentIndex=0
        Kokyusu.selectedSegmentIndex=0
        WBC.selectedSegmentIndex=0
        Platelet.selectedSegmentIndex=0
        PTratio.selectedSegmentIndex=0
        FDP.selectedSegmentIndex=0
        Hantei.text=""
        ScoreDIC.text="0"
    }//@IBAction func myActionClear()

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
