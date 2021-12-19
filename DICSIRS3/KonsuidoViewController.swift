//
//  KonsuidoViewController.swift
//  DICSIRS3
//
//  Created by Matsui Keiji on 2015/01/22.
//  Copyright (c) 2015年 Matsui Keiji. All rights reserved.
//

import UIKit

class KonsuidoViewController: UIViewController {
    
    var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet var EyeOpening:UISegmentedControl!
    @IBOutlet var VerbalResponse:UISegmentedControl!
    @IBOutlet var MotorResponse:UISegmentedControl!
    @IBOutlet var SecondKonsuido:UILabel!
    @IBOutlet var ResetButton:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appDelegate.vSecondKonsuido=0
        // Do any additional setup after loading the view.
    }
    
    @IBAction func myActionRUN(){
        let vEyeOpening=EyeOpening.selectedSegmentIndex
        let vVerbalResponse=VerbalResponse.selectedSegmentIndex
        let vMotorResponse=MotorResponse.selectedSegmentIndex
        if vEyeOpening==0 && vVerbalResponse==0 && vMotorResponse==0{
            appDelegate.vSecondKonsuido=0
            SecondKonsuido.text="\(appDelegate.vSecondKonsuido)"
        }
        if vEyeOpening==1 && vVerbalResponse==0 && vMotorResponse==0{
            appDelegate.vSecondKonsuido = -1
            SecondKonsuido.text="NA"
        }
        if vEyeOpening==0 && vVerbalResponse==1 && vMotorResponse==0{
            appDelegate.vSecondKonsuido = 3
            SecondKonsuido.text="\(appDelegate.vSecondKonsuido)"
        }
        if vEyeOpening==1 && vVerbalResponse==1 && vMotorResponse==0{
            appDelegate.vSecondKonsuido = -1
            SecondKonsuido.text="NA"
        }
        if vEyeOpening==0 && vVerbalResponse==2 && vMotorResponse==0{
            appDelegate.vSecondKonsuido = 10
            SecondKonsuido.text="\(appDelegate.vSecondKonsuido)"
        }
        if vEyeOpening==1 && vVerbalResponse==2 && vMotorResponse==0{
            appDelegate.vSecondKonsuido = -1
            SecondKonsuido.text="NA"
        }
        if vEyeOpening==0 && vVerbalResponse==3 && vMotorResponse==0{
            appDelegate.vSecondKonsuido = 15
            SecondKonsuido.text="\(appDelegate.vSecondKonsuido)"
        }
        if vEyeOpening==1 && vVerbalResponse==3 && vMotorResponse==0{
            appDelegate.vSecondKonsuido = 16
            SecondKonsuido.text="\(appDelegate.vSecondKonsuido)"
        }
        if vEyeOpening==0 && vVerbalResponse==0 && vMotorResponse==1{
            appDelegate.vSecondKonsuido = 3
            SecondKonsuido.text="\(appDelegate.vSecondKonsuido)"
        }
        if vEyeOpening==1 && vVerbalResponse==0 && vMotorResponse==1{
            appDelegate.vSecondKonsuido = -1
            SecondKonsuido.text="NA"
        }
        if vEyeOpening==0 && vVerbalResponse==1 && vMotorResponse==1{
            appDelegate.vSecondKonsuido = 8
            SecondKonsuido.text="\(appDelegate.vSecondKonsuido)"
        }
        if vEyeOpening==1 && vVerbalResponse==1 && vMotorResponse==1{
            appDelegate.vSecondKonsuido = -1
            SecondKonsuido.text="NA"
        }
        if vEyeOpening==0 && vVerbalResponse==2 && vMotorResponse==1{
            appDelegate.vSecondKonsuido = 13
            SecondKonsuido.text="\(appDelegate.vSecondKonsuido)"
        }
        if vEyeOpening==1 && vVerbalResponse==2 && vMotorResponse==1{
            appDelegate.vSecondKonsuido = -1
            SecondKonsuido.text="NA"
        }
        if vEyeOpening==0 && vVerbalResponse==3 && vMotorResponse==1{
            appDelegate.vSecondKonsuido = 15
            SecondKonsuido.text="\(appDelegate.vSecondKonsuido)"
        }
        if vEyeOpening==1 && vVerbalResponse==3 && vMotorResponse==1{
            appDelegate.vSecondKonsuido = 16
            SecondKonsuido.text="\(appDelegate.vSecondKonsuido)"
        }
        if vEyeOpening==0 && vVerbalResponse==0 && vMotorResponse==2{
            appDelegate.vSecondKonsuido = 3
            SecondKonsuido.text="\(appDelegate.vSecondKonsuido)"
        }
        if vEyeOpening==1 && vVerbalResponse==0 && vMotorResponse==2{
            appDelegate.vSecondKonsuido = -1
            SecondKonsuido.text="NA"
        }
        if vEyeOpening==0 && vVerbalResponse==1 && vMotorResponse==2{
            appDelegate.vSecondKonsuido = 13
            SecondKonsuido.text="\(appDelegate.vSecondKonsuido)"
        }
        if vEyeOpening==1 && vVerbalResponse==1 && vMotorResponse==2{
            appDelegate.vSecondKonsuido = -1
            SecondKonsuido.text="NA"
        }
        if vEyeOpening==0 && vVerbalResponse==2 && vMotorResponse==2{
            appDelegate.vSecondKonsuido = 24
            SecondKonsuido.text="\(appDelegate.vSecondKonsuido)"
        }
        if vEyeOpening==1 && vVerbalResponse==2 && vMotorResponse==2{
            appDelegate.vSecondKonsuido = 24
            SecondKonsuido.text="\(appDelegate.vSecondKonsuido)"
        }
        if vEyeOpening==0 && vVerbalResponse==3 && vMotorResponse==2{
            appDelegate.vSecondKonsuido = 24
            SecondKonsuido.text="\(appDelegate.vSecondKonsuido)"
        }
        if vEyeOpening==1 && vVerbalResponse==3 && vMotorResponse==2{
            appDelegate.vSecondKonsuido = 33
            SecondKonsuido.text="\(appDelegate.vSecondKonsuido)"
        }
        if vEyeOpening==0 && vVerbalResponse==0 && vMotorResponse==3{
            appDelegate.vSecondKonsuido = 3
            SecondKonsuido.text="\(appDelegate.vSecondKonsuido)"
        }
        if vEyeOpening==1 && vVerbalResponse==0 && vMotorResponse==3{
            appDelegate.vSecondKonsuido = -1
            SecondKonsuido.text="NA"
        }
        if vEyeOpening==0 && vVerbalResponse==1 && vMotorResponse==3{
            appDelegate.vSecondKonsuido = 13
            SecondKonsuido.text="\(appDelegate.vSecondKonsuido)"
        }
        if vEyeOpening==1 && vVerbalResponse==1 && vMotorResponse==3{
            appDelegate.vSecondKonsuido = -1
            SecondKonsuido.text="NA"
        }
        if vEyeOpening==0 && vVerbalResponse==2 && vMotorResponse==3{
            appDelegate.vSecondKonsuido = 29
            SecondKonsuido.text="\(appDelegate.vSecondKonsuido)"
        }
        if vEyeOpening==1 && vVerbalResponse==2 && vMotorResponse==3{
            appDelegate.vSecondKonsuido = 29
            SecondKonsuido.text="\(appDelegate.vSecondKonsuido)"
        }
        if vEyeOpening==0 && vVerbalResponse==3 && vMotorResponse==3{
            appDelegate.vSecondKonsuido = 29
            SecondKonsuido.text="\(appDelegate.vSecondKonsuido)"
        }
        if vEyeOpening==1 && vVerbalResponse==3 && vMotorResponse==3{
            appDelegate.vSecondKonsuido = 48
            SecondKonsuido.text="\(appDelegate.vSecondKonsuido)"
        }
    }//@IBAction func myActionRUN()
    
    @IBAction func myActionReset(){
        EyeOpening.selectedSegmentIndex=0
        VerbalResponse.selectedSegmentIndex=0
        MotorResponse.selectedSegmentIndex=0
        appDelegate.vSecondKonsuido=0
        SecondKonsuido.text="0"
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
