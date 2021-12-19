//
//  AcidBaseViewController.swift
//  DICSIRS3
//
//  Created by Matsui Keiji on 2015/01/22.
//  Copyright (c) 2015年 Matsui Keiji. All rights reserved.
//

import UIKit

class AcidBaseViewController: UIViewController, UIPickerViewDelegate {
    
    var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    var vPH=3
    var vPCO2=3
    var pCO2Tables = ["pCO2 <25","25≦ pCO2 <30","30≦ pCO2 <35","35≦ pCO2 <45","45≦ pCO2 <50","50≦ pCO2"]
    var pHTables = ["pH <7.20","7.20≦ pH <7.30","7.30≦ pH <7.35","7.35≦ pH <7.45","7.45≦ pH <7.50","7.50≦ pH <7.65","7.65≦ pH"]
    
    @IBOutlet var SecondAsidBase:UILabel!
    @IBOutlet var PCO2Picker:UIPickerView!
    @IBOutlet var PHPicker:UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appDelegate.vSecondAcidBase=0
    }
    
   @objc func numberOfComponentsInPickerView(_ pickerView: UIPickerView!) -> Int {
        return 1
    }
    
   @objc func pickerView(_ pickerView: UIPickerView!, numberOfRowsInComponent component: Int) -> Int{
        var c=0
        if pickerView.tag==0 {
            c = pCO2Tables.count
        }
        if pickerView.tag==1{
            c = pHTables.count
        }
        return c
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        var c = ""
        if pickerView.tag==0 {
            c = "\(pCO2Tables[row])"
        }
        if pickerView.tag==1 {
            c = "\(pHTables[row])"
        }
        return c
    }
    
    func calculateScore(){
        if vPH==0 && vPCO2<=4{
            appDelegate.vSecondAcidBase=12
        }
        if vPH==0 && vPCO2==5{
            appDelegate.vSecondAcidBase=4
        }
        if vPH==1 && vPCO2<=1{
            appDelegate.vSecondAcidBase=9
        }
        if vPH==1 && vPCO2==2{
            appDelegate.vSecondAcidBase=6
        }
        if vPH==1 && vPCO2>=3 && vPCO2<=4{
            appDelegate.vSecondAcidBase=3
        }
        if vPH==1 && vPCO2==5{
            appDelegate.vSecondAcidBase=2
        }
        if vPH==2 && vPCO2<=1{
            appDelegate.vSecondAcidBase=9
        }
        if vPH==2 && vPCO2>=2 && vPCO2<=3{
            appDelegate.vSecondAcidBase=0
        }
        if vPH==2 && vPCO2>=4{
            appDelegate.vSecondAcidBase=1
        }
        if vPH==3 && vPCO2<=1{
            appDelegate.vSecondAcidBase=5
        }
        if vPH==3 && vPCO2>=2 && vPCO2<=3{
            appDelegate.vSecondAcidBase=0
        }
        if vPH==3 && vPCO2>=4{
            appDelegate.vSecondAcidBase=1
        }
        if vPH==4 && vPCO2<=1{
            appDelegate.vSecondAcidBase=5
        }
        if vPH==4 && vPCO2==2{
            appDelegate.vSecondAcidBase=0
        }
        if vPH==4 && vPCO2==3{
            appDelegate.vSecondAcidBase=2
        }
        if vPH==4 && vPCO2>=4{
            appDelegate.vSecondAcidBase=12
        }
        if vPH==5 && vPCO2<=2{
            appDelegate.vSecondAcidBase=3
        }
        if vPH==5 && vPCO2>=3{
            appDelegate.vSecondAcidBase=12
        }
        if vPH==6 && vPCO2==0{
            appDelegate.vSecondAcidBase=0
        }
        if vPH==6 && vPCO2>=1 && vPCO2<=2{
            appDelegate.vSecondAcidBase=3
        }
        if vPH==6 && vPCO2>=3{
            appDelegate.vSecondAcidBase=12
        }
        SecondAsidBase.text="\(appDelegate.vSecondAcidBase)"
    }//func calculateScore()
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag==0{
            vPCO2=row
        }
        if pickerView.tag==1{
            vPH=row
        }
        self.calculateScore()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        PCO2Picker.selectRow(3, inComponent: 0, animated: true)
        PHPicker.selectRow(3, inComponent: 0, animated: true)
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
