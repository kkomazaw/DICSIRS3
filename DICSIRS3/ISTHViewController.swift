//
//  ISTHViewController.swift
//  DICSIRS3
//
//  Created by Matsui Keiji on 2015/01/13.
//  Copyright (c) 2015年 Matsui Keiji. All rights reserved.
//

import UIKit

class ISTHViewController: UIViewController {
    @IBOutlet var Platelet:UISegmentedControl!
    @IBOutlet var FDP:UISegmentedControl!
    @IBOutlet var Fibrinogen:UISegmentedControl!
    @IBOutlet var PTsec:UISegmentedControl!
    @IBOutlet var ScoreDIC:UILabel!
    @IBOutlet var Hantei:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        Hantei.text=""
        // Do any additional setup after loading the view.
    }
    
    @IBAction func myActionRUN(){
        let vPlatelet=Platelet.selectedSegmentIndex
        var vFDP=0
        switch FDP.selectedSegmentIndex {
        case 0:
            vFDP=0
        case 1:
            vFDP=2
        case 2:
            vFDP=3
        default:
            vFDP=0
        }
        let vFibrinogen=Fibrinogen.selectedSegmentIndex
        let vPTsec=PTsec.selectedSegmentIndex
        let vScoreDIC=vPlatelet+vFDP+vFibrinogen+vPTsec
        ScoreDIC.text="\(vScoreDIC)"
        if vScoreDIC>=5 {
            Hantei.text="overt DIC"
        }
        else {
            Hantei.text=""
        }
    }//@IBAction func myActionRUN()

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
