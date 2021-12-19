//
//  GCSViewController.swift
//  DICSIRS3
//
//  Created by Matsui Keiji on 2015/01/13.
//  Copyright (c) 2015年 Matsui Keiji. All rights reserved.
//

import UIKit

class GCSViewController: UIViewController {
    @IBOutlet var EyeOpening:UISegmentedControl!
    @IBOutlet var VerbalResponse:UISegmentedControl!
    @IBOutlet var MotorResponse:UISegmentedControl!
    @IBOutlet var GCSPoint:UILabel!
    @IBOutlet var ResetButton:UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func myActionRUN(){
        let vEyeOpening=4-EyeOpening.selectedSegmentIndex
        let vVerbalResponse=5-VerbalResponse.selectedSegmentIndex
        let vMotorResponse=6-MotorResponse.selectedSegmentIndex
        let vGCSPoint=vEyeOpening+vVerbalResponse+vMotorResponse
        GCSPoint.text="\(vGCSPoint)"
    }
    
    @IBAction func myActionReset(){
        EyeOpening.selectedSegmentIndex=0
        VerbalResponse.selectedSegmentIndex=0
        MotorResponse.selectedSegmentIndex=0
        GCSPoint.text="15"
        
    }

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
