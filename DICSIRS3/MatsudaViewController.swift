//
//  MatsudaViewController.swift
//  DICSIRS3
//
//  Created by Matsui Keiji on 2015/01/13.
//  Copyright (c) 2015年 Matsui Keiji. All rights reserved.
//

import UIKit

class MatsudaViewController: UIViewController {
    @IBOutlet var Platelet:UISegmentedControl!
    @IBOutlet var FDP:UISegmentedControl!
    @IBOutlet var Hantei:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        Hantei.text=""
        // Do any additional setup after loading the view.
    }

    @IBAction func myActionRUN(){
        let vPlatelet=Platelet.selectedSegmentIndex
        let vFDP=FDP.selectedSegmentIndex
        if vPlatelet==0 && vFDP==0 {
            Hantei.text=""
        }
        if vPlatelet==1 && vFDP==0 {
            Hantei.text="DIC否定できず"
        }
        if vPlatelet==2 && vFDP==0 {
            Hantei.text="DIC疑い"
        }
        if vPlatelet==0 && vFDP==1 {
            Hantei.text="DIC否定できず"
        }
        if vPlatelet==1 && vFDP==1 {
            Hantei.text="DIC疑い"
        }
        if vPlatelet==2 && vFDP==1 {
            Hantei.text="DIC"
        }
        if vPlatelet==0 && vFDP==2 {
            Hantei.text="DIC疑い"
        }
        if vPlatelet==1 && vFDP==2 {
            Hantei.text="DIC"
        }
        if vPlatelet==2 && vFDP==2 {
            Hantei.text="DIC"
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
