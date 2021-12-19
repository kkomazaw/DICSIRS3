//
//  GCS2ViewController.swift
//  DICSIRS3
//
//  Created by Matsui Keiji on 2015/01/22.
//  Copyright (c) 2015年 Matsui Keiji. All rights reserved.
//

import UIKit

class GCS2ViewController: UIViewController {
    var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet var EyeOpening:UISegmentedControl!
    @IBOutlet var VerbalResponse:UISegmentedControl!
    @IBOutlet var MotorResponse:UISegmentedControl!
    @IBOutlet var GCSpoint:UILabel!
    @IBOutlet var ResetButton:UIButton!
    @IBOutlet var GCS15minus:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appDelegate.vGCSpoint=15
        // Do any additional setup after loading the view.
    }
    
    @IBAction func myActionRUN(){
        let vEyeOpening=4-EyeOpening.selectedSegmentIndex
        let vVerbalResponse=5-VerbalResponse.selectedSegmentIndex
        let vMotorResponse=6-MotorResponse.selectedSegmentIndex
        appDelegate.vGCSpoint=vEyeOpening+vVerbalResponse+vMotorResponse
        GCSpoint.text="\(appDelegate.vGCSpoint)"
        GCS15minus.text="\(15-appDelegate.vGCSpoint)"
    }
    
    @IBAction func myActionReset(){
        EyeOpening.selectedSegmentIndex=0
        VerbalResponse.selectedSegmentIndex=0
        MotorResponse.selectedSegmentIndex=0
        GCSpoint.text="15"
        GCS15minus.text="0"
        appDelegate.vGCSpoint=15
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
    */}
