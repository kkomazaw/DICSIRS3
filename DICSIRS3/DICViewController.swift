//
//  DICViewController.swift
//  DICSIRS3
//
//  Created by Matsui Keiji on 2015/01/13.
//  Copyright (c) 2015年 Matsui Keiji. All rights reserved.
//

import UIKit

class DICViewController: UIViewController {
    @IBOutlet var Hakketsubyo:UISegmentedControl!
    @IBOutlet var Kisoshikkan:UISegmentedControl!
    @IBOutlet var Shukketsu:UISegmentedControl!
    @IBOutlet var Zoukishojo:UISegmentedControl!
    @IBOutlet var FDP:UISegmentedControl!
    @IBOutlet var Platelet:UISegmentedControl!
    @IBOutlet var Fibrinogen:UISegmentedControl!
    @IBOutlet var PTratio:UISegmentedControl!
    @IBOutlet var ScoreDIC:UILabel!
    @IBOutlet var Hantei:UILabel!
    @IBOutlet var clearButton:UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        Hantei.text=""
        // Do any additional setup after loading the view.
    }
    
    @IBAction func myActionRUN(){
        let vHakketsubyo=Hakketsubyo.selectedSegmentIndex
        let vKisoshikkan=Kisoshikkan.selectedSegmentIndex
        let vShukketsu=Shukketsu.selectedSegmentIndex
        let vZoukishojo=Zoukishojo.selectedSegmentIndex
        let vFDP=FDP.selectedSegmentIndex
        let vPlatelet=Platelet.selectedSegmentIndex
        let vFibrinogen=Fibrinogen.selectedSegmentIndex
        let vPTratio=PTratio.selectedSegmentIndex
        var vScoreDIC=0
        switch vHakketsubyo{
        case 0:
            vScoreDIC=vKisoshikkan+vShukketsu+vZoukishojo+vFDP+vPlatelet+vFibrinogen+vPTratio
            ScoreDIC.text="\(vScoreDIC)"
            if vScoreDIC<=5 {
                Hantei.text=""
            }
            if vScoreDIC==6 {
                Hantei.text="DICの疑い"
            }
            if vScoreDIC>=7 {
                Hantei.text="DIC"
            }
        case 1:
            vScoreDIC=vKisoshikkan+vZoukishojo+vFDP+vFibrinogen+vPTratio
            ScoreDIC.text="\(vScoreDIC)"
            if vScoreDIC<=2 {
                Hantei.text=""
            }
            if vScoreDIC==3 {
                Hantei.text="DICの疑い"
            }
            if (vScoreDIC>=4) {
                Hantei.text="DIC"
            }
        default:
            Hantei.text=""
        }
    }//@IBAction func myActionRUN()
    
    @IBAction func myActionClear(){
        Hakketsubyo.selectedSegmentIndex=0
        Kisoshikkan.selectedSegmentIndex=0
        Shukketsu.selectedSegmentIndex=0
        Zoukishojo.selectedSegmentIndex=0
        FDP.selectedSegmentIndex=0
        Platelet.selectedSegmentIndex=0
        Fibrinogen.selectedSegmentIndex=0
        PTratio.selectedSegmentIndex=0
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
