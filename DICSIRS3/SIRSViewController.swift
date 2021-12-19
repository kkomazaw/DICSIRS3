//
//  SIRSViewController.swift
//  DICSIRS3
//
//  Created by Matsui Keiji on 2015/01/13.
//  Copyright (c) 2015年 Matsui Keiji. All rights reserved.
//

import UIKit

class SIRSViewController: UIViewController {
    @IBOutlet var Taion:UISegmentedControl!
    @IBOutlet var Shinpakusu:UISegmentedControl!
    @IBOutlet var Kokyusu:UISegmentedControl!
    @IBOutlet var WBC:UISegmentedControl!
    @IBOutlet var HanteiSIRS:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        HanteiSIRS.text=""
        // Do any additional setup after loading the view.
    }
    
    @IBAction func myActionRUN(){
        let vTaion=Taion.selectedSegmentIndex
        let vShinpakusu=Shinpakusu.selectedSegmentIndex
        let vKokyusu=Kokyusu.selectedSegmentIndex
        let vWBC=WBC.selectedSegmentIndex
        let vScoreSIRS=vTaion+vShinpakusu+vKokyusu+vWBC
        if vScoreSIRS>=2 {
            HanteiSIRS.text="SIRS"
        }
        else {
            HanteiSIRS.text=""
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
